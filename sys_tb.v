`timescale 1ns/1ns

module sys_tb;

  reg  sysclk = 0;
  wire [7:0] LED;
  reg   TX ;
  wire  RX ;
  
  always #20 sysclk = !sysclk;
  
  wire [15:0] sd_data;
  wire [12:0] sd_addr;
  wire sd_csn, sd_wen, sd_rasn, sd_casn, clk_sdr;
  wire led, seln, sclk, miso, mosi;
  
  sys tut(
    .clk_25mhz(sysclk),
    .btn(7'h7f),
    .led(LED),
    
    .ftdi_txd(TX),
    .ftdi_rxd(RX),
    .wifi_gpio5(led),
    .wifi_gpio17(seln),
    .wifi_gpio16(sclk),
    .sd_d({miso, mosi}),
    
    .sdram_d(sd_data),
    .sdram_a(sd_addr),
    .sdram_csn(sd_csn),
    .sdram_wen(sd_wen),
    .sdram_rasn(sd_rasn),
    .sdram_casn(sd_casn),
    .sdram_clk(clk_sdr)
  );
  
  // simulated SDRAM, only 512KB
  SDRAM_TB sdram(
    .sdram_d(sd_data),
    .sdram_a(sd_addr),
    .sdram_csn(sd_csn),
    .sdram_wen(sd_wen),
    .sdram_rasn(sd_rasn),
    .sdram_casn(sd_casn),
    .sdram_clk(clk_sdr)
  );

  // simulated ESP32
  ESP32 esp(
    .clk(sysclk),
    .irq(led),
    .seln(seln),
    .sclk(sclk),
    .miso(miso),
    .mosi(mosi)
  );

  // simulated user
  //
  integer k;

  initial begin
    $dumpfile("sys.vcd");
    $dumpvars(0,sys_tb);
    $dumpoff();

    // start monitor
    TX = 1;
    #20_000
    hb_send(8'h0d);

    // wait for prompt and send UNX<CR>
    #520_000
    hb_send(8'h55);
    hb_send(8'h4e);
    hb_send(8'h58);
    hb_send(8'h0d);

    for(k=0; k<100; k=k+1) begin
      $display("** now at %d ms simulated time", 10*k);
      if (k==77) begin
        hb_send(8'h74);
        #200_000;
        hb_send(8'h73);
        #200_000;
        hb_send(8'h74);
        $dumpon();
        #200_000;
        hb_send(8'h0d);
      end
      #10_000_000;
    end
    $display("Reached one second");
    $finish;
  end

  // display bytes received on the serial line
  always @(posedge sysclk)
  begin : rcvr
    reg [7:0] byte;
    integer i;
    if (RX==0) begin
      #3000
      for(i=0; i<8; i=i+1)
      begin
        byte[i] = RX;
        #2000;
      end
      $write("%c", byte);
    end
  end

  // send a byte on the serial line
  task hb_send;
    input [7:0] byte;
    integer i;
    begin
      TX = 0;
      #2000;
      for(i=0; i<8; i=i+1)
        begin
        TX = byte[i];
        #2000;
        end
      TX = 1;
      #45000;
    end
  endtask

endmodule



module ESP32(
  input  wire  clk,
  input  wire  irq,
  output wire  seln,
  output reg   sclk = 0,
  input  wire  miso,
  output reg   mosi
);

  assign seln = 1'b0;
  
  integer fh;
  
  initial begin
    fh = $fopen("unix.dsk", "a+b");
  end

  // detect rising edge irq
  reg [1:0] irqr = 2'b0;
  always @(posedge clk) irqr <= { irqr[0], irq };
  wire start = ~irqr[1] & irqr[0];
  
  reg [7:0] xx, r1, r2, r3, r4, r5, r6, r7, data;
  reg [7:0] mode = 8'h00;
  integer sec, i, n;

  // interrogate the register file and process
  // the commands received.
  //
  always @(posedge clk) begin
    if (start) begin
      // $display("ESP32 irq %x", mode);
      if (mode==8'h00) begin
        GET();
        case (r7)
        
        8'hef:
          begin
            $display("-- set feature");
            r1 = 8'h00;
            r7 = 8'h00;
            PUT();
          end
          
        8'h20: // start read sector
          begin
            sec = r3 + 256 * r4;
            $display("-- read  sector %04x", sec);
            n = $fseek(fh, sec*512, 0);
            SPI(8'h04, xx);
            for(i=0; i<512; i=i+1) begin
              n = $fread(data, fh);
              //$write("%x", data);
              SPI(data, xx);
            end
            mode = r7;
            r1 = 8'h00;
            r7 = 8'h08;
            PUT();
          end
        
        8'h30:
          begin
            sec = r3 + 256 * r4;
            $display("-- write sector %04x", sec);
            mode = r7;
            r1 = 8'h00;
            r7 = 8'h08;
            PUT();
          end

        default:
          begin
            $display("Unknown CMD %x", r7);
            PUT();
          end
        endcase
      end
      else begin
        case (mode)

        8'h20: // finalize read sector
          begin
            mode = 8'h00;
            r1 = 8'h00;
            r7 = 8'h00;
            PUT();
          end

        8'h30: // finalize write sector
          begin
            n = $fseek(fh, sec*512, 0);
            SPI(8'h03, xx);
            for(i=0; i<512; i=i+1) begin
              SPI(8'h00, data);
              //$write("%x", data);
              $fwrite(fh, "%c", data);
            end
            mode = 8'h00;
            r1 = 8'h00;
            r7 = 8'h00;
            PUT();
          end
        endcase
      end
    end
  end

  // get register file
  task GET;
    begin
      SPI(8'h01, xx);
      SPI(8'h00, r1);
      SPI(8'h00, r2);
      SPI(8'h00, r3);
      SPI(8'h00, r4);
      SPI(8'h00, r5);
      SPI(8'h00, r6);
      SPI(8'h00, r7);
    end
  endtask

  // put regsiter file & cancel IRQ
  task PUT;
    begin
      SPI(8'h02, xx);
      SPI(r1,    xx);
      SPI(r2,    xx);
      SPI(r3,    xx);
      SPI(r4,    xx);
      SPI(r5,    xx);
      SPI(r6,    xx);
      SPI(r7,    xx);
    end
  endtask

  // exchange an SPI byte
  task SPI;
    input  [7:0] ibyte;
    output [7:0] obyte;
    
    begin: spi
      integer i;

      for(i=0; i<8; i=i+1) begin
        mosi = ibyte[7-i];
        #167 sclk = 1;
        obyte[7-i] = miso;
        #167 sclk = 0;
      end
    end
  endtask

endmodule



module SDRAM_TB (
  input  wire        sdram_clk,
  input  wire        sdram_cke,
  input  wire        sdram_csn,
  input  wire        sdram_wen,
  input  wire        sdram_rasn,
  input  wire        sdram_casn,
  input  wire  [1:0] sdram_ba,
  input  wire [12:0] sdram_a,
  inout  wire [15:0] sdram_d,
  input  wire  [1:0] sdram_dqm
);

  reg  [15:0] mem[0:262143];
  
  // compose the command
  wire  [3:0] cmd;
  assign cmd[0] = sdram_wen;
  assign cmd[1] = sdram_casn;
  assign cmd[2] = sdram_rasn;
  assign cmd[3] = sdram_csn;

  // all possible commands
  localparam CMD_INHIBIT         = 4'b1111;
  localparam CMD_NOP             = 4'b0111;
  localparam CMD_ACTIVE          = 4'b0011;
  localparam CMD_READ            = 4'b0101;
  localparam CMD_WRITE           = 4'b0100;
  localparam CMD_BURST_TERMINATE = 4'b0110;
  localparam CMD_PRECHARGE       = 4'b0010;
  localparam CMD_AUTO_REFRESH    = 4'b0001;
  localparam CMD_LOAD_MODE       = 4'b0000;

  reg  [2:0] rd_sh = 0;
  reg [15:0] data;
  reg [17:0] ab;
  reg        rd, wr;

  always @(posedge sdram_clk) begin
  
    // default settings; data out has 2ns hold time
    rd_sh   <= { rd_sh[1:0], 1'b0 };
    rd <= 1'b0; wr <= 1'b0;

    // handle command
    case (cmd)
    
    CMD_ACTIVE:
      begin
        ab[17:8] <= sdram_a[9:0];
      end

    CMD_READ:
      begin
        ab[7:0] <= sdram_a[7:0];
        rd_sh <= 3'b001;
      end
      
    CMD_WRITE:
      begin
        ab[7:0] <= sdram_a[7:0];
        data    <= sdram_d;
        wr <= 1'b1;
      end
    
    CMD_AUTO_REFRESH:
      ; /* no need to refresh block RAM */

    CMD_BURST_TERMINATE,
    CMD_PRECHARGE,      
    CMD_LOAD_MODE:
      ; /* ignore for now */

    CMD_INHIBIT,        
    CMD_NOP:
      ; /* do nothing */

    default:
      ; /* do nothing */

    endcase

    // write data, latch in data on the next clock;
    if (wr)        mem[ ab[17:0] ] <= data;
    if (rd_sh[1])  data <= mem[ ab[17:0] ];
    
  end
  
  // read data, latency is 2 clocks + 6ns for CAS LATENCY==3
  // hold time is 2ns
  //
  assign sdram_d = (rd_sh[2]) ? data : 16'bz;
  
endmodule

