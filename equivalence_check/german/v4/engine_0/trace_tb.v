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
  reg [4:0] PI_io_en_a;
  reg [0:0] PI_reset;
  wire [0:0] PI_clock = clock;
  system UUT (
    .io_en_a(PI_io_en_a),
    .reset(PI_reset),
    .clock(PI_clock)
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
    // UUT.$formal$protocol.\sv:9643$3_EN  = 1'b0;
    UUT.AuxData_reg = 2'b10;
    UUT.Cache_reg_0_Data = 2'b00;
    UUT.Cache_reg_0_State = 2'b00;
    UUT.Cache_reg_1_Data = 2'b10;
    UUT.Cache_reg_1_State = 2'b10;
    UUT.Cache_reg_2_Data = 2'b01;
    UUT.Cache_reg_2_State = 2'b00;
    UUT.Chan1_reg_0_Cmd = 3'b000;
    UUT.Chan1_reg_0_Data = 2'b00;
    UUT.Chan1_reg_1_Cmd = 3'b001;
    UUT.Chan1_reg_1_Data = 2'b01;
    UUT.Chan1_reg_2_Cmd = 3'b001;
    UUT.Chan1_reg_2_Data = 2'b01;
    UUT.Chan2_reg_0_Cmd = 3'b000;
    UUT.Chan2_reg_0_Data = 2'b00;
    UUT.Chan2_reg_1_Cmd = 3'b011;
    UUT.Chan2_reg_1_Data = 2'b10;
    UUT.Chan2_reg_2_Cmd = 3'b000;
    UUT.Chan2_reg_2_Data = 2'b10;
    UUT.Chan3_reg_0_Cmd = 3'b000;
    UUT.Chan3_reg_0_Data = 2'b00;
    UUT.Chan3_reg_1_Cmd = 3'b000;
    UUT.Chan3_reg_1_Data = 2'b10;
    UUT.Chan3_reg_2_Cmd = 3'b000;
    UUT.Chan3_reg_2_Data = 2'b01;
    UUT.CurCmd_reg = 3'b010;
    UUT.CurPtr_reg = 2'b01;
    UUT.ExGntd_reg = 1'b1;
    UUT.InvSet_reg_0 = 1'b0;
    UUT.InvSet_reg_1 = 1'b0;
    UUT.InvSet_reg_2 = 1'b0;
    UUT.MemData_reg = 2'b10;
    UUT.ShrSet_reg_0 = 1'b0;
    UUT.ShrSet_reg_1 = 1'b1;
    UUT.ShrSet_reg_2 = 1'b0;
    UUT._witness_.anyinit_procdff_1903 = 1'b0;

    // state 0
    PI_io_en_a = 5'b00100;
    PI_reset = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_io_en_a <= 5'b00000;
      PI_reset <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_io_en_a <= 5'b00000;
      PI_reset <= 1'b0;
    end

    genclock <= cycle < 2;
    cycle <= cycle + 1;
  end
endmodule
