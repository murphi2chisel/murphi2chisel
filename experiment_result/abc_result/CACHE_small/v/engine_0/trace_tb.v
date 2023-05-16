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
  reg [0:0] PI_reset;
  wire [0:0] PI_clock = clock;
  reg [4:0] PI_io_en_a;
  system UUT (
    .reset(PI_reset),
    .clock(PI_clock),
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
    // UUT.$formal$protocol.\sv:4138$3_CHECK  = 1'b0;
    // UUT.$formal$protocol.\sv:4138$3_EN  = 1'b0;
    // UUT.$formal$protocol.\sv:4142$4_CHECK  = 1'b1;
    // UUT.$formal$protocol.\sv:4146$5_CHECK  = 1'b1;
    // UUT.$formal$protocol.\sv:4150$6_CHECK  = 1'b1;
    UUT.cache_reg_0 = 2'b00;
    UUT.cache_reg_1 = 2'b10;
    UUT.cache_reg_2 = 2'b00;
    UUT.channel1_reg_0 = 3'b000;
    UUT.channel1_reg_1 = 3'b010;
    UUT.channel1_reg_2 = 3'b000;
    UUT.channel2_4_reg_0 = 3'b000;
    UUT.channel2_4_reg_1 = 3'b100;
    UUT.channel2_4_reg_2 = 3'b000;
    UUT.channel3_reg_0 = 3'b000;
    UUT.channel3_reg_1 = 3'b101;
    UUT.channel3_reg_2 = 3'b000;
    UUT.home_current_client_reg = 2'b01;
    UUT.home_current_command_reg = 3'b110;
    UUT.home_exclusive_granted_reg = 1'b0;
    UUT.home_invalidate_list_reg_0 = 1'b0;
    UUT.home_invalidate_list_reg_1 = 1'b1;
    UUT.home_invalidate_list_reg_2 = 1'b0;
    UUT.home_sharer_list_reg_0 = 1'b0;
    UUT.home_sharer_list_reg_1 = 1'b0;
    UUT.home_sharer_list_reg_2 = 1'b1;

    // state 0
    PI_reset = 1'b1;
    PI_io_en_a = 5'b00000;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00011;
    end

    // state 2
    if (cycle == 1) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00101;
    end

    // state 3
    if (cycle == 2) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b10010;
    end

    // state 4
    if (cycle == 3) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b01111;
    end

    // state 5
    if (cycle == 4) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00010;
    end

    // state 6
    if (cycle == 5) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00110;
    end

    // state 7
    if (cycle == 6) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b10001;
    end

    // state 8
    if (cycle == 7) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b01110;
    end

    // state 9
    if (cycle == 8) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00000;
    end

    // state 10
    if (cycle == 9) begin
      PI_reset <= 1'b0;
      PI_io_en_a <= 5'b00000;
    end

    genclock <= cycle < 10;
    cycle <= cycle + 1;
  end
endmodule
