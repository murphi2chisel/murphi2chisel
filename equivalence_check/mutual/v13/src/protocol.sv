module Try(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h0 ? 2'h1 : io_n_in_1; // @[router.scala 6:23 7:13 node.scala 20:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 5:14 node.scala 20:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 20:9]
  assign io_x_out = io_x_in; // @[node.scala 21:9]
endmodule
module Try_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h0 ? 2'h1 : io_n_in_2; // @[router.scala 6:23 7:13 node.scala 20:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 20:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 5:14 node.scala 20:9]
  assign io_x_out = io_x_in; // @[node.scala 21:9]
endmodule
module Crit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h1 & io_x_in ? 2'h2 : io_n_in_1; // @[router.scala 13:45 14:13 node.scala 20:9]
  wire  _GEN_1 = io_n_in_1 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[router.scala 13:45 15:10 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 12:14 node.scala 20:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 20:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 12:14 node.scala 21:9]
endmodule
module Crit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h1 & io_x_in ? 2'h2 : io_n_in_2; // @[router.scala 13:45 14:13 node.scala 20:9]
  wire  _GEN_1 = io_n_in_2 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[router.scala 13:45 15:10 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 20:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 12:14 node.scala 20:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 12:14 node.scala 21:9]
endmodule
module Exit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h2 ? 2'h3 : io_n_in_1; // @[router.scala 21:23 22:13 node.scala 20:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 20:14 node.scala 20:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 20:9]
  assign io_x_out = io_x_in; // @[node.scala 21:9]
endmodule
module Exit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h2 ? 2'h3 : io_n_in_2; // @[router.scala 21:23 22:13 node.scala 20:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 20:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 20:14 node.scala 20:9]
  assign io_x_out = io_x_in; // @[node.scala 21:9]
endmodule
module Idle(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h3 ? 2'h0 : io_n_in_1; // @[router.scala 28:23 29:13 node.scala 20:9]
  wire  _GEN_1 = io_n_in_1 == 2'h3 | io_x_in; // @[router.scala 28:23 30:10 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 27:14 node.scala 20:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 20:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 27:14 node.scala 21:9]
endmodule
module Idle_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h3 ? 2'h0 : io_n_in_2; // @[router.scala 28:23 29:13 node.scala 20:9]
  wire  _GEN_1 = io_n_in_2 == 2'h3 | io_x_in; // @[router.scala 28:23 30:10 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 20:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 20:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 27:14 node.scala 20:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 27:14 node.scala 21:9]
endmodule
module system(
  input        clock,
  input        reset,
  input  [2:0] io_en_a,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output       io_x_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_in_0; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_in_1; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_in_2; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_out_0; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_out_1; // @[system.scala 23:16]
  wire [1:0] rules_0_io_n_out_2; // @[system.scala 23:16]
  wire  rules_0_io_x_in; // @[system.scala 23:16]
  wire  rules_0_io_x_out; // @[system.scala 23:16]
  wire  rules_1_io_en_r; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_in_0; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_in_1; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_in_2; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_out_0; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_out_1; // @[system.scala 23:16]
  wire [1:0] rules_1_io_n_out_2; // @[system.scala 23:16]
  wire  rules_1_io_x_in; // @[system.scala 23:16]
  wire  rules_1_io_x_out; // @[system.scala 23:16]
  wire  rules_2_io_en_r; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_in_0; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_in_1; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_in_2; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_out_0; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_out_1; // @[system.scala 26:16]
  wire [1:0] rules_2_io_n_out_2; // @[system.scala 26:16]
  wire  rules_2_io_x_in; // @[system.scala 26:16]
  wire  rules_2_io_x_out; // @[system.scala 26:16]
  wire  rules_3_io_en_r; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_in_0; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_in_1; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_in_2; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_out_0; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_out_1; // @[system.scala 26:16]
  wire [1:0] rules_3_io_n_out_2; // @[system.scala 26:16]
  wire  rules_3_io_x_in; // @[system.scala 26:16]
  wire  rules_3_io_x_out; // @[system.scala 26:16]
  wire  rules_4_io_en_r; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_in_0; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_in_1; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_in_2; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_out_0; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_out_1; // @[system.scala 29:16]
  wire [1:0] rules_4_io_n_out_2; // @[system.scala 29:16]
  wire  rules_4_io_x_in; // @[system.scala 29:16]
  wire  rules_4_io_x_out; // @[system.scala 29:16]
  wire  rules_5_io_en_r; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_in_0; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_in_1; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_in_2; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_out_0; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_out_1; // @[system.scala 29:16]
  wire [1:0] rules_5_io_n_out_2; // @[system.scala 29:16]
  wire  rules_5_io_x_in; // @[system.scala 29:16]
  wire  rules_5_io_x_out; // @[system.scala 29:16]
  wire  rules_6_io_en_r; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_in_0; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_in_1; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_in_2; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_out_0; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_out_1; // @[system.scala 32:16]
  wire [1:0] rules_6_io_n_out_2; // @[system.scala 32:16]
  wire  rules_6_io_x_in; // @[system.scala 32:16]
  wire  rules_6_io_x_out; // @[system.scala 32:16]
  wire  rules_7_io_en_r; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_in_0; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_in_1; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_in_2; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_out_0; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_out_1; // @[system.scala 32:16]
  wire [1:0] rules_7_io_n_out_2; // @[system.scala 32:16]
  wire  rules_7_io_x_in; // @[system.scala 32:16]
  wire  rules_7_io_x_out; // @[system.scala 32:16]
  reg [1:0] n_reg_0; // @[system.scala 13:20]
  reg [1:0] n_reg_1; // @[system.scala 13:20]
  reg [1:0] n_reg_2; // @[system.scala 13:20]
  reg  x_reg; // @[system.scala 16:20]
  wire  _T = io_en_a == 3'h0; // @[system.scala 37:27]
  wire [1:0] _GEN_0 = _T ? rules_0_io_n_out_0 : n_reg_0; // @[system.scala 13:20 38:21 39:7]
  wire [1:0] _GEN_1 = _T ? rules_0_io_n_out_1 : n_reg_1; // @[system.scala 13:20 38:21 39:7]
  wire [1:0] _GEN_2 = _T ? rules_0_io_n_out_2 : n_reg_2; // @[system.scala 13:20 38:21 39:7]
  wire  _GEN_3 = _T ? rules_0_io_x_out : x_reg; // @[system.scala 16:20 38:21 40:7]
  wire  _T_2 = io_en_a == 3'h1; // @[system.scala 37:27]
  wire [1:0] _GEN_4 = _T_2 ? rules_1_io_n_out_0 : _GEN_0; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_5 = _T_2 ? rules_1_io_n_out_1 : _GEN_1; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_6 = _T_2 ? rules_1_io_n_out_2 : _GEN_2; // @[system.scala 38:21 39:7]
  wire  _GEN_7 = _T_2 ? rules_1_io_x_out : _GEN_3; // @[system.scala 38:21 40:7]
  wire  _T_4 = io_en_a == 3'h2; // @[system.scala 37:27]
  wire [1:0] _GEN_8 = _T_4 ? rules_2_io_n_out_0 : _GEN_4; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_9 = _T_4 ? rules_2_io_n_out_1 : _GEN_5; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_10 = _T_4 ? rules_2_io_n_out_2 : _GEN_6; // @[system.scala 38:21 39:7]
  wire  _GEN_11 = _T_4 ? rules_2_io_x_out : _GEN_7; // @[system.scala 38:21 40:7]
  wire  _T_6 = io_en_a == 3'h3; // @[system.scala 37:27]
  wire [1:0] _GEN_12 = _T_6 ? rules_3_io_n_out_0 : _GEN_8; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_13 = _T_6 ? rules_3_io_n_out_1 : _GEN_9; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_14 = _T_6 ? rules_3_io_n_out_2 : _GEN_10; // @[system.scala 38:21 39:7]
  wire  _GEN_15 = _T_6 ? rules_3_io_x_out : _GEN_11; // @[system.scala 38:21 40:7]
  wire  _T_8 = io_en_a == 3'h4; // @[system.scala 37:27]
  wire [1:0] _GEN_16 = _T_8 ? rules_4_io_n_out_0 : _GEN_12; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_17 = _T_8 ? rules_4_io_n_out_1 : _GEN_13; // @[system.scala 38:21 39:7]
  wire [1:0] _GEN_18 = _T_8 ? rules_4_io_n_out_2 : _GEN_14; // @[system.scala 38:21 39:7]
  wire  _GEN_19 = _T_8 ? rules_4_io_x_out : _GEN_15; // @[system.scala 38:21 40:7]
  wire  _T_10 = io_en_a == 3'h5; // @[system.scala 37:27]
  wire  _GEN_23 = _T_10 ? rules_5_io_x_out : _GEN_19; // @[system.scala 38:21 40:7]
  wire  _T_12 = io_en_a == 3'h6; // @[system.scala 37:27]
  wire  _GEN_27 = _T_12 ? rules_6_io_x_out : _GEN_23; // @[system.scala 38:21 40:7]
  wire  _T_14 = io_en_a == 3'h7; // @[system.scala 37:27]
  wire  _GEN_31 = _T_14 ? rules_7_io_x_out : _GEN_27; // @[system.scala 38:21 40:7]
  Try rules_0 ( // @[system.scala 23:16]
    .io_en_r(rules_0_io_en_r),
    .io_n_in_0(rules_0_io_n_in_0),
    .io_n_in_1(rules_0_io_n_in_1),
    .io_n_in_2(rules_0_io_n_in_2),
    .io_n_out_0(rules_0_io_n_out_0),
    .io_n_out_1(rules_0_io_n_out_1),
    .io_n_out_2(rules_0_io_n_out_2),
    .io_x_in(rules_0_io_x_in),
    .io_x_out(rules_0_io_x_out)
  );
  Try_1 rules_1 ( // @[system.scala 23:16]
    .io_en_r(rules_1_io_en_r),
    .io_n_in_0(rules_1_io_n_in_0),
    .io_n_in_1(rules_1_io_n_in_1),
    .io_n_in_2(rules_1_io_n_in_2),
    .io_n_out_0(rules_1_io_n_out_0),
    .io_n_out_1(rules_1_io_n_out_1),
    .io_n_out_2(rules_1_io_n_out_2),
    .io_x_in(rules_1_io_x_in),
    .io_x_out(rules_1_io_x_out)
  );
  Crit rules_2 ( // @[system.scala 26:16]
    .io_en_r(rules_2_io_en_r),
    .io_n_in_0(rules_2_io_n_in_0),
    .io_n_in_1(rules_2_io_n_in_1),
    .io_n_in_2(rules_2_io_n_in_2),
    .io_n_out_0(rules_2_io_n_out_0),
    .io_n_out_1(rules_2_io_n_out_1),
    .io_n_out_2(rules_2_io_n_out_2),
    .io_x_in(rules_2_io_x_in),
    .io_x_out(rules_2_io_x_out)
  );
  Crit_1 rules_3 ( // @[system.scala 26:16]
    .io_en_r(rules_3_io_en_r),
    .io_n_in_0(rules_3_io_n_in_0),
    .io_n_in_1(rules_3_io_n_in_1),
    .io_n_in_2(rules_3_io_n_in_2),
    .io_n_out_0(rules_3_io_n_out_0),
    .io_n_out_1(rules_3_io_n_out_1),
    .io_n_out_2(rules_3_io_n_out_2),
    .io_x_in(rules_3_io_x_in),
    .io_x_out(rules_3_io_x_out)
  );
  Exit rules_4 ( // @[system.scala 29:16]
    .io_en_r(rules_4_io_en_r),
    .io_n_in_0(rules_4_io_n_in_0),
    .io_n_in_1(rules_4_io_n_in_1),
    .io_n_in_2(rules_4_io_n_in_2),
    .io_n_out_0(rules_4_io_n_out_0),
    .io_n_out_1(rules_4_io_n_out_1),
    .io_n_out_2(rules_4_io_n_out_2),
    .io_x_in(rules_4_io_x_in),
    .io_x_out(rules_4_io_x_out)
  );
  Exit_1 rules_5 ( // @[system.scala 29:16]
    .io_en_r(rules_5_io_en_r),
    .io_n_in_0(rules_5_io_n_in_0),
    .io_n_in_1(rules_5_io_n_in_1),
    .io_n_in_2(rules_5_io_n_in_2),
    .io_n_out_0(rules_5_io_n_out_0),
    .io_n_out_1(rules_5_io_n_out_1),
    .io_n_out_2(rules_5_io_n_out_2),
    .io_x_in(rules_5_io_x_in),
    .io_x_out(rules_5_io_x_out)
  );
  Idle rules_6 ( // @[system.scala 32:16]
    .io_en_r(rules_6_io_en_r),
    .io_n_in_0(rules_6_io_n_in_0),
    .io_n_in_1(rules_6_io_n_in_1),
    .io_n_in_2(rules_6_io_n_in_2),
    .io_n_out_0(rules_6_io_n_out_0),
    .io_n_out_1(rules_6_io_n_out_1),
    .io_n_out_2(rules_6_io_n_out_2),
    .io_x_in(rules_6_io_x_in),
    .io_x_out(rules_6_io_x_out)
  );
  Idle_1 rules_7 ( // @[system.scala 32:16]
    .io_en_r(rules_7_io_en_r),
    .io_n_in_0(rules_7_io_n_in_0),
    .io_n_in_1(rules_7_io_n_in_1),
    .io_n_in_2(rules_7_io_n_in_2),
    .io_n_out_0(rules_7_io_n_out_0),
    .io_n_out_1(rules_7_io_n_out_1),
    .io_n_out_2(rules_7_io_n_out_2),
    .io_x_in(rules_7_io_x_in),
    .io_x_out(rules_7_io_x_out)
  );
  assign io_n_out_0 = n_reg_0; // @[system.scala 14:9]
  assign io_n_out_1 = n_reg_1; // @[system.scala 14:9]
  assign io_n_out_2 = n_reg_2; // @[system.scala 14:9]
  assign io_x_out = x_reg; // @[system.scala 17:9]
  assign rules_0_io_en_r = io_en_a == 3'h0; // @[system.scala 37:27]
  assign rules_0_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_0_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_0_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_0_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_1_io_en_r = io_en_a == 3'h1; // @[system.scala 37:27]
  assign rules_1_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_1_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_1_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_1_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_2_io_en_r = io_en_a == 3'h2; // @[system.scala 37:27]
  assign rules_2_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_2_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_2_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_2_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_3_io_en_r = io_en_a == 3'h3; // @[system.scala 37:27]
  assign rules_3_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_3_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_3_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_3_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_4_io_en_r = io_en_a == 3'h4; // @[system.scala 37:27]
  assign rules_4_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_4_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_4_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_4_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_5_io_en_r = io_en_a == 3'h5; // @[system.scala 37:27]
  assign rules_5_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_5_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_5_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_5_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_6_io_en_r = io_en_a == 3'h6; // @[system.scala 37:27]
  assign rules_6_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_6_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_6_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_6_io_x_in = x_reg; // @[system.scala 36:18]
  assign rules_7_io_en_r = io_en_a == 3'h7; // @[system.scala 37:27]
  assign rules_7_io_n_in_0 = n_reg_0; // @[system.scala 35:18]
  assign rules_7_io_n_in_1 = n_reg_1; // @[system.scala 35:18]
  assign rules_7_io_n_in_2 = n_reg_2; // @[system.scala 35:18]
  assign rules_7_io_x_in = x_reg; // @[system.scala 36:18]
  always @(posedge clock) begin
    if (reset) begin // @[system.scala 13:20]
      n_reg_0 <= 2'h0; // @[system.scala 13:20]
    end else if (_T_14) begin // @[system.scala 38:21]
      n_reg_0 <= rules_7_io_n_out_0; // @[system.scala 39:7]
    end else if (_T_12) begin // @[system.scala 38:21]
      n_reg_0 <= rules_6_io_n_out_0; // @[system.scala 39:7]
    end else if (_T_10) begin // @[system.scala 38:21]
      n_reg_0 <= rules_5_io_n_out_0; // @[system.scala 39:7]
    end else begin
      n_reg_0 <= _GEN_16;
    end
    if (reset) begin // @[system.scala 13:20]
      n_reg_1 <= 2'h0; // @[system.scala 13:20]
    end else if (_T_14) begin // @[system.scala 38:21]
      n_reg_1 <= rules_7_io_n_out_1; // @[system.scala 39:7]
    end else if (_T_12) begin // @[system.scala 38:21]
      n_reg_1 <= rules_6_io_n_out_1; // @[system.scala 39:7]
    end else if (_T_10) begin // @[system.scala 38:21]
      n_reg_1 <= rules_5_io_n_out_1; // @[system.scala 39:7]
    end else begin
      n_reg_1 <= _GEN_17;
    end
    if (reset) begin // @[system.scala 13:20]
      n_reg_2 <= 2'h0; // @[system.scala 13:20]
    end else if (_T_14) begin // @[system.scala 38:21]
      n_reg_2 <= rules_7_io_n_out_2; // @[system.scala 39:7]
    end else if (_T_12) begin // @[system.scala 38:21]
      n_reg_2 <= rules_6_io_n_out_2; // @[system.scala 39:7]
    end else if (_T_10) begin // @[system.scala 38:21]
      n_reg_2 <= rules_5_io_n_out_2; // @[system.scala 39:7]
    end else begin
      n_reg_2 <= _GEN_18;
    end
    x_reg <= reset | _GEN_31; // @[system.scala 16:{20,20}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif

                initial begin
                    assume(reset==1);
                end

                  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(~(n_reg_1 == 2'h3 & (n_reg_2 == 2'h3 & ~x_reg))); // @[system.scala 51:7]
    end
  end
endmodule
