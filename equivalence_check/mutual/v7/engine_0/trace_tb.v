`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clock = clock;
  reg [0:0] PI_reset;
  reg [3:0] PI_io_en_a;
  system UUT (
    .clock(PI_clock),
    .reset(PI_reset),
    .io_en_a(PI_io_en_a)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$protocol.\sv:506$3_EN  = 1'b0;
    UUT._witness_.anyinit_procdff_158 = 1'b0;
    UUT.n_reg_0 = 2'b00;
    UUT.n_reg_1 = 2'b10;
    UUT.n_reg_2 = 2'b11;
    UUT.x_reg = 1'b1;

    // state 0
    PI_reset = 1'b1;
    PI_io_en_a = 4'b0000;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 4'b0010;
    end

    // state 2
    if (cycle == 1) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 4'b0100;
    end

    // state 3
    if (cycle == 2) begin
      PI_reset <= 1'b1;
      PI_io_en_a <= 4'b0110;
    end

    // state 4
    if (cycle == 3) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 4'b0000;
    end

    // state 5
    if (cycle == 4) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 4'b0000;
    end

    genclock <= cycle < 5;
    cycle <= cycle + 1;
  end
endmodule
