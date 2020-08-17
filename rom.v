//
// Simple 4096x16 ROM module
//
// This source code is public domain
//

module ROM(CLK, nCS, ADDR, DO);

  // Port definition
  input CLK, nCS;
  input  [11:0] ADDR;
  output [15:0] DO;
  
  wire          CLK, nCS;
  wire   [11:0] ADDR;
  reg    [15:0] DO;
  
  // Implementation
  reg [15:0] mem[0:4095];
  
  always @(posedge CLK)
  begin
    if (!nCS) begin
      DO <= mem[ADDR];
    end
  end
  
  initial
  begin
`ifdef __ICARUS__
/*    mem[0] = 16'h8000;
    mem[1] = 16'h0004;
    mem[2] = 16'h0200;
    mem[3] = 16'h0000;
    mem[4] = 16'h0201;
    mem[5] = 16'h000a;
    mem[6] = 16'h0202;
    mem[7] = 16'hfffb;
    mem[8] = 16'h0182;
    mem[9] = 16'h10ff;
*/
    $readmemh("rom/evmfast.mem", mem); // much faster baud rate
`else
    $readmemh("rom/evm.mem", mem); // 9600 baud rate
`endif
  end
  
endmodule