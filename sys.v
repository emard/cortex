`timescale 1ns/1ns

module sys
(
  input  wire        clk_25mhz,
  output wire [7:0]  led,
  input  wire [6:0]  btn,
  output wire        ftdi_rxd,
  input  wire        ftdi_txd,
  
  //sdram
  output wire        sdram_clk,
  output wire        sdram_cke,
  output wire        sdram_csn,
  output wire        sdram_wen,
  output wire        sdram_rasn,
  output wire        sdram_casn,
  output wire  [1:0] sdram_ba,
  output wire [12:0] sdram_a,
  inout  wire [15:0] sdram_d,
  output wire  [1:0] sdram_dqm,
  
  // spi-ide bridge to ESP32
  output wire        wifi_gpio5,  // test led
  input  wire        wifi_gpio17, // seln
  input  wire        wifi_gpio16, // sclk
  inout  wire [2:1]  sd_d         // miso:mosi 
);

  // reset for 255 raw clocks
  reg [7:0] ctr = 0;
  always @(posedge clk_25mhz) begin
    if (reset)   ctr <= ctr+1;
    if (!btn[0]) ctr <= 0;
  end
  wire reset = !(&ctr);

  // set up sdram clock
  wire clk_cpu = clk_25mhz;

`ifdef __ICARUS__
  reg clk_sdr = 0;
  always #4 clk_sdr = !clk_sdr;
`else
  wire clk_sdr;
  PLL pll(
    .clkin(clk_25mhz),
    .pll125(clk_sdr)
  );
`endif

  wire nrd, nwr;
  wire [15:0] ab, db_out, db_in, rom_o, ram_o, sdr_o, ide_o, map_o, utl_o;
  wire [3:0] bst;
  wire nmemen = bst[3];
  
  wire rom_sel = !ab[15] & !romen & !nmemen; // 0x0000-0x7fff
  wire ide_sel = ab[15:6]==10'b1111_1110_00; // 0xfe00
  wire map_sel = ab[15:6]==10'b1111_1110_01; // 0xfe40
  wire utl_sel; // generated in UTIL9995
  wire sdr_sel = !nmemen;

  wire aca_sel = nmemen & ab[15:6]==10'b0000_0000_00; // 0x0000
  wire flg_csn = cruclk | ab[15:6]!=10'b0000_0000_01; // 0x0040 

  wire cruin, cruout, cruclk;
  wire nrts, ncts;
  wire [3:0] sdr_cmd, ic;
  
  wire hold = 0;
  wire clkout, as, iaq, int, aca_int, nmi;

  reg rdy = 1;
//  always @(negedge clkout) begin
//    rdy <= reset | nmemen | ~rdy;
//  end

  // TMS99000 CPU. Note that the CPU has been tweaked to output ab[0], to
  // better enable simulating the byte-oriented operation of the TMS9995. 
  //
  TMS99095 cpu(
    .CLK(clk_cpu),
    .CLKOUT(clkout),
    .RESET(reset),
    
    .ADDR_OUT(ab),
    .DATA_IN(db_in),
    .DATA_OUT(db_out),
    .nRD(nrd),
    .nWR(nwr),
    .READY(rdy),
    .HOLD(hold),
    .BST(bst),
    .AS(as),
    .IAQS(iaq),
    
    .INT(int),
    .IC(ic),
    .NMI(nmi),
    
    .CRUIN(cruin),
    .CRUOUT(cruout),
    .CRUCLK(cruclk)
  );
  
  // TMS9995 utilities (flags, timer, etc.). Provides the functions
  // not present in other 99xx CPU's.
  //
  UTIL9995 utl(
    .clk(clk_cpu),
    .rst(reset),
    
    .ab(ab),
    .di(db_out),
    .do(utl_o),
    .nwr(nwr),
    .nmemen(nmemen),
    .utl_sel(utl_sel),
    
    .cruclk(cruclk),
    .cruout(cruout),
//    .cruin(cruin),
    
    .int1(1'b0),
    .int4(!aca_int),
    .irq(int),
    .ic(ic),
    .bst(bst)
  );

  ROM rom(
    clk_cpu,
    !rom_sel,
    ab[12:1],
    rom_o
  );

  // Main serial port, wired to the FTDI
  //
  tms9902  aca(
    clk_cpu,
    nrts,
    1'b0 /*dsr*/,
    ncts,
    aca_int,
    !aca_sel,
    cruout,
    cruin,
    !cruclk,
    ftdi_rxd,
    ftdi_txd,
    ab[5:1]
  );
  
  assign ncts  = nrts;
  
  // Mini-Cortex board level flags
  //
  wire [7:0] flg;

  LS259 flags(
    .clk(clk_cpu),
    .rs(ab[3:1]),
    .d(cruout),
    .cen(flg_csn),
    .rst(reset),
    .q(flg)
  );
  
  wire romen = flg[0];
  wire mapen = flg[1];
  wire user  = flg[2];
  
  wire idle  = (ab==16'h1ec4) & (bst==4'b1011);
  
  assign led = { idle, int, ab[3:1], flg[2:0] };
  
  // Single-step NMI circuit
  //
  wire lrex  = (ab==16'h1ece) & (bst==4'b1011);
  reg [3:0] nmi_sh = 0;

  always @(posedge clk_cpu) begin
    if (as & iaq) nmi_sh <= { nmi_sh[2:0], 1'b0 };
    if (lrex) nmi_sh[0] <= 1'b1;
  end
  assign nmi = nmi_sh[3];
  
  // Mini-Cortex MMU
  //
  wire [7:0] mab;

  MAPPER mmu(
    .clk(clk_cpu),

    .di(db_out),
    .do(map_o),
    .rs(ab[3:1]),
    .csn(!map_sel),
    .wrn(nwr),
    
    .mmn(!mapen),
    .ma(ab[15:12]),
    .mo(mab)
  );

  // 512KB RAM memory
  //
  SDRAM sdr(
    .clk_in(clk_sdr),
    
    // cpu side
    .din(db_out),
    .dout(sdr_o),
    .ad({6'd0, mab[6:0], ab[11:1]}),
    .csn(!sdr_sel),
    .as(as),
    .nwr(nwr),
    .rst(reset),
  
    // sdram side
    .sd_data(sdram_d),
    .sd_addr(sdram_a),
    .sd_dqm(sdram_dqm),
    .sd_ba(sdram_ba),
    .sd_cs(sdram_csn),
    .sd_we(sdram_wen),
    .sd_ras(sdram_rasn),
    .sd_cas(sdram_casn),
    .sd_cke(sdram_cke),
    .sd_clk(sdram_clk)
  );

  // CF Card interface to ESP32
  //
  SPI_IDE bob_495(
    .clk(clk_cpu),
    .led(wifi_gpio5),
    
    .ide_o(ide_o),
    .ide_i(db_out),
    .ab(ab[2:0]),
    .csn(ide_sel),
    .wrn(nwr),
    .rdn(nrd),
    .iaqas(iaq & as),
    .reset(reset),

    .seln(wifi_gpio17),
    .sclk(wifi_gpio16),
    .mosi(sd_d[1]),
    .miso(sd_d[2])   
  );
  
  // databus switch
  //
  assign db_in  = (rom_sel) ? rom_o :
                  (ide_sel) ? ide_o :
                  (map_sel) ? map_o :
                  (utl_sel) ? utl_o :
                  sdr_o ;
  
endmodule

