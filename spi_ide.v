
// Module to emulate the Adafruit BOB-495 breakout board
// This board operates a CF Card in IDE byte mode
//
// This source code is public domain
//

module SPI_IDE (
  input  wire       clk,        // must be 5x faster than SPI clock

  // IDE (= CPU) side
  output reg  [15:0] ide_o,
  input  wire [15:0] ide_i,
  input  wire  [2:0] ab,
  input  wire        csn,
  input  wire        rdn,
  input  wire        wrn,
  input  wire        iaqas,
  input  wire        reset,
  
  output wire       led,

  // SPI (= ESP32) side
  input  wire       seln,
  input  wire       sclk,       // SPI clock
  input  wire       mosi,
  inout  wire       miso,
  output wire       irq
);

  // IDE task file (registers) and IDE sector buffer
  //
  reg [7:0] task_feat, task_cnt,  task_lba0,
            task_lba1, task_lba2, task_lba3,
            task_cmd,  task_stat = 0;

  reg [7:0] data[0:511];
  
  // sync SPI sclk
  reg [1:0] sclkr;
  always @(posedge clk) sclkr <= { sclkr[0], sclk };
  wire clkin  = !sclkr[1] &  sclkr[0]; //  rising edge
  
  // process SPI data into byte chunks
  // CPOL = 0, CPHA = 0
  //
  reg [7:0] mdi, mdo; // shift registers for master data in/out
  reg [2:0] bits = 0;
  reg       clkout, load, preload, byte;

  always @(posedge clk) begin
    clkout <= clkin;
    if( seln )
      bits <= 3'd0;
    else begin
      if (clkin)  mdi  <= { mdi[6:0], mosi };
      if (clkout) mdo  <= { mdo[6:0], 1'b0 };
      if (clkin)  bits <= bits + 1;
      byte <= (bits==3'd7) & clkin;
    end
    // after the 'byte' mark we need one cycle to fill 'reply' ('preload' step)
    // and then another to fill the mdo shifter ('load' step)
    preload <= byte; load <= preload;
    if (load) mdo <= reply;
  end

  assign miso = seln ? 1'bz : mdo[7];

  // delay iaqas (a one clock iaq) by 7 clocks to compensate for pre-fetch
  // and generate an "instruction end" signal.
  //
  reg [6:0] iaqr;
  always @(posedge clk) iaqr <= { iaqr[5:0], iaqas };
  wire iend = iaqr[6];

  // our SPI-IDE protocol
  //
  localparam  IDLE  = 8'h00,  // not active
              GET   = 8'h01,  // read task file
              PUT   = 8'h02,  // write task file
              READ  = 8'h03,  // read sector buffer
              WRITE = 8'h04;  // write sector buffer

  reg [7:0] cmd = IDLE, reply;
  reg [8:0] ctr = 0;
  reg bsy = 0, step = 0;

  always @(posedge clk) begin
  
    if (reset) begin
      bsy <= 0;
      cmd <= 8'h00;
      ctr <= 8'h00;
    end
    
    // SPI communication takes place when the controller is "BSY" (status bit 7 set)
    if( byte ) begin
      ctr <= ctr + 1;
      case (cmd)

      IDLE: begin 
              cmd <= mdi;
              ctr <= 0;
            end

            
      PUT:  begin
              case (ctr)
              0: task_feat <= mdi;
              1: task_cnt  <= mdi;
              2: task_lba0 <= mdi;
              3: task_lba1 <= mdi;
              4: task_lba2 <= mdi;
              5: task_lba3 <= mdi;
              6: begin
                   task_stat <= mdi;
                   cmd <= IDLE;
                   ctr <= 0;
                   bsy <= 1'b0;
                end
              endcase
            end

      WRITE: begin
               data[ctr] <= mdi;
               if( &ctr ) cmd <= IDLE;
             end

      endcase
    end

    if( preload ) begin
      case (cmd)
        
      GET:  begin
              case (ctr)
              0: reply <= task_feat;
              1: reply <= task_cnt;
              2: reply <= task_lba0;
              3: reply <= task_lba1;
              4: reply <= task_lba2;
              5: reply <= task_lba3;
              6: begin
                   reply <= task_cmd;
                   cmd <= IDLE;
                   ctr <= 0;
                 end
              endcase
            end
            
      READ: begin
             reply <= data[ctr];
             if( &ctr ) cmd <= IDLE;
            end

      endcase
    end
    
    // CPU communication takes place when the controller is not "BSY" (other than
    // checking the status register for BSY)
    if (csn) begin
      if (!rdn) begin
        case (ab[2:1])
        0: ide_o <= { data[ctr], task_feat };
        1: ide_o <= { task_cnt,  task_lba0 };
        2: ide_o <= { task_lba1, task_lba2 };
        3: ide_o <= { task_lba3, bsy, task_stat[6:0] };
        endcase
        if (ab==3'd0) step <= 1'b1;
      end
      if (!wrn) begin
        case (ab[2:1])
        0: { data[ctr], task_feat } <= ide_i;
        1: { task_cnt,  task_lba0 } <= ide_i;
        2: { task_lba1, task_lba2 } <= ide_i;
        3: { task_lba3, task_cmd  } <= ide_i;
        endcase
        if (ab==3'd0) step <= 1'b1;
        if (ab==3'd7) bsy  <= 1'b1;
      end
    end
    
    if (step & iend) begin
      step <= 1'b0;
      ctr  <= ctr + 1;
      if (&ctr) bsy <= 1'b1;
    end

  end

  assign irq = 1'b0;
  assign led = bsy;
  
endmodule
