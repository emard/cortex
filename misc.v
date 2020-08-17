
// Miscelaneous small TTL parts of the mini-cortex.
//
// This source code is public domain
//


// Mapper is variation on the LS612, dealing with the byte oriented nature of the 9995
//
module MAPPER(
  input  wire        clk,
  input  wire [15:0] di,
  output reg  [15:0] do,
  input  wire  [3:0] ma,
  input  wire  [2:0] rs,
  output wire  [7:0] mo,
  
  input  wire        csn,
  input  wire        mmn,
  input  wire        wrn
);

  reg [15:0] map[0:7];
  
  // mapping operation: mapping read port
  reg  [15:0] mo1;
  always @(posedge clk) mo1 <= map[ma[3:1]];
  
  // mapping operation: do word-byte conversion & map enable;
  // also deal with ma[] wiring error on mini cortex PCB
  wire  [7:0] mo2 = ma[0] ? mo1[7:0] : mo1[15:8];
  assign mo = mmn ? {4'b0000, ma} : {mo2[7:4], mo2[2:0], mo2[3] };
  
  // CPU interface to map registers
  always @(posedge clk) if( !csn & !wrn ) map[rs] = di;
  always @(posedge clk) if( !csn ) do <= map[rs];

endmodule


// 74LS259 chip
//
module LS259(
  input  wire       clk,
  input  wire [2:0] rs,
  input  wire       d,
  input  wire       cen,
  input  wire       rst,
  output reg  [7:0] q
);

  always @(posedge clk) begin
    if (rst)
      q <= 8'd0;
    else
      if (!cen) q[rs] <= d;
  end

endmodule


// The TMS9995 CPU has a few on board utilities that do not exist on
// other CPU's in the 99xx family: a flag register, a counter/timer
// and interrupt latches. These are implemented in this utility block.

module UTIL9995(
  input  wire        clk,
  input  wire        rst,
  
  input  wire [15:0] ab,
  input  wire [15:0] di,
  output wire [15:0] do,
  input  wire        nmemen,
  input  wire        nwr,
  output wire        utl_sel,
  
  input  wire        cruclk,
  input  wire        cruout,
  output wire        cruin,
  
  input  wire        int1,
  input  wire        int4,
  output reg         irq,
  output reg   [3:0] ic,
  input  wire  [3:0] bst
);

  wire crusel = ab[15:5]==11'b0001_1110_111; // 0x1ee0-0x1eff
  assign utl_sel = (ab==16'hfffa) & !nmemen;   // 0xfffa

  // flag register
  //
  reg [15:0] flag;

  always @(posedge clk) begin
    if (rst)
      flag <= 16'h0000;
    else
      if (crusel & !cruclk) flag[ab[4:1]] <= cruout;
  end
  assign cruin = flag[ab[4:1]];
  
  // decrementer
  //
  reg [15:0] start = 0, decr = 0;
  reg  [4:0] scale = 0; // prescaler for 25Mhz CPU clock
  
  always @(posedge clk) scale <= scale + 1;
  wire tick = &scale;
  
  always @(posedge clk) begin
    if (tick) decr <= decr - 1;
    if( decr==0 ) begin
      decr <= start;
    end
    if( utl_sel & !nwr ) start <= di;
  end
  wire zero = !(|decr);

  assign do = decr;
  
  // internal INT4 latch
  reg  int1i = 0;
  wire inta1 = (bst==4'b0101) & (ab[5:2]==4'h1);
  
  always @(posedge clk) begin
    if( rst | inta1 )  int1i <= 1'b0;
    if( int1 )         int1i <= 1'b1;
  end
  
  // internal INT3 latch
  reg  int3i = 0;
  wire inta3 = (bst==4'b0101) & (ab[5:2]==4'h3);
  
  always @(posedge clk) begin
    if( zero & flag[1]) int3i <= 1'b1;
    if( rst | inta3 )   int3i <= 1'b0;
  end
  
  // internal INT4 latch
  reg  int4i = 0;
  wire inta4 = (bst==4'b0101) & (ab[5:2]==4'h4);

  always @(posedge clk) begin
    if( rst | inta4 )  int4i <= 1'b0;
    if( int4 )         int4i <= 1'b1;
  end

  // TMS9995 interrupt encoder
  //
  always @(posedge clk) begin
    ic = 4'hf;
    if( int4i ) ic = 4'h4;
    if( int3i ) ic = 4'h3;
    if( int1i ) ic = 4'h1;
    irq <= (ic != 4'hf);
  end
  
endmodule
