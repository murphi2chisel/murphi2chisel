module Init(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_en_r ? 2'h0 : io_n_in_1; // @[router.scala 5:14 7:13 node.scala 21:9]
  assign io_n_out_2 = io_en_r ? 2'h0 : io_n_in_2; // @[router.scala 5:14 7:13 node.scala 21:9]
  assign io_n_out_3 = io_en_r ? 2'h0 : io_n_in_3; // @[router.scala 5:14 7:13 node.scala 21:9]
  assign io_x_out = io_en_r | io_x_in; // @[router.scala 10:10 5:14 node.scala 22:9]
endmodule
module Try(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h0 ? 2'h1 : io_n_in_1; // @[router.scala 15:23 16:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 14:14 node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Try_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h0 ? 2'h1 : io_n_in_2; // @[router.scala 15:23 16:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 14:14 node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Try_2(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_3 == 2'h0 ? 2'h1 : io_n_in_3; // @[router.scala 15:23 16:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_en_r ? _GEN_0 : io_n_in_3; // @[router.scala 14:14 node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Crit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h1 & io_x_in ? 2'h2 : io_n_in_1; // @[router.scala 22:45 23:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_1 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[router.scala 22:45 24:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 21:14 node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 21:14 node.scala 22:9]
endmodule
module Crit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h1 & io_x_in ? 2'h2 : io_n_in_2; // @[router.scala 22:45 23:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_2 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[router.scala 22:45 24:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 21:14 node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 21:14 node.scala 22:9]
endmodule
module Crit_2(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_3 == 2'h1 & io_x_in ? 2'h2 : io_n_in_3; // @[router.scala 22:45 23:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_3 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[router.scala 22:45 24:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_en_r ? _GEN_0 : io_n_in_3; // @[router.scala 21:14 node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 21:14 node.scala 22:9]
endmodule
module Exit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h2 ? 2'h3 : io_n_in_1; // @[router.scala 30:23 31:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 29:14 node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Exit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h2 ? 2'h3 : io_n_in_2; // @[router.scala 30:23 31:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 29:14 node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Exit_2(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_3 == 2'h2 ? 2'h3 : io_n_in_3; // @[router.scala 30:23 31:13 node.scala 21:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_en_r ? _GEN_0 : io_n_in_3; // @[router.scala 29:14 node.scala 21:9]
  assign io_x_out = io_x_in; // @[node.scala 22:9]
endmodule
module Idle(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h3 ? 2'h0 : io_n_in_1; // @[router.scala 37:23 38:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_1 == 2'h3 | io_x_in; // @[router.scala 37:23 39:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[router.scala 36:14 node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 36:14 node.scala 22:9]
endmodule
module Idle_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_2 == 2'h3 ? 2'h0 : io_n_in_2; // @[router.scala 37:23 38:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_2 == 2'h3 | io_x_in; // @[router.scala 37:23 39:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_en_r ? _GEN_0 : io_n_in_2; // @[router.scala 36:14 node.scala 21:9]
  assign io_n_out_3 = io_n_in_3; // @[node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 36:14 node.scala 22:9]
endmodule
module Idle_2(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  input  [1:0] io_n_in_2,
  input  [1:0] io_n_in_3,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_3 == 2'h3 ? 2'h0 : io_n_in_3; // @[router.scala 37:23 38:13 node.scala 21:9]
  wire  _GEN_1 = io_n_in_3 == 2'h3 | io_x_in; // @[router.scala 37:23 39:10 node.scala 22:9]
  assign io_n_out_0 = io_n_in_0; // @[node.scala 21:9]
  assign io_n_out_1 = io_n_in_1; // @[node.scala 21:9]
  assign io_n_out_2 = io_n_in_2; // @[node.scala 21:9]
  assign io_n_out_3 = io_en_r ? _GEN_0 : io_n_in_3; // @[router.scala 36:14 node.scala 21:9]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[router.scala 36:14 node.scala 22:9]
endmodule
module system(
  input        clock,
  input        reset,
  input  [3:0] io_en_a,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output [1:0] io_n_out_2,
  output [1:0] io_n_out_3,
  output       io_x_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_in_0; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_in_1; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_in_2; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_in_3; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_out_0; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_out_1; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_out_2; // @[system.scala 16:16]
  wire [1:0] rules_0_io_n_out_3; // @[system.scala 16:16]
  wire  rules_0_io_x_in; // @[system.scala 16:16]
  wire  rules_0_io_x_out; // @[system.scala 16:16]
  wire  rules_1_io_en_r; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_in_0; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_in_1; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_in_2; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_in_3; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_out_0; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_out_1; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_out_2; // @[system.scala 18:16]
  wire [1:0] rules_1_io_n_out_3; // @[system.scala 18:16]
  wire  rules_1_io_x_in; // @[system.scala 18:16]
  wire  rules_1_io_x_out; // @[system.scala 18:16]
  wire  rules_2_io_en_r; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_in_0; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_in_1; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_in_2; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_in_3; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_out_0; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_out_1; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_out_2; // @[system.scala 18:16]
  wire [1:0] rules_2_io_n_out_3; // @[system.scala 18:16]
  wire  rules_2_io_x_in; // @[system.scala 18:16]
  wire  rules_2_io_x_out; // @[system.scala 18:16]
  wire  rules_3_io_en_r; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_in_0; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_in_1; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_in_2; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_in_3; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_out_0; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_out_1; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_out_2; // @[system.scala 18:16]
  wire [1:0] rules_3_io_n_out_3; // @[system.scala 18:16]
  wire  rules_3_io_x_in; // @[system.scala 18:16]
  wire  rules_3_io_x_out; // @[system.scala 18:16]
  wire  rules_4_io_en_r; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_in_0; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_in_1; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_in_2; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_in_3; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_out_0; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_out_1; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_out_2; // @[system.scala 21:16]
  wire [1:0] rules_4_io_n_out_3; // @[system.scala 21:16]
  wire  rules_4_io_x_in; // @[system.scala 21:16]
  wire  rules_4_io_x_out; // @[system.scala 21:16]
  wire  rules_5_io_en_r; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_in_0; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_in_1; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_in_2; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_in_3; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_out_0; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_out_1; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_out_2; // @[system.scala 21:16]
  wire [1:0] rules_5_io_n_out_3; // @[system.scala 21:16]
  wire  rules_5_io_x_in; // @[system.scala 21:16]
  wire  rules_5_io_x_out; // @[system.scala 21:16]
  wire  rules_6_io_en_r; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_in_0; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_in_1; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_in_2; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_in_3; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_out_0; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_out_1; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_out_2; // @[system.scala 21:16]
  wire [1:0] rules_6_io_n_out_3; // @[system.scala 21:16]
  wire  rules_6_io_x_in; // @[system.scala 21:16]
  wire  rules_6_io_x_out; // @[system.scala 21:16]
  wire  rules_7_io_en_r; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_in_0; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_in_1; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_in_2; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_in_3; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_out_0; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_out_1; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_out_2; // @[system.scala 24:16]
  wire [1:0] rules_7_io_n_out_3; // @[system.scala 24:16]
  wire  rules_7_io_x_in; // @[system.scala 24:16]
  wire  rules_7_io_x_out; // @[system.scala 24:16]
  wire  rules_8_io_en_r; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_in_0; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_in_1; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_in_2; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_in_3; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_out_0; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_out_1; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_out_2; // @[system.scala 24:16]
  wire [1:0] rules_8_io_n_out_3; // @[system.scala 24:16]
  wire  rules_8_io_x_in; // @[system.scala 24:16]
  wire  rules_8_io_x_out; // @[system.scala 24:16]
  wire  rules_9_io_en_r; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_in_0; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_in_1; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_in_2; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_in_3; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_out_0; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_out_1; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_out_2; // @[system.scala 24:16]
  wire [1:0] rules_9_io_n_out_3; // @[system.scala 24:16]
  wire  rules_9_io_x_in; // @[system.scala 24:16]
  wire  rules_9_io_x_out; // @[system.scala 24:16]
  wire  rules_10_io_en_r; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_in_0; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_in_1; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_in_2; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_in_3; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_out_0; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_out_1; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_out_2; // @[system.scala 27:16]
  wire [1:0] rules_10_io_n_out_3; // @[system.scala 27:16]
  wire  rules_10_io_x_in; // @[system.scala 27:16]
  wire  rules_10_io_x_out; // @[system.scala 27:16]
  wire  rules_11_io_en_r; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_in_0; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_in_1; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_in_2; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_in_3; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_out_0; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_out_1; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_out_2; // @[system.scala 27:16]
  wire [1:0] rules_11_io_n_out_3; // @[system.scala 27:16]
  wire  rules_11_io_x_in; // @[system.scala 27:16]
  wire  rules_11_io_x_out; // @[system.scala 27:16]
  wire  rules_12_io_en_r; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_in_0; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_in_1; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_in_2; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_in_3; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_out_0; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_out_1; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_out_2; // @[system.scala 27:16]
  wire [1:0] rules_12_io_n_out_3; // @[system.scala 27:16]
  wire  rules_12_io_x_in; // @[system.scala 27:16]
  wire  rules_12_io_x_out; // @[system.scala 27:16]
  reg [1:0] n_reg_0; // @[system.scala 12:16]
  reg [1:0] n_reg_1; // @[system.scala 12:16]
  reg [1:0] n_reg_2; // @[system.scala 12:16]
  reg [1:0] n_reg_3; // @[system.scala 12:16]
  reg  x_reg; // @[system.scala 14:16]
  wire  _T = io_en_a == 4'h0; // @[system.scala 32:27]
  wire [1:0] _GEN_0 = _T ? rules_0_io_n_out_0 : n_reg_0; // @[system.scala 12:16 33:21 34:7]
  wire [1:0] _GEN_1 = _T ? rules_0_io_n_out_1 : n_reg_1; // @[system.scala 12:16 33:21 34:7]
  wire [1:0] _GEN_2 = _T ? rules_0_io_n_out_2 : n_reg_2; // @[system.scala 12:16 33:21 34:7]
  wire [1:0] _GEN_3 = _T ? rules_0_io_n_out_3 : n_reg_3; // @[system.scala 12:16 33:21 34:7]
  wire  _GEN_4 = _T ? rules_0_io_x_out : x_reg; // @[system.scala 14:16 33:21 35:7]
  wire  _T_2 = io_en_a == 4'h1; // @[system.scala 32:27]
  wire [1:0] _GEN_5 = _T_2 ? rules_1_io_n_out_0 : _GEN_0; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_6 = _T_2 ? rules_1_io_n_out_1 : _GEN_1; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_7 = _T_2 ? rules_1_io_n_out_2 : _GEN_2; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_8 = _T_2 ? rules_1_io_n_out_3 : _GEN_3; // @[system.scala 33:21 34:7]
  wire  _GEN_9 = _T_2 ? rules_1_io_x_out : _GEN_4; // @[system.scala 33:21 35:7]
  wire  _T_4 = io_en_a == 4'h2; // @[system.scala 32:27]
  wire [1:0] _GEN_10 = _T_4 ? rules_2_io_n_out_0 : _GEN_5; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_11 = _T_4 ? rules_2_io_n_out_1 : _GEN_6; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_12 = _T_4 ? rules_2_io_n_out_2 : _GEN_7; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_13 = _T_4 ? rules_2_io_n_out_3 : _GEN_8; // @[system.scala 33:21 34:7]
  wire  _GEN_14 = _T_4 ? rules_2_io_x_out : _GEN_9; // @[system.scala 33:21 35:7]
  wire  _T_6 = io_en_a == 4'h3; // @[system.scala 32:27]
  wire [1:0] _GEN_15 = _T_6 ? rules_3_io_n_out_0 : _GEN_10; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_16 = _T_6 ? rules_3_io_n_out_1 : _GEN_11; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_17 = _T_6 ? rules_3_io_n_out_2 : _GEN_12; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_18 = _T_6 ? rules_3_io_n_out_3 : _GEN_13; // @[system.scala 33:21 34:7]
  wire  _GEN_19 = _T_6 ? rules_3_io_x_out : _GEN_14; // @[system.scala 33:21 35:7]
  wire  _T_8 = io_en_a == 4'h4; // @[system.scala 32:27]
  wire [1:0] _GEN_20 = _T_8 ? rules_4_io_n_out_0 : _GEN_15; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_21 = _T_8 ? rules_4_io_n_out_1 : _GEN_16; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_22 = _T_8 ? rules_4_io_n_out_2 : _GEN_17; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_23 = _T_8 ? rules_4_io_n_out_3 : _GEN_18; // @[system.scala 33:21 34:7]
  wire  _GEN_24 = _T_8 ? rules_4_io_x_out : _GEN_19; // @[system.scala 33:21 35:7]
  wire  _T_10 = io_en_a == 4'h5; // @[system.scala 32:27]
  wire [1:0] _GEN_25 = _T_10 ? rules_5_io_n_out_0 : _GEN_20; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_26 = _T_10 ? rules_5_io_n_out_1 : _GEN_21; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_27 = _T_10 ? rules_5_io_n_out_2 : _GEN_22; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_28 = _T_10 ? rules_5_io_n_out_3 : _GEN_23; // @[system.scala 33:21 34:7]
  wire  _GEN_29 = _T_10 ? rules_5_io_x_out : _GEN_24; // @[system.scala 33:21 35:7]
  wire  _T_12 = io_en_a == 4'h6; // @[system.scala 32:27]
  wire [1:0] _GEN_30 = _T_12 ? rules_6_io_n_out_0 : _GEN_25; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_31 = _T_12 ? rules_6_io_n_out_1 : _GEN_26; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_32 = _T_12 ? rules_6_io_n_out_2 : _GEN_27; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_33 = _T_12 ? rules_6_io_n_out_3 : _GEN_28; // @[system.scala 33:21 34:7]
  wire  _GEN_34 = _T_12 ? rules_6_io_x_out : _GEN_29; // @[system.scala 33:21 35:7]
  wire  _T_14 = io_en_a == 4'h7; // @[system.scala 32:27]
  wire [1:0] _GEN_35 = _T_14 ? rules_7_io_n_out_0 : _GEN_30; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_36 = _T_14 ? rules_7_io_n_out_1 : _GEN_31; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_37 = _T_14 ? rules_7_io_n_out_2 : _GEN_32; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_38 = _T_14 ? rules_7_io_n_out_3 : _GEN_33; // @[system.scala 33:21 34:7]
  wire  _GEN_39 = _T_14 ? rules_7_io_x_out : _GEN_34; // @[system.scala 33:21 35:7]
  wire  _T_16 = io_en_a == 4'h8; // @[system.scala 32:27]
  wire [1:0] _GEN_40 = _T_16 ? rules_8_io_n_out_0 : _GEN_35; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_41 = _T_16 ? rules_8_io_n_out_1 : _GEN_36; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_42 = _T_16 ? rules_8_io_n_out_2 : _GEN_37; // @[system.scala 33:21 34:7]
  wire [1:0] _GEN_43 = _T_16 ? rules_8_io_n_out_3 : _GEN_38; // @[system.scala 33:21 34:7]
  wire  _GEN_44 = _T_16 ? rules_8_io_x_out : _GEN_39; // @[system.scala 33:21 35:7]
  wire  _T_18 = io_en_a == 4'h9; // @[system.scala 32:27]
  wire  _T_20 = io_en_a == 4'ha; // @[system.scala 32:27]
  wire  _T_22 = io_en_a == 4'hb; // @[system.scala 32:27]
  wire  _T_24 = io_en_a == 4'hc; // @[system.scala 32:27]
  Init rules_0 ( // @[system.scala 16:16]
    .io_en_r(rules_0_io_en_r),
    .io_n_in_0(rules_0_io_n_in_0),
    .io_n_in_1(rules_0_io_n_in_1),
    .io_n_in_2(rules_0_io_n_in_2),
    .io_n_in_3(rules_0_io_n_in_3),
    .io_n_out_0(rules_0_io_n_out_0),
    .io_n_out_1(rules_0_io_n_out_1),
    .io_n_out_2(rules_0_io_n_out_2),
    .io_n_out_3(rules_0_io_n_out_3),
    .io_x_in(rules_0_io_x_in),
    .io_x_out(rules_0_io_x_out)
  );
  Try rules_1 ( // @[system.scala 18:16]
    .io_en_r(rules_1_io_en_r),
    .io_n_in_0(rules_1_io_n_in_0),
    .io_n_in_1(rules_1_io_n_in_1),
    .io_n_in_2(rules_1_io_n_in_2),
    .io_n_in_3(rules_1_io_n_in_3),
    .io_n_out_0(rules_1_io_n_out_0),
    .io_n_out_1(rules_1_io_n_out_1),
    .io_n_out_2(rules_1_io_n_out_2),
    .io_n_out_3(rules_1_io_n_out_3),
    .io_x_in(rules_1_io_x_in),
    .io_x_out(rules_1_io_x_out)
  );
  Try_1 rules_2 ( // @[system.scala 18:16]
    .io_en_r(rules_2_io_en_r),
    .io_n_in_0(rules_2_io_n_in_0),
    .io_n_in_1(rules_2_io_n_in_1),
    .io_n_in_2(rules_2_io_n_in_2),
    .io_n_in_3(rules_2_io_n_in_3),
    .io_n_out_0(rules_2_io_n_out_0),
    .io_n_out_1(rules_2_io_n_out_1),
    .io_n_out_2(rules_2_io_n_out_2),
    .io_n_out_3(rules_2_io_n_out_3),
    .io_x_in(rules_2_io_x_in),
    .io_x_out(rules_2_io_x_out)
  );
  Try_2 rules_3 ( // @[system.scala 18:16]
    .io_en_r(rules_3_io_en_r),
    .io_n_in_0(rules_3_io_n_in_0),
    .io_n_in_1(rules_3_io_n_in_1),
    .io_n_in_2(rules_3_io_n_in_2),
    .io_n_in_3(rules_3_io_n_in_3),
    .io_n_out_0(rules_3_io_n_out_0),
    .io_n_out_1(rules_3_io_n_out_1),
    .io_n_out_2(rules_3_io_n_out_2),
    .io_n_out_3(rules_3_io_n_out_3),
    .io_x_in(rules_3_io_x_in),
    .io_x_out(rules_3_io_x_out)
  );
  Crit rules_4 ( // @[system.scala 21:16]
    .io_en_r(rules_4_io_en_r),
    .io_n_in_0(rules_4_io_n_in_0),
    .io_n_in_1(rules_4_io_n_in_1),
    .io_n_in_2(rules_4_io_n_in_2),
    .io_n_in_3(rules_4_io_n_in_3),
    .io_n_out_0(rules_4_io_n_out_0),
    .io_n_out_1(rules_4_io_n_out_1),
    .io_n_out_2(rules_4_io_n_out_2),
    .io_n_out_3(rules_4_io_n_out_3),
    .io_x_in(rules_4_io_x_in),
    .io_x_out(rules_4_io_x_out)
  );
  Crit_1 rules_5 ( // @[system.scala 21:16]
    .io_en_r(rules_5_io_en_r),
    .io_n_in_0(rules_5_io_n_in_0),
    .io_n_in_1(rules_5_io_n_in_1),
    .io_n_in_2(rules_5_io_n_in_2),
    .io_n_in_3(rules_5_io_n_in_3),
    .io_n_out_0(rules_5_io_n_out_0),
    .io_n_out_1(rules_5_io_n_out_1),
    .io_n_out_2(rules_5_io_n_out_2),
    .io_n_out_3(rules_5_io_n_out_3),
    .io_x_in(rules_5_io_x_in),
    .io_x_out(rules_5_io_x_out)
  );
  Crit_2 rules_6 ( // @[system.scala 21:16]
    .io_en_r(rules_6_io_en_r),
    .io_n_in_0(rules_6_io_n_in_0),
    .io_n_in_1(rules_6_io_n_in_1),
    .io_n_in_2(rules_6_io_n_in_2),
    .io_n_in_3(rules_6_io_n_in_3),
    .io_n_out_0(rules_6_io_n_out_0),
    .io_n_out_1(rules_6_io_n_out_1),
    .io_n_out_2(rules_6_io_n_out_2),
    .io_n_out_3(rules_6_io_n_out_3),
    .io_x_in(rules_6_io_x_in),
    .io_x_out(rules_6_io_x_out)
  );
  Exit rules_7 ( // @[system.scala 24:16]
    .io_en_r(rules_7_io_en_r),
    .io_n_in_0(rules_7_io_n_in_0),
    .io_n_in_1(rules_7_io_n_in_1),
    .io_n_in_2(rules_7_io_n_in_2),
    .io_n_in_3(rules_7_io_n_in_3),
    .io_n_out_0(rules_7_io_n_out_0),
    .io_n_out_1(rules_7_io_n_out_1),
    .io_n_out_2(rules_7_io_n_out_2),
    .io_n_out_3(rules_7_io_n_out_3),
    .io_x_in(rules_7_io_x_in),
    .io_x_out(rules_7_io_x_out)
  );
  Exit_1 rules_8 ( // @[system.scala 24:16]
    .io_en_r(rules_8_io_en_r),
    .io_n_in_0(rules_8_io_n_in_0),
    .io_n_in_1(rules_8_io_n_in_1),
    .io_n_in_2(rules_8_io_n_in_2),
    .io_n_in_3(rules_8_io_n_in_3),
    .io_n_out_0(rules_8_io_n_out_0),
    .io_n_out_1(rules_8_io_n_out_1),
    .io_n_out_2(rules_8_io_n_out_2),
    .io_n_out_3(rules_8_io_n_out_3),
    .io_x_in(rules_8_io_x_in),
    .io_x_out(rules_8_io_x_out)
  );
  Exit_2 rules_9 ( // @[system.scala 24:16]
    .io_en_r(rules_9_io_en_r),
    .io_n_in_0(rules_9_io_n_in_0),
    .io_n_in_1(rules_9_io_n_in_1),
    .io_n_in_2(rules_9_io_n_in_2),
    .io_n_in_3(rules_9_io_n_in_3),
    .io_n_out_0(rules_9_io_n_out_0),
    .io_n_out_1(rules_9_io_n_out_1),
    .io_n_out_2(rules_9_io_n_out_2),
    .io_n_out_3(rules_9_io_n_out_3),
    .io_x_in(rules_9_io_x_in),
    .io_x_out(rules_9_io_x_out)
  );
  Idle rules_10 ( // @[system.scala 27:16]
    .io_en_r(rules_10_io_en_r),
    .io_n_in_0(rules_10_io_n_in_0),
    .io_n_in_1(rules_10_io_n_in_1),
    .io_n_in_2(rules_10_io_n_in_2),
    .io_n_in_3(rules_10_io_n_in_3),
    .io_n_out_0(rules_10_io_n_out_0),
    .io_n_out_1(rules_10_io_n_out_1),
    .io_n_out_2(rules_10_io_n_out_2),
    .io_n_out_3(rules_10_io_n_out_3),
    .io_x_in(rules_10_io_x_in),
    .io_x_out(rules_10_io_x_out)
  );
  Idle_1 rules_11 ( // @[system.scala 27:16]
    .io_en_r(rules_11_io_en_r),
    .io_n_in_0(rules_11_io_n_in_0),
    .io_n_in_1(rules_11_io_n_in_1),
    .io_n_in_2(rules_11_io_n_in_2),
    .io_n_in_3(rules_11_io_n_in_3),
    .io_n_out_0(rules_11_io_n_out_0),
    .io_n_out_1(rules_11_io_n_out_1),
    .io_n_out_2(rules_11_io_n_out_2),
    .io_n_out_3(rules_11_io_n_out_3),
    .io_x_in(rules_11_io_x_in),
    .io_x_out(rules_11_io_x_out)
  );
  Idle_2 rules_12 ( // @[system.scala 27:16]
    .io_en_r(rules_12_io_en_r),
    .io_n_in_0(rules_12_io_n_in_0),
    .io_n_in_1(rules_12_io_n_in_1),
    .io_n_in_2(rules_12_io_n_in_2),
    .io_n_in_3(rules_12_io_n_in_3),
    .io_n_out_0(rules_12_io_n_out_0),
    .io_n_out_1(rules_12_io_n_out_1),
    .io_n_out_2(rules_12_io_n_out_2),
    .io_n_out_3(rules_12_io_n_out_3),
    .io_x_in(rules_12_io_x_in),
    .io_x_out(rules_12_io_x_out)
  );
  assign io_n_out_0 = n_reg_0; // @[system.scala 13:9]
  assign io_n_out_1 = n_reg_1; // @[system.scala 13:9]
  assign io_n_out_2 = n_reg_2; // @[system.scala 13:9]
  assign io_n_out_3 = n_reg_3; // @[system.scala 13:9]
  assign io_x_out = x_reg; // @[system.scala 15:9]
  assign rules_0_io_en_r = io_en_a == 4'h0; // @[system.scala 32:27]
  assign rules_0_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_0_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_0_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_0_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_0_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_1_io_en_r = io_en_a == 4'h1; // @[system.scala 32:27]
  assign rules_1_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_1_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_1_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_1_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_1_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_2_io_en_r = io_en_a == 4'h2; // @[system.scala 32:27]
  assign rules_2_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_2_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_2_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_2_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_2_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_3_io_en_r = io_en_a == 4'h3; // @[system.scala 32:27]
  assign rules_3_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_3_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_3_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_3_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_3_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_4_io_en_r = io_en_a == 4'h4; // @[system.scala 32:27]
  assign rules_4_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_4_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_4_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_4_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_4_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_5_io_en_r = io_en_a == 4'h5; // @[system.scala 32:27]
  assign rules_5_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_5_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_5_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_5_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_5_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_6_io_en_r = io_en_a == 4'h6; // @[system.scala 32:27]
  assign rules_6_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_6_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_6_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_6_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_6_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_7_io_en_r = io_en_a == 4'h7; // @[system.scala 32:27]
  assign rules_7_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_7_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_7_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_7_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_7_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_8_io_en_r = io_en_a == 4'h8; // @[system.scala 32:27]
  assign rules_8_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_8_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_8_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_8_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_8_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_9_io_en_r = io_en_a == 4'h9; // @[system.scala 32:27]
  assign rules_9_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_9_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_9_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_9_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_9_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_10_io_en_r = io_en_a == 4'ha; // @[system.scala 32:27]
  assign rules_10_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_10_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_10_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_10_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_10_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_11_io_en_r = io_en_a == 4'hb; // @[system.scala 32:27]
  assign rules_11_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_11_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_11_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_11_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_11_io_x_in = x_reg; // @[system.scala 31:18]
  assign rules_12_io_en_r = io_en_a == 4'hc; // @[system.scala 32:27]
  assign rules_12_io_n_in_0 = n_reg_0; // @[system.scala 30:18]
  assign rules_12_io_n_in_1 = n_reg_1; // @[system.scala 30:18]
  assign rules_12_io_n_in_2 = n_reg_2; // @[system.scala 30:18]
  assign rules_12_io_n_in_3 = n_reg_3; // @[system.scala 30:18]
  assign rules_12_io_x_in = x_reg; // @[system.scala 31:18]
  always @(posedge clock) begin
    if (_T_24) begin // @[system.scala 33:21]
      n_reg_0 <= rules_12_io_n_out_0; // @[system.scala 34:7]
    end else if (_T_22) begin // @[system.scala 33:21]
      n_reg_0 <= rules_11_io_n_out_0; // @[system.scala 34:7]
    end else if (_T_20) begin // @[system.scala 33:21]
      n_reg_0 <= rules_10_io_n_out_0; // @[system.scala 34:7]
    end else if (_T_18) begin // @[system.scala 33:21]
      n_reg_0 <= rules_9_io_n_out_0; // @[system.scala 34:7]
    end else begin
      n_reg_0 <= _GEN_40;
    end
    if (_T_24) begin // @[system.scala 33:21]
      n_reg_1 <= rules_12_io_n_out_1; // @[system.scala 34:7]
    end else if (_T_22) begin // @[system.scala 33:21]
      n_reg_1 <= rules_11_io_n_out_1; // @[system.scala 34:7]
    end else if (_T_20) begin // @[system.scala 33:21]
      n_reg_1 <= rules_10_io_n_out_1; // @[system.scala 34:7]
    end else if (_T_18) begin // @[system.scala 33:21]
      n_reg_1 <= rules_9_io_n_out_1; // @[system.scala 34:7]
    end else begin
      n_reg_1 <= _GEN_41;
    end
    if (_T_24) begin // @[system.scala 33:21]
      n_reg_2 <= rules_12_io_n_out_2; // @[system.scala 34:7]
    end else if (_T_22) begin // @[system.scala 33:21]
      n_reg_2 <= rules_11_io_n_out_2; // @[system.scala 34:7]
    end else if (_T_20) begin // @[system.scala 33:21]
      n_reg_2 <= rules_10_io_n_out_2; // @[system.scala 34:7]
    end else if (_T_18) begin // @[system.scala 33:21]
      n_reg_2 <= rules_9_io_n_out_2; // @[system.scala 34:7]
    end else begin
      n_reg_2 <= _GEN_42;
    end
    if (_T_24) begin // @[system.scala 33:21]
      n_reg_3 <= rules_12_io_n_out_3; // @[system.scala 34:7]
    end else if (_T_22) begin // @[system.scala 33:21]
      n_reg_3 <= rules_11_io_n_out_3; // @[system.scala 34:7]
    end else if (_T_20) begin // @[system.scala 33:21]
      n_reg_3 <= rules_10_io_n_out_3; // @[system.scala 34:7]
    end else if (_T_18) begin // @[system.scala 33:21]
      n_reg_3 <= rules_9_io_n_out_3; // @[system.scala 34:7]
    end else begin
      n_reg_3 <= _GEN_43;
    end
    if (_T_24) begin // @[system.scala 33:21]
      x_reg <= rules_12_io_x_out; // @[system.scala 35:7]
    end else if (_T_22) begin // @[system.scala 33:21]
      x_reg <= rules_11_io_x_out; // @[system.scala 35:7]
    end else if (_T_20) begin // @[system.scala 33:21]
      x_reg <= rules_10_io_x_out; // @[system.scala 35:7]
    end else if (_T_18) begin // @[system.scala 33:21]
      x_reg <= rules_9_io_x_out; // @[system.scala 35:7]
    end else begin
      x_reg <= _GEN_44;
    end
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
                    assume(reset==1 && io_en_a==0);
                end

                  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_1 == 2'h2) | n_reg_2 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_1 == 2'h2) | n_reg_3 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_2 == 2'h2) | n_reg_1 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_2 == 2'h2) | n_reg_3 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_3 == 2'h2) | n_reg_1 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(~(n_reg_3 == 2'h2) | n_reg_2 != 2'h2); // @[system.scala 49:7]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 49:7]
    end
  end
endmodule
