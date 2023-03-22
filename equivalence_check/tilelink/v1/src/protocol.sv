module Init(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_en_r ? 3'h0 : io_channel1_in_1; // @[router.scala 6:14 node.scala 45:16 router.scala 8:20]
  assign io_channel1_out_2 = io_en_r ? 3'h0 : io_channel1_in_2; // @[router.scala 6:14 node.scala 45:16 router.scala 8:20]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? 3'h0 : io_channel2_4_in_1; // @[router.scala 6:14 node.scala 46:18 router.scala 9:22]
  assign io_channel2_4_out_2 = io_en_r ? 3'h0 : io_channel2_4_in_2; // @[router.scala 6:14 node.scala 46:18 router.scala 9:22]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_en_r ? 3'h0 : io_channel3_in_1; // @[router.scala 6:14 10:20 node.scala 47:16]
  assign io_channel3_out_2 = io_en_r ? 3'h0 : io_channel3_in_2; // @[router.scala 6:14 10:20 node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_en_r ? 1'h0 : io_home_sharer_list_in_1; // @[router.scala 6:14 12:28 node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_en_r ? 1'h0 : io_home_sharer_list_in_2; // @[router.scala 6:14 12:28 node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_en_r ? 1'h0 : io_home_invalidate_list_in_1; // @[router.scala 6:14 13:32 node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_en_r ? 1'h0 : io_home_invalidate_list_in_2; // @[router.scala 6:14 13:32 node.scala 49:28]
  assign io_home_exclusive_granted_out = io_en_r ? 1'h0 : io_home_exclusive_granted_in; // @[router.scala 6:14 17:31 node.scala 50:30]
  assign io_home_current_command_out = io_en_r ? 3'h0 : io_home_current_command_in; // @[router.scala 6:14 16:29 node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_en_r ? 2'h0 : io_cache_in_1; // @[router.scala 6:14 11:17 node.scala 53:13]
  assign io_cache_out_2 = io_en_r ? 2'h0 : io_cache_in_2; // @[router.scala 6:14 11:17 node.scala 53:13]
endmodule
module clientrequestssharedaccess(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_cache_in_1 == 2'h0 & io_channel1_in_1 == 3'h0 ? 3'h1 : io_channel1_in_1; // @[router.scala 22:66 23:21 node.scala 45:16]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_en_r ? _GEN_0 : io_channel1_in_1; // @[router.scala 21:14 node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module clientrequestssharedaccess_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_cache_in_2 == 2'h0 & io_channel1_in_2 == 3'h0 ? 3'h1 : io_channel1_in_2; // @[router.scala 22:66 23:21 node.scala 45:16]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_en_r ? _GEN_0 : io_channel1_in_2; // @[router.scala 21:14 node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module clientrequestsexclusiveaccess(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = (io_cache_in_1 == 2'h0 | io_cache_in_1 == 2'h1) & io_channel1_in_1 == 3'h0 ? 3'h2 :
    io_channel1_in_1; // @[router.scala 29:96 30:21 node.scala 45:16]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_en_r ? _GEN_0 : io_channel1_in_1; // @[router.scala 28:14 node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module clientrequestsexclusiveaccess_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = (io_cache_in_2 == 2'h0 | io_cache_in_2 == 2'h1) & io_channel1_in_2 == 3'h0 ? 3'h2 :
    io_channel1_in_2; // @[router.scala 29:96 30:21 node.scala 45:16]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_en_r ? _GEN_0 : io_channel1_in_2; // @[router.scala 28:14 node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homepicksnewrequest(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_channel1_in_1 :
    io_home_current_command_in; // @[router.scala 36:75 37:29 node.scala 51:28]
  wire [2:0] _GEN_1 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? 3'h0 : io_channel1_in_1; // @[router.scala 36:75 38:21 node.scala 45:16]
  wire [1:0] _GEN_2 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? 2'h1 : io_home_current_client_in; // @[router.scala 36:75 39:28 node.scala 52:27]
  wire  _GEN_3 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_home_sharer_list_in_1 :
    io_home_invalidate_list_in_1; // @[router.scala 36:75 41:32 node.scala 49:28]
  wire  _GEN_4 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_home_sharer_list_in_2 :
    io_home_invalidate_list_in_2; // @[router.scala 36:75 41:32 node.scala 49:28]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_en_r ? _GEN_1 : io_channel1_in_1; // @[router.scala 35:14 node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_3 : io_home_invalidate_list_in_1; // @[router.scala 35:14 node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_en_r ? _GEN_4 : io_home_invalidate_list_in_2; // @[router.scala 35:14 node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_en_r ? _GEN_0 : io_home_current_command_in; // @[router.scala 35:14 node.scala 51:28]
  assign io_home_current_client_out = io_en_r ? _GEN_2 : io_home_current_client_in; // @[router.scala 35:14 node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homepicksnewrequest_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_home_current_command_in == 3'h0 & io_channel1_in_2 != 3'h0 ? io_channel1_in_2 :
    io_home_current_command_in; // @[router.scala 36:75 37:29 node.scala 51:28]
  wire [2:0] _GEN_1 = io_home_current_command_in == 3'h0 & io_channel1_in_2 != 3'h0 ? 3'h0 : io_channel1_in_2; // @[router.scala 36:75 38:21 node.scala 45:16]
  wire [1:0] _GEN_2 = io_home_current_command_in == 3'h0 & io_channel1_in_2 != 3'h0 ? 2'h2 : io_home_current_client_in; // @[router.scala 36:75 39:28 node.scala 52:27]
  wire  _GEN_3 = io_home_current_command_in == 3'h0 & io_channel1_in_2 != 3'h0 ? io_home_sharer_list_in_1 :
    io_home_invalidate_list_in_1; // @[router.scala 36:75 41:32 node.scala 49:28]
  wire  _GEN_4 = io_home_current_command_in == 3'h0 & io_channel1_in_2 != 3'h0 ? io_home_sharer_list_in_2 :
    io_home_invalidate_list_in_2; // @[router.scala 36:75 41:32 node.scala 49:28]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_en_r ? _GEN_1 : io_channel1_in_2; // @[router.scala 35:14 node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_3 : io_home_invalidate_list_in_1; // @[router.scala 35:14 node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_en_r ? _GEN_4 : io_home_invalidate_list_in_2; // @[router.scala 35:14 node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_en_r ? _GEN_0 : io_home_current_command_in; // @[router.scala 35:14 node.scala 51:28]
  assign io_home_current_client_out = io_en_r ? _GEN_2 : io_home_current_client_in; // @[router.scala 35:14 node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homesendsinvalidatemessage(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in
     == 3'h2) & (io_home_invalidate_list_in_1 & io_channel2_4_in_1 == 3'h0) ? 3'h3 : io_channel2_4_in_1; // @[node.scala 46:18 router.scala 49:196 50:23]
  wire  _GEN_1 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in == 3'h2
    ) & (io_home_invalidate_list_in_1 & io_channel2_4_in_1 == 3'h0) ? 1'h0 : io_home_invalidate_list_in_1; // @[router.scala 49:196 node.scala 49:28 router.scala 51:33]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_0 : io_channel2_4_in_1; // @[router.scala 48:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_1 : io_home_invalidate_list_in_1; // @[router.scala 48:14 node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homesendsinvalidatemessage_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in
     == 3'h2) & (io_home_invalidate_list_in_2 & io_channel2_4_in_2 == 3'h0) ? 3'h3 : io_channel2_4_in_2; // @[node.scala 46:18 router.scala 49:196 50:23]
  wire  _GEN_1 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in == 3'h2
    ) & (io_home_invalidate_list_in_2 & io_channel2_4_in_2 == 3'h0) ? 1'h0 : io_home_invalidate_list_in_2; // @[router.scala 49:196 node.scala 49:28 router.scala 51:33]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_0 : io_channel2_4_in_2; // @[router.scala 48:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_en_r ? _GEN_1 : io_home_invalidate_list_in_2; // @[router.scala 48:14 node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homereceivesinvalidateacknowledgement(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire  _GEN_0 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 1'h0 : io_home_sharer_list_in_1; // @[node.scala 48:24 router.scala 57:84 58:29]
  wire  _GEN_1 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 1'h0 : io_home_exclusive_granted_in; // @[node.scala 50:30 router.scala 57:84 59:31]
  wire [2:0] _GEN_2 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 3'h0 : io_channel3_in_1; // @[node.scala 47:16 router.scala 57:84 60:21]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_en_r ? _GEN_2 : io_channel3_in_1; // @[router.scala 56:14 node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_0 : io_home_sharer_list_in_1; // @[router.scala 56:14 node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_en_r ? _GEN_1 : io_home_exclusive_granted_in; // @[router.scala 56:14 node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homereceivesinvalidateacknowledgement_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire  _GEN_0 = io_home_current_command_in != 3'h0 & io_channel3_in_2 == 3'h4 ? 1'h0 : io_home_sharer_list_in_2; // @[node.scala 48:24 router.scala 57:84 58:29]
  wire  _GEN_1 = io_home_current_command_in != 3'h0 & io_channel3_in_2 == 3'h4 ? 1'h0 : io_home_exclusive_granted_in; // @[node.scala 50:30 router.scala 57:84 59:31]
  wire [2:0] _GEN_2 = io_home_current_command_in != 3'h0 & io_channel3_in_2 == 3'h4 ? 3'h0 : io_channel3_in_2; // @[node.scala 47:16 router.scala 57:84 60:21]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_en_r ? _GEN_2 : io_channel3_in_2; // @[router.scala 56:14 node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_en_r ? _GEN_0 : io_home_sharer_list_in_2; // @[router.scala 56:14 node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_en_r ? _GEN_1 : io_home_exclusive_granted_in; // @[router.scala 56:14 node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module sharerinvalidatescache(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 3'h0 : io_channel2_4_in_1; // @[node.scala 46:18 router.scala 66:74 67:23]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 3'h4 : io_channel3_in_1; // @[node.scala 47:16 router.scala 66:74 68:21]
  wire [1:0] _GEN_2 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 2'h0 : io_cache_in_1; // @[node.scala 53:13 router.scala 66:74 69:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_0 : io_channel2_4_in_1; // @[router.scala 65:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_en_r ? _GEN_1 : io_channel3_in_1; // @[router.scala 65:14 node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_en_r ? _GEN_2 : io_cache_in_1; // @[node.scala 53:13 router.scala 65:14]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module sharerinvalidatescache_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_0 = io_channel2_4_in_2 == 3'h3 & io_channel3_in_2 == 3'h0 ? 3'h0 : io_channel2_4_in_2; // @[node.scala 46:18 router.scala 66:74 67:23]
  wire [2:0] _GEN_1 = io_channel2_4_in_2 == 3'h3 & io_channel3_in_2 == 3'h0 ? 3'h4 : io_channel3_in_2; // @[node.scala 47:16 router.scala 66:74 68:21]
  wire [1:0] _GEN_2 = io_channel2_4_in_2 == 3'h3 & io_channel3_in_2 == 3'h0 ? 2'h0 : io_cache_in_2; // @[node.scala 53:13 router.scala 66:74 69:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_0 : io_channel2_4_in_2; // @[router.scala 65:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_en_r ? _GEN_1 : io_channel3_in_2; // @[router.scala 65:14 node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_en_r ? _GEN_2 : io_cache_in_2; // @[node.scala 53:13 router.scala 65:14]
endmodule
module clientreceivessharedgrant(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [1:0] _GEN_0 = io_channel2_4_in_1 == 3'h5 ? 2'h1 : io_cache_in_1; // @[node.scala 53:13 router.scala 75:44 76:18]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h5 ? 3'h0 : io_channel2_4_in_1; // @[node.scala 46:18 router.scala 75:44 77:23]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_1 : io_channel2_4_in_1; // @[router.scala 74:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_en_r ? _GEN_0 : io_cache_in_1; // @[node.scala 53:13 router.scala 74:14]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module clientreceivessharedgrant_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [1:0] _GEN_0 = io_channel2_4_in_2 == 3'h5 ? 2'h1 : io_cache_in_2; // @[node.scala 53:13 router.scala 75:44 76:18]
  wire [2:0] _GEN_1 = io_channel2_4_in_2 == 3'h5 ? 3'h0 : io_channel2_4_in_2; // @[node.scala 46:18 router.scala 75:44 77:23]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_1 : io_channel2_4_in_2; // @[router.scala 74:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_en_r ? _GEN_0 : io_cache_in_2; // @[node.scala 53:13 router.scala 74:14]
endmodule
module clientreceivedexclusivegrant(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [1:0] _GEN_0 = io_channel2_4_in_1 == 3'h6 ? 2'h2 : io_cache_in_1; // @[node.scala 53:13 router.scala 83:47 84:18]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h6 ? 3'h0 : io_channel2_4_in_1; // @[node.scala 46:18 router.scala 83:47 85:23]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_1 : io_channel2_4_in_1; // @[router.scala 82:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_channel2_4_in_2; // @[node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_en_r ? _GEN_0 : io_cache_in_1; // @[node.scala 53:13 router.scala 82:14]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module clientreceivedexclusivegrant_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [1:0] _GEN_0 = io_channel2_4_in_2 == 3'h6 ? 2'h2 : io_cache_in_2; // @[node.scala 53:13 router.scala 83:47 84:18]
  wire [2:0] _GEN_1 = io_channel2_4_in_2 == 3'h6 ? 3'h0 : io_channel2_4_in_2; // @[node.scala 46:18 router.scala 83:47 85:23]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[node.scala 46:18]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_1 : io_channel2_4_in_2; // @[router.scala 82:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_home_sharer_list_in_2; // @[node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_home_current_command_in; // @[node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_en_r ? _GEN_0 : io_cache_in_2; // @[node.scala 53:13 router.scala 82:14]
endmodule
module homesendsreplytoclient_shared(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire [2:0] _GEN_1 = 2'h1 == io_home_current_client_in ? io_channel2_4_in_1 : io_channel2_4_in_0; // @[router.scala 91:{128,128}]
  wire [2:0] _GEN_2 = 2'h2 == io_home_current_client_in ? io_channel2_4_in_2 : _GEN_1; // @[router.scala 91:{128,128}]
  wire  _GEN_3 = 2'h0 == io_home_current_client_in | io_home_sharer_list_in_0; // @[node.scala 48:24 router.scala 92:{52,52}]
  wire  _GEN_4 = 2'h1 == io_home_current_client_in | io_home_sharer_list_in_1; // @[node.scala 48:24 router.scala 92:{52,52}]
  wire  _GEN_5 = 2'h2 == io_home_current_client_in | io_home_sharer_list_in_2; // @[node.scala 48:24 router.scala 92:{52,52}]
  wire [2:0] _GEN_6 = 2'h0 == io_home_current_client_in ? 3'h5 : io_channel2_4_in_0; // @[node.scala 46:18 router.scala 94:{46,46}]
  wire [2:0] _GEN_7 = 2'h1 == io_home_current_client_in ? 3'h5 : io_channel2_4_in_1; // @[node.scala 46:18 router.scala 94:{46,46}]
  wire [2:0] _GEN_8 = 2'h2 == io_home_current_client_in ? 3'h5 : io_channel2_4_in_2; // @[node.scala 46:18 router.scala 94:{46,46}]
  wire  _GEN_9 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_3 :
    io_home_sharer_list_in_0; // @[router.scala 91:140 node.scala 48:24]
  wire  _GEN_10 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_4 :
    io_home_sharer_list_in_1; // @[router.scala 91:140 node.scala 48:24]
  wire  _GEN_11 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_5 :
    io_home_sharer_list_in_2; // @[router.scala 91:140 node.scala 48:24]
  wire [2:0] _GEN_12 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? 3'h0 :
    io_home_current_command_in; // @[router.scala 91:140 node.scala 51:28 router.scala 93:29]
  wire [2:0] _GEN_13 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_6 :
    io_channel2_4_in_0; // @[router.scala 91:140 node.scala 46:18]
  wire [2:0] _GEN_14 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_7 :
    io_channel2_4_in_1; // @[router.scala 91:140 node.scala 46:18]
  wire [2:0] _GEN_15 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_2 == 3'h0) ? _GEN_8 :
    io_channel2_4_in_2; // @[router.scala 91:140 node.scala 46:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_13 : io_channel2_4_in_0; // @[router.scala 90:14 node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_14 : io_channel2_4_in_1; // @[router.scala 90:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_15 : io_channel2_4_in_2; // @[router.scala 90:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_en_r ? _GEN_9 : io_home_sharer_list_in_0; // @[router.scala 90:14 node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_10 : io_home_sharer_list_in_1; // @[router.scala 90:14 node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_en_r ? _GEN_11 : io_home_sharer_list_in_2; // @[router.scala 90:14 node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_en_r ? _GEN_12 : io_home_current_command_in; // @[router.scala 90:14 node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module homesendsreplytoclient_exclusive(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  input  [2:0] io_channel1_in_2,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  input  [2:0] io_channel2_4_in_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  input  [2:0] io_channel3_in_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  input        io_home_sharer_list_in_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  input        io_home_invalidate_list_in_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input  [1:0] io_home_current_client_in,
  output [1:0] io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  input  [1:0] io_cache_in_2,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
  wire  v_0 = ~io_home_sharer_list_in_1; // @[router.scala 100:104]
  wire  _v_1_T = ~io_home_sharer_list_in_2; // @[router.scala 100:104]
  wire  v_1 = v_0 & _v_1_T; // @[node.scala 32:38]
  wire [2:0] _GEN_1 = 2'h1 == io_home_current_client_in ? io_channel2_4_in_1 : io_channel2_4_in_0; // @[router.scala 100:{162,162}]
  wire [2:0] _GEN_2 = 2'h2 == io_home_current_client_in ? io_channel2_4_in_2 : _GEN_1; // @[router.scala 100:{162,162}]
  wire  _GEN_3 = 2'h0 == io_home_current_client_in | io_home_sharer_list_in_0; // @[router.scala 101:{52,52} node.scala 48:24]
  wire  _GEN_4 = 2'h1 == io_home_current_client_in | io_home_sharer_list_in_1; // @[router.scala 101:{52,52} node.scala 48:24]
  wire  _GEN_5 = 2'h2 == io_home_current_client_in | io_home_sharer_list_in_2; // @[router.scala 101:{52,52} node.scala 48:24]
  wire [2:0] _GEN_6 = 2'h0 == io_home_current_client_in ? 3'h6 : io_channel2_4_in_0; // @[router.scala 103:{46,46} node.scala 46:18]
  wire [2:0] _GEN_7 = 2'h1 == io_home_current_client_in ? 3'h6 : io_channel2_4_in_1; // @[router.scala 103:{46,46} node.scala 46:18]
  wire [2:0] _GEN_8 = 2'h2 == io_home_current_client_in ? 3'h6 : io_channel2_4_in_2; // @[router.scala 103:{46,46} node.scala 46:18]
  wire  _GEN_9 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_3 : io_home_sharer_list_in_0; // @[router.scala 100:174 node.scala 48:24]
  wire  _GEN_10 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_4 : io_home_sharer_list_in_1; // @[router.scala 100:174 node.scala 48:24]
  wire  _GEN_11 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_5 : io_home_sharer_list_in_2; // @[router.scala 100:174 node.scala 48:24]
  wire [2:0] _GEN_12 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? 3'h0 : io_home_current_command_in; // @[router.scala 100:174 102:29 node.scala 51:28]
  wire [2:0] _GEN_13 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_6 : io_channel2_4_in_0; // @[router.scala 100:174 node.scala 46:18]
  wire [2:0] _GEN_14 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_7 : io_channel2_4_in_1; // @[router.scala 100:174 node.scala 46:18]
  wire [2:0] _GEN_15 = io_home_current_command_in == 3'h2 & (v_1 & _GEN_2 == 3'h0) ? _GEN_8 : io_channel2_4_in_2; // @[router.scala 100:174 node.scala 46:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[node.scala 45:16]
  assign io_channel1_out_1 = io_channel1_in_1; // @[node.scala 45:16]
  assign io_channel1_out_2 = io_channel1_in_2; // @[node.scala 45:16]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_13 : io_channel2_4_in_0; // @[router.scala 99:14 node.scala 46:18]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_14 : io_channel2_4_in_1; // @[router.scala 99:14 node.scala 46:18]
  assign io_channel2_4_out_2 = io_en_r ? _GEN_15 : io_channel2_4_in_2; // @[router.scala 99:14 node.scala 46:18]
  assign io_channel3_out_0 = io_channel3_in_0; // @[node.scala 47:16]
  assign io_channel3_out_1 = io_channel3_in_1; // @[node.scala 47:16]
  assign io_channel3_out_2 = io_channel3_in_2; // @[node.scala 47:16]
  assign io_home_sharer_list_out_0 = io_en_r ? _GEN_9 : io_home_sharer_list_in_0; // @[router.scala 99:14 node.scala 48:24]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_10 : io_home_sharer_list_in_1; // @[router.scala 99:14 node.scala 48:24]
  assign io_home_sharer_list_out_2 = io_en_r ? _GEN_11 : io_home_sharer_list_in_2; // @[router.scala 99:14 node.scala 48:24]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[node.scala 49:28]
  assign io_home_invalidate_list_out_2 = io_home_invalidate_list_in_2; // @[node.scala 49:28]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[node.scala 50:30]
  assign io_home_current_command_out = io_en_r ? _GEN_12 : io_home_current_command_in; // @[router.scala 99:14 node.scala 51:28]
  assign io_home_current_client_out = io_home_current_client_in; // @[node.scala 52:27]
  assign io_cache_out_0 = io_cache_in_0; // @[node.scala 53:13]
  assign io_cache_out_1 = io_cache_in_1; // @[node.scala 53:13]
  assign io_cache_out_2 = io_cache_in_2; // @[node.scala 53:13]
endmodule
module system(
  input        clock,
  input        reset,
  input  [4:0] io_en_a,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel1_out_2,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel2_4_out_2,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output [2:0] io_channel3_out_2,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_sharer_list_out_2,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_invalidate_list_out_2,
  output       io_home_exclusive_granted_out,
  output [2:0] io_home_current_command_out,
  output [1:0] io_home_current_client_out,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1,
  output [1:0] io_cache_out_2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_in_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_in_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_in_2; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_out_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_out_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel1_out_2; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_in_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_in_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_in_2; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_out_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_out_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel2_4_out_2; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_in_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_in_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_in_2; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_out_0; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_out_1; // @[system.scala 38:16]
  wire [2:0] rules_0_io_channel3_out_2; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_in_0; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_in_1; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_in_2; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_out_0; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_out_1; // @[system.scala 38:16]
  wire  rules_0_io_home_sharer_list_out_2; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_in_0; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_in_1; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_in_2; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_out_0; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_out_1; // @[system.scala 38:16]
  wire  rules_0_io_home_invalidate_list_out_2; // @[system.scala 38:16]
  wire  rules_0_io_home_exclusive_granted_in; // @[system.scala 38:16]
  wire  rules_0_io_home_exclusive_granted_out; // @[system.scala 38:16]
  wire [2:0] rules_0_io_home_current_command_in; // @[system.scala 38:16]
  wire [2:0] rules_0_io_home_current_command_out; // @[system.scala 38:16]
  wire [1:0] rules_0_io_home_current_client_in; // @[system.scala 38:16]
  wire [1:0] rules_0_io_home_current_client_out; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_in_0; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_in_1; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_in_2; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_out_0; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_out_1; // @[system.scala 38:16]
  wire [1:0] rules_0_io_cache_out_2; // @[system.scala 38:16]
  wire  rules_1_io_en_r; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_in_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_in_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_in_2; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_out_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_out_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel1_out_2; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_in_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_in_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_in_2; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_out_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_out_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel2_4_out_2; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_in_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_in_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_in_2; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_out_0; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_out_1; // @[system.scala 40:16]
  wire [2:0] rules_1_io_channel3_out_2; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_in_0; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_in_1; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_in_2; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_out_0; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_out_1; // @[system.scala 40:16]
  wire  rules_1_io_home_sharer_list_out_2; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_in_0; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_in_1; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_in_2; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_out_0; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_out_1; // @[system.scala 40:16]
  wire  rules_1_io_home_invalidate_list_out_2; // @[system.scala 40:16]
  wire  rules_1_io_home_exclusive_granted_in; // @[system.scala 40:16]
  wire  rules_1_io_home_exclusive_granted_out; // @[system.scala 40:16]
  wire [2:0] rules_1_io_home_current_command_in; // @[system.scala 40:16]
  wire [2:0] rules_1_io_home_current_command_out; // @[system.scala 40:16]
  wire [1:0] rules_1_io_home_current_client_in; // @[system.scala 40:16]
  wire [1:0] rules_1_io_home_current_client_out; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_in_0; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_in_1; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_in_2; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_out_0; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_out_1; // @[system.scala 40:16]
  wire [1:0] rules_1_io_cache_out_2; // @[system.scala 40:16]
  wire  rules_2_io_en_r; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_in_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_in_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_in_2; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_out_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_out_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel1_out_2; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_in_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_in_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_in_2; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_out_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_out_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel2_4_out_2; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_in_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_in_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_in_2; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_out_0; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_out_1; // @[system.scala 40:16]
  wire [2:0] rules_2_io_channel3_out_2; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_in_0; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_in_1; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_in_2; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_out_0; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_out_1; // @[system.scala 40:16]
  wire  rules_2_io_home_sharer_list_out_2; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_in_0; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_in_1; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_in_2; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_out_0; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_out_1; // @[system.scala 40:16]
  wire  rules_2_io_home_invalidate_list_out_2; // @[system.scala 40:16]
  wire  rules_2_io_home_exclusive_granted_in; // @[system.scala 40:16]
  wire  rules_2_io_home_exclusive_granted_out; // @[system.scala 40:16]
  wire [2:0] rules_2_io_home_current_command_in; // @[system.scala 40:16]
  wire [2:0] rules_2_io_home_current_command_out; // @[system.scala 40:16]
  wire [1:0] rules_2_io_home_current_client_in; // @[system.scala 40:16]
  wire [1:0] rules_2_io_home_current_client_out; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_in_0; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_in_1; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_in_2; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_out_0; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_out_1; // @[system.scala 40:16]
  wire [1:0] rules_2_io_cache_out_2; // @[system.scala 40:16]
  wire  rules_3_io_en_r; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_in_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_in_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_in_2; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_out_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_out_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel1_out_2; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_in_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_in_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_in_2; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_out_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_out_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel2_4_out_2; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_in_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_in_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_in_2; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_out_0; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_out_1; // @[system.scala 43:16]
  wire [2:0] rules_3_io_channel3_out_2; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_in_0; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_in_1; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_in_2; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_out_0; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_out_1; // @[system.scala 43:16]
  wire  rules_3_io_home_sharer_list_out_2; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_in_0; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_in_1; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_in_2; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_out_0; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_out_1; // @[system.scala 43:16]
  wire  rules_3_io_home_invalidate_list_out_2; // @[system.scala 43:16]
  wire  rules_3_io_home_exclusive_granted_in; // @[system.scala 43:16]
  wire  rules_3_io_home_exclusive_granted_out; // @[system.scala 43:16]
  wire [2:0] rules_3_io_home_current_command_in; // @[system.scala 43:16]
  wire [2:0] rules_3_io_home_current_command_out; // @[system.scala 43:16]
  wire [1:0] rules_3_io_home_current_client_in; // @[system.scala 43:16]
  wire [1:0] rules_3_io_home_current_client_out; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_in_0; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_in_1; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_in_2; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_out_0; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_out_1; // @[system.scala 43:16]
  wire [1:0] rules_3_io_cache_out_2; // @[system.scala 43:16]
  wire  rules_4_io_en_r; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_in_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_in_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_in_2; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_out_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_out_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel1_out_2; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_in_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_in_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_in_2; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_out_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_out_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel2_4_out_2; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_in_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_in_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_in_2; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_out_0; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_out_1; // @[system.scala 43:16]
  wire [2:0] rules_4_io_channel3_out_2; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_in_0; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_in_1; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_in_2; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_out_0; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_out_1; // @[system.scala 43:16]
  wire  rules_4_io_home_sharer_list_out_2; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_in_0; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_in_1; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_in_2; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_out_0; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_out_1; // @[system.scala 43:16]
  wire  rules_4_io_home_invalidate_list_out_2; // @[system.scala 43:16]
  wire  rules_4_io_home_exclusive_granted_in; // @[system.scala 43:16]
  wire  rules_4_io_home_exclusive_granted_out; // @[system.scala 43:16]
  wire [2:0] rules_4_io_home_current_command_in; // @[system.scala 43:16]
  wire [2:0] rules_4_io_home_current_command_out; // @[system.scala 43:16]
  wire [1:0] rules_4_io_home_current_client_in; // @[system.scala 43:16]
  wire [1:0] rules_4_io_home_current_client_out; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_in_0; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_in_1; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_in_2; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_out_0; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_out_1; // @[system.scala 43:16]
  wire [1:0] rules_4_io_cache_out_2; // @[system.scala 43:16]
  wire  rules_5_io_en_r; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_in_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_in_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_in_2; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_out_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_out_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel1_out_2; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_in_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_in_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_in_2; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_out_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_out_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel2_4_out_2; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_in_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_in_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_in_2; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_out_0; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_out_1; // @[system.scala 46:16]
  wire [2:0] rules_5_io_channel3_out_2; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_in_0; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_in_1; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_in_2; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_out_0; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_out_1; // @[system.scala 46:16]
  wire  rules_5_io_home_sharer_list_out_2; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_in_0; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_in_1; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_in_2; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_out_0; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_out_1; // @[system.scala 46:16]
  wire  rules_5_io_home_invalidate_list_out_2; // @[system.scala 46:16]
  wire  rules_5_io_home_exclusive_granted_in; // @[system.scala 46:16]
  wire  rules_5_io_home_exclusive_granted_out; // @[system.scala 46:16]
  wire [2:0] rules_5_io_home_current_command_in; // @[system.scala 46:16]
  wire [2:0] rules_5_io_home_current_command_out; // @[system.scala 46:16]
  wire [1:0] rules_5_io_home_current_client_in; // @[system.scala 46:16]
  wire [1:0] rules_5_io_home_current_client_out; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_in_0; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_in_1; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_in_2; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_out_0; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_out_1; // @[system.scala 46:16]
  wire [1:0] rules_5_io_cache_out_2; // @[system.scala 46:16]
  wire  rules_6_io_en_r; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_in_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_in_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_in_2; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_out_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_out_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel1_out_2; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_in_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_in_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_in_2; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_out_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_out_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel2_4_out_2; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_in_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_in_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_in_2; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_out_0; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_out_1; // @[system.scala 46:16]
  wire [2:0] rules_6_io_channel3_out_2; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_in_0; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_in_1; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_in_2; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_out_0; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_out_1; // @[system.scala 46:16]
  wire  rules_6_io_home_sharer_list_out_2; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_in_0; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_in_1; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_in_2; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_out_0; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_out_1; // @[system.scala 46:16]
  wire  rules_6_io_home_invalidate_list_out_2; // @[system.scala 46:16]
  wire  rules_6_io_home_exclusive_granted_in; // @[system.scala 46:16]
  wire  rules_6_io_home_exclusive_granted_out; // @[system.scala 46:16]
  wire [2:0] rules_6_io_home_current_command_in; // @[system.scala 46:16]
  wire [2:0] rules_6_io_home_current_command_out; // @[system.scala 46:16]
  wire [1:0] rules_6_io_home_current_client_in; // @[system.scala 46:16]
  wire [1:0] rules_6_io_home_current_client_out; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_in_0; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_in_1; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_in_2; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_out_0; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_out_1; // @[system.scala 46:16]
  wire [1:0] rules_6_io_cache_out_2; // @[system.scala 46:16]
  wire  rules_7_io_en_r; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_in_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_in_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_in_2; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_out_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_out_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel1_out_2; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_in_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_in_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_in_2; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_out_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_out_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel2_4_out_2; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_in_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_in_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_in_2; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_out_0; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_out_1; // @[system.scala 49:16]
  wire [2:0] rules_7_io_channel3_out_2; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_in_0; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_in_1; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_in_2; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_out_0; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_out_1; // @[system.scala 49:16]
  wire  rules_7_io_home_sharer_list_out_2; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_in_0; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_in_1; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_in_2; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_out_0; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_out_1; // @[system.scala 49:16]
  wire  rules_7_io_home_invalidate_list_out_2; // @[system.scala 49:16]
  wire  rules_7_io_home_exclusive_granted_in; // @[system.scala 49:16]
  wire  rules_7_io_home_exclusive_granted_out; // @[system.scala 49:16]
  wire [2:0] rules_7_io_home_current_command_in; // @[system.scala 49:16]
  wire [2:0] rules_7_io_home_current_command_out; // @[system.scala 49:16]
  wire [1:0] rules_7_io_home_current_client_in; // @[system.scala 49:16]
  wire [1:0] rules_7_io_home_current_client_out; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_in_0; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_in_1; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_in_2; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_out_0; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_out_1; // @[system.scala 49:16]
  wire [1:0] rules_7_io_cache_out_2; // @[system.scala 49:16]
  wire  rules_8_io_en_r; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_in_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_in_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_in_2; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_out_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_out_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel1_out_2; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_in_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_in_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_in_2; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_out_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_out_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel2_4_out_2; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_in_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_in_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_in_2; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_out_0; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_out_1; // @[system.scala 49:16]
  wire [2:0] rules_8_io_channel3_out_2; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_in_0; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_in_1; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_in_2; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_out_0; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_out_1; // @[system.scala 49:16]
  wire  rules_8_io_home_sharer_list_out_2; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_in_0; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_in_1; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_in_2; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_out_0; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_out_1; // @[system.scala 49:16]
  wire  rules_8_io_home_invalidate_list_out_2; // @[system.scala 49:16]
  wire  rules_8_io_home_exclusive_granted_in; // @[system.scala 49:16]
  wire  rules_8_io_home_exclusive_granted_out; // @[system.scala 49:16]
  wire [2:0] rules_8_io_home_current_command_in; // @[system.scala 49:16]
  wire [2:0] rules_8_io_home_current_command_out; // @[system.scala 49:16]
  wire [1:0] rules_8_io_home_current_client_in; // @[system.scala 49:16]
  wire [1:0] rules_8_io_home_current_client_out; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_in_0; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_in_1; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_in_2; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_out_0; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_out_1; // @[system.scala 49:16]
  wire [1:0] rules_8_io_cache_out_2; // @[system.scala 49:16]
  wire  rules_9_io_en_r; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_in_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_in_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_in_2; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_out_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_out_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel1_out_2; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_in_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_in_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_in_2; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_out_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_out_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel2_4_out_2; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_in_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_in_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_in_2; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_out_0; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_out_1; // @[system.scala 52:16]
  wire [2:0] rules_9_io_channel3_out_2; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_in_0; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_in_1; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_in_2; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_out_0; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_out_1; // @[system.scala 52:16]
  wire  rules_9_io_home_sharer_list_out_2; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_in_0; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_in_1; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_in_2; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_out_0; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_out_1; // @[system.scala 52:16]
  wire  rules_9_io_home_invalidate_list_out_2; // @[system.scala 52:16]
  wire  rules_9_io_home_exclusive_granted_in; // @[system.scala 52:16]
  wire  rules_9_io_home_exclusive_granted_out; // @[system.scala 52:16]
  wire [2:0] rules_9_io_home_current_command_in; // @[system.scala 52:16]
  wire [2:0] rules_9_io_home_current_command_out; // @[system.scala 52:16]
  wire [1:0] rules_9_io_home_current_client_in; // @[system.scala 52:16]
  wire [1:0] rules_9_io_home_current_client_out; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_in_0; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_in_1; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_in_2; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_out_0; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_out_1; // @[system.scala 52:16]
  wire [1:0] rules_9_io_cache_out_2; // @[system.scala 52:16]
  wire  rules_10_io_en_r; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_in_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_in_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_in_2; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_out_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_out_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel1_out_2; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_in_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_in_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_in_2; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_out_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_out_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel2_4_out_2; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_in_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_in_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_in_2; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_out_0; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_out_1; // @[system.scala 52:16]
  wire [2:0] rules_10_io_channel3_out_2; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_in_0; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_in_1; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_in_2; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_out_0; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_out_1; // @[system.scala 52:16]
  wire  rules_10_io_home_sharer_list_out_2; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_in_0; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_in_1; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_in_2; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_out_0; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_out_1; // @[system.scala 52:16]
  wire  rules_10_io_home_invalidate_list_out_2; // @[system.scala 52:16]
  wire  rules_10_io_home_exclusive_granted_in; // @[system.scala 52:16]
  wire  rules_10_io_home_exclusive_granted_out; // @[system.scala 52:16]
  wire [2:0] rules_10_io_home_current_command_in; // @[system.scala 52:16]
  wire [2:0] rules_10_io_home_current_command_out; // @[system.scala 52:16]
  wire [1:0] rules_10_io_home_current_client_in; // @[system.scala 52:16]
  wire [1:0] rules_10_io_home_current_client_out; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_in_0; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_in_1; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_in_2; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_out_0; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_out_1; // @[system.scala 52:16]
  wire [1:0] rules_10_io_cache_out_2; // @[system.scala 52:16]
  wire  rules_11_io_en_r; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_in_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_in_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_in_2; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_out_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_out_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel1_out_2; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_in_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_in_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_in_2; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_out_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_out_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel2_4_out_2; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_in_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_in_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_in_2; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_out_0; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_out_1; // @[system.scala 55:16]
  wire [2:0] rules_11_io_channel3_out_2; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_in_0; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_in_1; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_in_2; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_out_0; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_out_1; // @[system.scala 55:16]
  wire  rules_11_io_home_sharer_list_out_2; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_in_0; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_in_1; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_in_2; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_out_0; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_out_1; // @[system.scala 55:16]
  wire  rules_11_io_home_invalidate_list_out_2; // @[system.scala 55:16]
  wire  rules_11_io_home_exclusive_granted_in; // @[system.scala 55:16]
  wire  rules_11_io_home_exclusive_granted_out; // @[system.scala 55:16]
  wire [2:0] rules_11_io_home_current_command_in; // @[system.scala 55:16]
  wire [2:0] rules_11_io_home_current_command_out; // @[system.scala 55:16]
  wire [1:0] rules_11_io_home_current_client_in; // @[system.scala 55:16]
  wire [1:0] rules_11_io_home_current_client_out; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_in_0; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_in_1; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_in_2; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_out_0; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_out_1; // @[system.scala 55:16]
  wire [1:0] rules_11_io_cache_out_2; // @[system.scala 55:16]
  wire  rules_12_io_en_r; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_in_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_in_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_in_2; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_out_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_out_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel1_out_2; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_in_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_in_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_in_2; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_out_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_out_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel2_4_out_2; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_in_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_in_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_in_2; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_out_0; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_out_1; // @[system.scala 55:16]
  wire [2:0] rules_12_io_channel3_out_2; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_in_0; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_in_1; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_in_2; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_out_0; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_out_1; // @[system.scala 55:16]
  wire  rules_12_io_home_sharer_list_out_2; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_in_0; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_in_1; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_in_2; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_out_0; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_out_1; // @[system.scala 55:16]
  wire  rules_12_io_home_invalidate_list_out_2; // @[system.scala 55:16]
  wire  rules_12_io_home_exclusive_granted_in; // @[system.scala 55:16]
  wire  rules_12_io_home_exclusive_granted_out; // @[system.scala 55:16]
  wire [2:0] rules_12_io_home_current_command_in; // @[system.scala 55:16]
  wire [2:0] rules_12_io_home_current_command_out; // @[system.scala 55:16]
  wire [1:0] rules_12_io_home_current_client_in; // @[system.scala 55:16]
  wire [1:0] rules_12_io_home_current_client_out; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_in_0; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_in_1; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_in_2; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_out_0; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_out_1; // @[system.scala 55:16]
  wire [1:0] rules_12_io_cache_out_2; // @[system.scala 55:16]
  wire  rules_13_io_en_r; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_in_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_in_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_in_2; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_out_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_out_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel1_out_2; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_in_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_in_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_in_2; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_out_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_out_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel2_4_out_2; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_in_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_in_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_in_2; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_out_0; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_out_1; // @[system.scala 58:16]
  wire [2:0] rules_13_io_channel3_out_2; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_in_0; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_in_1; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_in_2; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_out_0; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_out_1; // @[system.scala 58:16]
  wire  rules_13_io_home_sharer_list_out_2; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_in_0; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_in_1; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_in_2; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_out_0; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_out_1; // @[system.scala 58:16]
  wire  rules_13_io_home_invalidate_list_out_2; // @[system.scala 58:16]
  wire  rules_13_io_home_exclusive_granted_in; // @[system.scala 58:16]
  wire  rules_13_io_home_exclusive_granted_out; // @[system.scala 58:16]
  wire [2:0] rules_13_io_home_current_command_in; // @[system.scala 58:16]
  wire [2:0] rules_13_io_home_current_command_out; // @[system.scala 58:16]
  wire [1:0] rules_13_io_home_current_client_in; // @[system.scala 58:16]
  wire [1:0] rules_13_io_home_current_client_out; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_in_0; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_in_1; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_in_2; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_out_0; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_out_1; // @[system.scala 58:16]
  wire [1:0] rules_13_io_cache_out_2; // @[system.scala 58:16]
  wire  rules_14_io_en_r; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_in_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_in_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_in_2; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_out_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_out_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel1_out_2; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_in_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_in_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_in_2; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_out_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_out_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel2_4_out_2; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_in_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_in_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_in_2; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_out_0; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_out_1; // @[system.scala 58:16]
  wire [2:0] rules_14_io_channel3_out_2; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_in_0; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_in_1; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_in_2; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_out_0; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_out_1; // @[system.scala 58:16]
  wire  rules_14_io_home_sharer_list_out_2; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_in_0; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_in_1; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_in_2; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_out_0; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_out_1; // @[system.scala 58:16]
  wire  rules_14_io_home_invalidate_list_out_2; // @[system.scala 58:16]
  wire  rules_14_io_home_exclusive_granted_in; // @[system.scala 58:16]
  wire  rules_14_io_home_exclusive_granted_out; // @[system.scala 58:16]
  wire [2:0] rules_14_io_home_current_command_in; // @[system.scala 58:16]
  wire [2:0] rules_14_io_home_current_command_out; // @[system.scala 58:16]
  wire [1:0] rules_14_io_home_current_client_in; // @[system.scala 58:16]
  wire [1:0] rules_14_io_home_current_client_out; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_in_0; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_in_1; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_in_2; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_out_0; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_out_1; // @[system.scala 58:16]
  wire [1:0] rules_14_io_cache_out_2; // @[system.scala 58:16]
  wire  rules_15_io_en_r; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_in_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_in_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_in_2; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_out_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_out_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel1_out_2; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_in_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_in_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_in_2; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_out_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_out_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel2_4_out_2; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_in_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_in_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_in_2; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_out_0; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_out_1; // @[system.scala 61:16]
  wire [2:0] rules_15_io_channel3_out_2; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_in_0; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_in_1; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_in_2; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_out_0; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_out_1; // @[system.scala 61:16]
  wire  rules_15_io_home_sharer_list_out_2; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_in_0; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_in_1; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_in_2; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_out_0; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_out_1; // @[system.scala 61:16]
  wire  rules_15_io_home_invalidate_list_out_2; // @[system.scala 61:16]
  wire  rules_15_io_home_exclusive_granted_in; // @[system.scala 61:16]
  wire  rules_15_io_home_exclusive_granted_out; // @[system.scala 61:16]
  wire [2:0] rules_15_io_home_current_command_in; // @[system.scala 61:16]
  wire [2:0] rules_15_io_home_current_command_out; // @[system.scala 61:16]
  wire [1:0] rules_15_io_home_current_client_in; // @[system.scala 61:16]
  wire [1:0] rules_15_io_home_current_client_out; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_in_0; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_in_1; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_in_2; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_out_0; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_out_1; // @[system.scala 61:16]
  wire [1:0] rules_15_io_cache_out_2; // @[system.scala 61:16]
  wire  rules_16_io_en_r; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_in_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_in_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_in_2; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_out_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_out_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel1_out_2; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_in_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_in_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_in_2; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_out_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_out_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel2_4_out_2; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_in_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_in_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_in_2; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_out_0; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_out_1; // @[system.scala 61:16]
  wire [2:0] rules_16_io_channel3_out_2; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_in_0; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_in_1; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_in_2; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_out_0; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_out_1; // @[system.scala 61:16]
  wire  rules_16_io_home_sharer_list_out_2; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_in_0; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_in_1; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_in_2; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_out_0; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_out_1; // @[system.scala 61:16]
  wire  rules_16_io_home_invalidate_list_out_2; // @[system.scala 61:16]
  wire  rules_16_io_home_exclusive_granted_in; // @[system.scala 61:16]
  wire  rules_16_io_home_exclusive_granted_out; // @[system.scala 61:16]
  wire [2:0] rules_16_io_home_current_command_in; // @[system.scala 61:16]
  wire [2:0] rules_16_io_home_current_command_out; // @[system.scala 61:16]
  wire [1:0] rules_16_io_home_current_client_in; // @[system.scala 61:16]
  wire [1:0] rules_16_io_home_current_client_out; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_in_0; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_in_1; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_in_2; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_out_0; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_out_1; // @[system.scala 61:16]
  wire [1:0] rules_16_io_cache_out_2; // @[system.scala 61:16]
  wire  rules_17_io_en_r; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_in_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_in_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_in_2; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_out_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_out_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel1_out_2; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_in_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_in_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_in_2; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_out_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_out_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel2_4_out_2; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_in_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_in_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_in_2; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_out_0; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_out_1; // @[system.scala 63:16]
  wire [2:0] rules_17_io_channel3_out_2; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_in_0; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_in_1; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_in_2; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_out_0; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_out_1; // @[system.scala 63:16]
  wire  rules_17_io_home_sharer_list_out_2; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_in_0; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_in_1; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_in_2; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_out_0; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_out_1; // @[system.scala 63:16]
  wire  rules_17_io_home_invalidate_list_out_2; // @[system.scala 63:16]
  wire  rules_17_io_home_exclusive_granted_in; // @[system.scala 63:16]
  wire  rules_17_io_home_exclusive_granted_out; // @[system.scala 63:16]
  wire [2:0] rules_17_io_home_current_command_in; // @[system.scala 63:16]
  wire [2:0] rules_17_io_home_current_command_out; // @[system.scala 63:16]
  wire [1:0] rules_17_io_home_current_client_in; // @[system.scala 63:16]
  wire [1:0] rules_17_io_home_current_client_out; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_in_0; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_in_1; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_in_2; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_out_0; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_out_1; // @[system.scala 63:16]
  wire [1:0] rules_17_io_cache_out_2; // @[system.scala 63:16]
  wire  rules_18_io_en_r; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_in_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_in_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_in_2; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_out_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_out_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel1_out_2; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_in_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_in_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_in_2; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_out_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_out_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel2_4_out_2; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_in_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_in_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_in_2; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_out_0; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_out_1; // @[system.scala 64:16]
  wire [2:0] rules_18_io_channel3_out_2; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_in_0; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_in_1; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_in_2; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_out_0; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_out_1; // @[system.scala 64:16]
  wire  rules_18_io_home_sharer_list_out_2; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_in_0; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_in_1; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_in_2; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_out_0; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_out_1; // @[system.scala 64:16]
  wire  rules_18_io_home_invalidate_list_out_2; // @[system.scala 64:16]
  wire  rules_18_io_home_exclusive_granted_in; // @[system.scala 64:16]
  wire  rules_18_io_home_exclusive_granted_out; // @[system.scala 64:16]
  wire [2:0] rules_18_io_home_current_command_in; // @[system.scala 64:16]
  wire [2:0] rules_18_io_home_current_command_out; // @[system.scala 64:16]
  wire [1:0] rules_18_io_home_current_client_in; // @[system.scala 64:16]
  wire [1:0] rules_18_io_home_current_client_out; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_in_0; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_in_1; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_in_2; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_out_0; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_out_1; // @[system.scala 64:16]
  wire [1:0] rules_18_io_cache_out_2; // @[system.scala 64:16]
  reg [2:0] channel1_reg_0; // @[system.scala 20:23]
  reg [2:0] channel1_reg_1; // @[system.scala 20:23]
  reg [2:0] channel1_reg_2; // @[system.scala 20:23]
  reg [2:0] channel2_4_reg_0; // @[system.scala 22:25]
  reg [2:0] channel2_4_reg_1; // @[system.scala 22:25]
  reg [2:0] channel2_4_reg_2; // @[system.scala 22:25]
  reg [2:0] channel3_reg_0; // @[system.scala 24:23]
  reg [2:0] channel3_reg_1; // @[system.scala 24:23]
  reg [2:0] channel3_reg_2; // @[system.scala 24:23]
  reg  home_sharer_list_reg_0; // @[system.scala 26:31]
  reg  home_sharer_list_reg_1; // @[system.scala 26:31]
  reg  home_sharer_list_reg_2; // @[system.scala 26:31]
  reg  home_invalidate_list_reg_0; // @[system.scala 28:35]
  reg  home_invalidate_list_reg_1; // @[system.scala 28:35]
  reg  home_invalidate_list_reg_2; // @[system.scala 28:35]
  reg  home_exclusive_granted_reg; // @[system.scala 30:37]
  reg [2:0] home_current_command_reg; // @[system.scala 32:35]
  reg [1:0] home_current_client_reg; // @[system.scala 34:34]
  reg [1:0] cache_reg_0; // @[system.scala 36:20]
  reg [1:0] cache_reg_1; // @[system.scala 36:20]
  reg [1:0] cache_reg_2; // @[system.scala 36:20]
  wire  _T = io_en_a == 5'h0; // @[system.scala 75:27]
  wire [2:0] _GEN_0 = _T ? rules_0_io_channel1_out_0 : channel1_reg_0; // @[system.scala 76:21 77:14 20:23]
  wire [2:0] _GEN_1 = _T ? rules_0_io_channel1_out_1 : channel1_reg_1; // @[system.scala 76:21 77:14 20:23]
  wire [2:0] _GEN_2 = _T ? rules_0_io_channel1_out_2 : channel1_reg_2; // @[system.scala 76:21 77:14 20:23]
  wire [2:0] _GEN_3 = _T ? rules_0_io_channel2_4_out_0 : channel2_4_reg_0; // @[system.scala 76:21 78:16 22:25]
  wire [2:0] _GEN_4 = _T ? rules_0_io_channel2_4_out_1 : channel2_4_reg_1; // @[system.scala 76:21 78:16 22:25]
  wire [2:0] _GEN_5 = _T ? rules_0_io_channel2_4_out_2 : channel2_4_reg_2; // @[system.scala 76:21 78:16 22:25]
  wire [2:0] _GEN_6 = _T ? rules_0_io_channel3_out_0 : channel3_reg_0; // @[system.scala 76:21 79:14 24:23]
  wire [2:0] _GEN_7 = _T ? rules_0_io_channel3_out_1 : channel3_reg_1; // @[system.scala 76:21 79:14 24:23]
  wire [2:0] _GEN_8 = _T ? rules_0_io_channel3_out_2 : channel3_reg_2; // @[system.scala 76:21 79:14 24:23]
  wire  _GEN_9 = _T ? rules_0_io_home_sharer_list_out_0 : home_sharer_list_reg_0; // @[system.scala 76:21 80:22 26:31]
  wire  _GEN_10 = _T ? rules_0_io_home_sharer_list_out_1 : home_sharer_list_reg_1; // @[system.scala 76:21 80:22 26:31]
  wire  _GEN_11 = _T ? rules_0_io_home_sharer_list_out_2 : home_sharer_list_reg_2; // @[system.scala 76:21 80:22 26:31]
  wire  _GEN_12 = _T ? rules_0_io_home_invalidate_list_out_0 : home_invalidate_list_reg_0; // @[system.scala 76:21 81:26 28:35]
  wire  _GEN_13 = _T ? rules_0_io_home_invalidate_list_out_1 : home_invalidate_list_reg_1; // @[system.scala 76:21 81:26 28:35]
  wire  _GEN_14 = _T ? rules_0_io_home_invalidate_list_out_2 : home_invalidate_list_reg_2; // @[system.scala 76:21 81:26 28:35]
  wire  _GEN_15 = _T ? rules_0_io_home_exclusive_granted_out : home_exclusive_granted_reg; // @[system.scala 76:21 82:28 30:37]
  wire [2:0] _GEN_16 = _T ? rules_0_io_home_current_command_out : home_current_command_reg; // @[system.scala 76:21 83:26 32:35]
  wire [1:0] _GEN_17 = _T ? rules_0_io_home_current_client_out : home_current_client_reg; // @[system.scala 76:21 84:25 34:34]
  wire [1:0] _GEN_18 = _T ? rules_0_io_cache_out_0 : cache_reg_0; // @[system.scala 76:21 85:11 36:20]
  wire [1:0] _GEN_19 = _T ? rules_0_io_cache_out_1 : cache_reg_1; // @[system.scala 76:21 85:11 36:20]
  wire [1:0] _GEN_20 = _T ? rules_0_io_cache_out_2 : cache_reg_2; // @[system.scala 76:21 85:11 36:20]
  wire  _T_2 = io_en_a == 5'h1; // @[system.scala 75:27]
  wire [2:0] _GEN_21 = _T_2 ? rules_1_io_channel1_out_0 : _GEN_0; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_22 = _T_2 ? rules_1_io_channel1_out_1 : _GEN_1; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_23 = _T_2 ? rules_1_io_channel1_out_2 : _GEN_2; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_24 = _T_2 ? rules_1_io_channel2_4_out_0 : _GEN_3; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_25 = _T_2 ? rules_1_io_channel2_4_out_1 : _GEN_4; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_26 = _T_2 ? rules_1_io_channel2_4_out_2 : _GEN_5; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_27 = _T_2 ? rules_1_io_channel3_out_0 : _GEN_6; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_28 = _T_2 ? rules_1_io_channel3_out_1 : _GEN_7; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_29 = _T_2 ? rules_1_io_channel3_out_2 : _GEN_8; // @[system.scala 76:21 79:14]
  wire  _GEN_30 = _T_2 ? rules_1_io_home_sharer_list_out_0 : _GEN_9; // @[system.scala 76:21 80:22]
  wire  _GEN_31 = _T_2 ? rules_1_io_home_sharer_list_out_1 : _GEN_10; // @[system.scala 76:21 80:22]
  wire  _GEN_32 = _T_2 ? rules_1_io_home_sharer_list_out_2 : _GEN_11; // @[system.scala 76:21 80:22]
  wire  _GEN_33 = _T_2 ? rules_1_io_home_invalidate_list_out_0 : _GEN_12; // @[system.scala 76:21 81:26]
  wire  _GEN_34 = _T_2 ? rules_1_io_home_invalidate_list_out_1 : _GEN_13; // @[system.scala 76:21 81:26]
  wire  _GEN_35 = _T_2 ? rules_1_io_home_invalidate_list_out_2 : _GEN_14; // @[system.scala 76:21 81:26]
  wire  _GEN_36 = _T_2 ? rules_1_io_home_exclusive_granted_out : _GEN_15; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_37 = _T_2 ? rules_1_io_home_current_command_out : _GEN_16; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_38 = _T_2 ? rules_1_io_home_current_client_out : _GEN_17; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_39 = _T_2 ? rules_1_io_cache_out_0 : _GEN_18; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_40 = _T_2 ? rules_1_io_cache_out_1 : _GEN_19; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_41 = _T_2 ? rules_1_io_cache_out_2 : _GEN_20; // @[system.scala 76:21 85:11]
  wire  _T_4 = io_en_a == 5'h2; // @[system.scala 75:27]
  wire [2:0] _GEN_42 = _T_4 ? rules_2_io_channel1_out_0 : _GEN_21; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_43 = _T_4 ? rules_2_io_channel1_out_1 : _GEN_22; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_44 = _T_4 ? rules_2_io_channel1_out_2 : _GEN_23; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_45 = _T_4 ? rules_2_io_channel2_4_out_0 : _GEN_24; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_46 = _T_4 ? rules_2_io_channel2_4_out_1 : _GEN_25; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_47 = _T_4 ? rules_2_io_channel2_4_out_2 : _GEN_26; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_48 = _T_4 ? rules_2_io_channel3_out_0 : _GEN_27; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_49 = _T_4 ? rules_2_io_channel3_out_1 : _GEN_28; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_50 = _T_4 ? rules_2_io_channel3_out_2 : _GEN_29; // @[system.scala 76:21 79:14]
  wire  _GEN_51 = _T_4 ? rules_2_io_home_sharer_list_out_0 : _GEN_30; // @[system.scala 76:21 80:22]
  wire  _GEN_52 = _T_4 ? rules_2_io_home_sharer_list_out_1 : _GEN_31; // @[system.scala 76:21 80:22]
  wire  _GEN_53 = _T_4 ? rules_2_io_home_sharer_list_out_2 : _GEN_32; // @[system.scala 76:21 80:22]
  wire  _GEN_54 = _T_4 ? rules_2_io_home_invalidate_list_out_0 : _GEN_33; // @[system.scala 76:21 81:26]
  wire  _GEN_55 = _T_4 ? rules_2_io_home_invalidate_list_out_1 : _GEN_34; // @[system.scala 76:21 81:26]
  wire  _GEN_56 = _T_4 ? rules_2_io_home_invalidate_list_out_2 : _GEN_35; // @[system.scala 76:21 81:26]
  wire  _GEN_57 = _T_4 ? rules_2_io_home_exclusive_granted_out : _GEN_36; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_58 = _T_4 ? rules_2_io_home_current_command_out : _GEN_37; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_59 = _T_4 ? rules_2_io_home_current_client_out : _GEN_38; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_60 = _T_4 ? rules_2_io_cache_out_0 : _GEN_39; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_61 = _T_4 ? rules_2_io_cache_out_1 : _GEN_40; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_62 = _T_4 ? rules_2_io_cache_out_2 : _GEN_41; // @[system.scala 76:21 85:11]
  wire  _T_6 = io_en_a == 5'h3; // @[system.scala 75:27]
  wire [2:0] _GEN_63 = _T_6 ? rules_3_io_channel1_out_0 : _GEN_42; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_64 = _T_6 ? rules_3_io_channel1_out_1 : _GEN_43; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_65 = _T_6 ? rules_3_io_channel1_out_2 : _GEN_44; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_66 = _T_6 ? rules_3_io_channel2_4_out_0 : _GEN_45; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_67 = _T_6 ? rules_3_io_channel2_4_out_1 : _GEN_46; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_68 = _T_6 ? rules_3_io_channel2_4_out_2 : _GEN_47; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_69 = _T_6 ? rules_3_io_channel3_out_0 : _GEN_48; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_70 = _T_6 ? rules_3_io_channel3_out_1 : _GEN_49; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_71 = _T_6 ? rules_3_io_channel3_out_2 : _GEN_50; // @[system.scala 76:21 79:14]
  wire  _GEN_72 = _T_6 ? rules_3_io_home_sharer_list_out_0 : _GEN_51; // @[system.scala 76:21 80:22]
  wire  _GEN_73 = _T_6 ? rules_3_io_home_sharer_list_out_1 : _GEN_52; // @[system.scala 76:21 80:22]
  wire  _GEN_74 = _T_6 ? rules_3_io_home_sharer_list_out_2 : _GEN_53; // @[system.scala 76:21 80:22]
  wire  _GEN_75 = _T_6 ? rules_3_io_home_invalidate_list_out_0 : _GEN_54; // @[system.scala 76:21 81:26]
  wire  _GEN_76 = _T_6 ? rules_3_io_home_invalidate_list_out_1 : _GEN_55; // @[system.scala 76:21 81:26]
  wire  _GEN_77 = _T_6 ? rules_3_io_home_invalidate_list_out_2 : _GEN_56; // @[system.scala 76:21 81:26]
  wire  _GEN_78 = _T_6 ? rules_3_io_home_exclusive_granted_out : _GEN_57; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_79 = _T_6 ? rules_3_io_home_current_command_out : _GEN_58; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_80 = _T_6 ? rules_3_io_home_current_client_out : _GEN_59; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_81 = _T_6 ? rules_3_io_cache_out_0 : _GEN_60; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_82 = _T_6 ? rules_3_io_cache_out_1 : _GEN_61; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_83 = _T_6 ? rules_3_io_cache_out_2 : _GEN_62; // @[system.scala 76:21 85:11]
  wire  _T_8 = io_en_a == 5'h4; // @[system.scala 75:27]
  wire [2:0] _GEN_84 = _T_8 ? rules_4_io_channel1_out_0 : _GEN_63; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_85 = _T_8 ? rules_4_io_channel1_out_1 : _GEN_64; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_86 = _T_8 ? rules_4_io_channel1_out_2 : _GEN_65; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_87 = _T_8 ? rules_4_io_channel2_4_out_0 : _GEN_66; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_88 = _T_8 ? rules_4_io_channel2_4_out_1 : _GEN_67; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_89 = _T_8 ? rules_4_io_channel2_4_out_2 : _GEN_68; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_90 = _T_8 ? rules_4_io_channel3_out_0 : _GEN_69; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_91 = _T_8 ? rules_4_io_channel3_out_1 : _GEN_70; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_92 = _T_8 ? rules_4_io_channel3_out_2 : _GEN_71; // @[system.scala 76:21 79:14]
  wire  _GEN_93 = _T_8 ? rules_4_io_home_sharer_list_out_0 : _GEN_72; // @[system.scala 76:21 80:22]
  wire  _GEN_94 = _T_8 ? rules_4_io_home_sharer_list_out_1 : _GEN_73; // @[system.scala 76:21 80:22]
  wire  _GEN_95 = _T_8 ? rules_4_io_home_sharer_list_out_2 : _GEN_74; // @[system.scala 76:21 80:22]
  wire  _GEN_96 = _T_8 ? rules_4_io_home_invalidate_list_out_0 : _GEN_75; // @[system.scala 76:21 81:26]
  wire  _GEN_97 = _T_8 ? rules_4_io_home_invalidate_list_out_1 : _GEN_76; // @[system.scala 76:21 81:26]
  wire  _GEN_98 = _T_8 ? rules_4_io_home_invalidate_list_out_2 : _GEN_77; // @[system.scala 76:21 81:26]
  wire  _GEN_99 = _T_8 ? rules_4_io_home_exclusive_granted_out : _GEN_78; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_100 = _T_8 ? rules_4_io_home_current_command_out : _GEN_79; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_101 = _T_8 ? rules_4_io_home_current_client_out : _GEN_80; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_102 = _T_8 ? rules_4_io_cache_out_0 : _GEN_81; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_103 = _T_8 ? rules_4_io_cache_out_1 : _GEN_82; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_104 = _T_8 ? rules_4_io_cache_out_2 : _GEN_83; // @[system.scala 76:21 85:11]
  wire  _T_10 = io_en_a == 5'h5; // @[system.scala 75:27]
  wire [2:0] _GEN_105 = _T_10 ? rules_5_io_channel1_out_0 : _GEN_84; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_106 = _T_10 ? rules_5_io_channel1_out_1 : _GEN_85; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_107 = _T_10 ? rules_5_io_channel1_out_2 : _GEN_86; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_108 = _T_10 ? rules_5_io_channel2_4_out_0 : _GEN_87; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_109 = _T_10 ? rules_5_io_channel2_4_out_1 : _GEN_88; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_110 = _T_10 ? rules_5_io_channel2_4_out_2 : _GEN_89; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_111 = _T_10 ? rules_5_io_channel3_out_0 : _GEN_90; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_112 = _T_10 ? rules_5_io_channel3_out_1 : _GEN_91; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_113 = _T_10 ? rules_5_io_channel3_out_2 : _GEN_92; // @[system.scala 76:21 79:14]
  wire  _GEN_114 = _T_10 ? rules_5_io_home_sharer_list_out_0 : _GEN_93; // @[system.scala 76:21 80:22]
  wire  _GEN_115 = _T_10 ? rules_5_io_home_sharer_list_out_1 : _GEN_94; // @[system.scala 76:21 80:22]
  wire  _GEN_116 = _T_10 ? rules_5_io_home_sharer_list_out_2 : _GEN_95; // @[system.scala 76:21 80:22]
  wire  _GEN_117 = _T_10 ? rules_5_io_home_invalidate_list_out_0 : _GEN_96; // @[system.scala 76:21 81:26]
  wire  _GEN_118 = _T_10 ? rules_5_io_home_invalidate_list_out_1 : _GEN_97; // @[system.scala 76:21 81:26]
  wire  _GEN_119 = _T_10 ? rules_5_io_home_invalidate_list_out_2 : _GEN_98; // @[system.scala 76:21 81:26]
  wire  _GEN_120 = _T_10 ? rules_5_io_home_exclusive_granted_out : _GEN_99; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_121 = _T_10 ? rules_5_io_home_current_command_out : _GEN_100; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_122 = _T_10 ? rules_5_io_home_current_client_out : _GEN_101; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_123 = _T_10 ? rules_5_io_cache_out_0 : _GEN_102; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_124 = _T_10 ? rules_5_io_cache_out_1 : _GEN_103; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_125 = _T_10 ? rules_5_io_cache_out_2 : _GEN_104; // @[system.scala 76:21 85:11]
  wire  _T_12 = io_en_a == 5'h6; // @[system.scala 75:27]
  wire [2:0] _GEN_126 = _T_12 ? rules_6_io_channel1_out_0 : _GEN_105; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_127 = _T_12 ? rules_6_io_channel1_out_1 : _GEN_106; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_128 = _T_12 ? rules_6_io_channel1_out_2 : _GEN_107; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_129 = _T_12 ? rules_6_io_channel2_4_out_0 : _GEN_108; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_130 = _T_12 ? rules_6_io_channel2_4_out_1 : _GEN_109; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_131 = _T_12 ? rules_6_io_channel2_4_out_2 : _GEN_110; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_132 = _T_12 ? rules_6_io_channel3_out_0 : _GEN_111; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_133 = _T_12 ? rules_6_io_channel3_out_1 : _GEN_112; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_134 = _T_12 ? rules_6_io_channel3_out_2 : _GEN_113; // @[system.scala 76:21 79:14]
  wire  _GEN_135 = _T_12 ? rules_6_io_home_sharer_list_out_0 : _GEN_114; // @[system.scala 76:21 80:22]
  wire  _GEN_136 = _T_12 ? rules_6_io_home_sharer_list_out_1 : _GEN_115; // @[system.scala 76:21 80:22]
  wire  _GEN_137 = _T_12 ? rules_6_io_home_sharer_list_out_2 : _GEN_116; // @[system.scala 76:21 80:22]
  wire  _GEN_138 = _T_12 ? rules_6_io_home_invalidate_list_out_0 : _GEN_117; // @[system.scala 76:21 81:26]
  wire  _GEN_139 = _T_12 ? rules_6_io_home_invalidate_list_out_1 : _GEN_118; // @[system.scala 76:21 81:26]
  wire  _GEN_140 = _T_12 ? rules_6_io_home_invalidate_list_out_2 : _GEN_119; // @[system.scala 76:21 81:26]
  wire  _GEN_141 = _T_12 ? rules_6_io_home_exclusive_granted_out : _GEN_120; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_142 = _T_12 ? rules_6_io_home_current_command_out : _GEN_121; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_143 = _T_12 ? rules_6_io_home_current_client_out : _GEN_122; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_144 = _T_12 ? rules_6_io_cache_out_0 : _GEN_123; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_145 = _T_12 ? rules_6_io_cache_out_1 : _GEN_124; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_146 = _T_12 ? rules_6_io_cache_out_2 : _GEN_125; // @[system.scala 76:21 85:11]
  wire  _T_14 = io_en_a == 5'h7; // @[system.scala 75:27]
  wire [2:0] _GEN_147 = _T_14 ? rules_7_io_channel1_out_0 : _GEN_126; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_148 = _T_14 ? rules_7_io_channel1_out_1 : _GEN_127; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_149 = _T_14 ? rules_7_io_channel1_out_2 : _GEN_128; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_150 = _T_14 ? rules_7_io_channel2_4_out_0 : _GEN_129; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_151 = _T_14 ? rules_7_io_channel2_4_out_1 : _GEN_130; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_152 = _T_14 ? rules_7_io_channel2_4_out_2 : _GEN_131; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_153 = _T_14 ? rules_7_io_channel3_out_0 : _GEN_132; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_154 = _T_14 ? rules_7_io_channel3_out_1 : _GEN_133; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_155 = _T_14 ? rules_7_io_channel3_out_2 : _GEN_134; // @[system.scala 76:21 79:14]
  wire  _GEN_156 = _T_14 ? rules_7_io_home_sharer_list_out_0 : _GEN_135; // @[system.scala 76:21 80:22]
  wire  _GEN_157 = _T_14 ? rules_7_io_home_sharer_list_out_1 : _GEN_136; // @[system.scala 76:21 80:22]
  wire  _GEN_158 = _T_14 ? rules_7_io_home_sharer_list_out_2 : _GEN_137; // @[system.scala 76:21 80:22]
  wire  _GEN_159 = _T_14 ? rules_7_io_home_invalidate_list_out_0 : _GEN_138; // @[system.scala 76:21 81:26]
  wire  _GEN_160 = _T_14 ? rules_7_io_home_invalidate_list_out_1 : _GEN_139; // @[system.scala 76:21 81:26]
  wire  _GEN_161 = _T_14 ? rules_7_io_home_invalidate_list_out_2 : _GEN_140; // @[system.scala 76:21 81:26]
  wire  _GEN_162 = _T_14 ? rules_7_io_home_exclusive_granted_out : _GEN_141; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_163 = _T_14 ? rules_7_io_home_current_command_out : _GEN_142; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_164 = _T_14 ? rules_7_io_home_current_client_out : _GEN_143; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_165 = _T_14 ? rules_7_io_cache_out_0 : _GEN_144; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_166 = _T_14 ? rules_7_io_cache_out_1 : _GEN_145; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_167 = _T_14 ? rules_7_io_cache_out_2 : _GEN_146; // @[system.scala 76:21 85:11]
  wire  _T_16 = io_en_a == 5'h8; // @[system.scala 75:27]
  wire [2:0] _GEN_168 = _T_16 ? rules_8_io_channel1_out_0 : _GEN_147; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_169 = _T_16 ? rules_8_io_channel1_out_1 : _GEN_148; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_170 = _T_16 ? rules_8_io_channel1_out_2 : _GEN_149; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_171 = _T_16 ? rules_8_io_channel2_4_out_0 : _GEN_150; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_172 = _T_16 ? rules_8_io_channel2_4_out_1 : _GEN_151; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_173 = _T_16 ? rules_8_io_channel2_4_out_2 : _GEN_152; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_174 = _T_16 ? rules_8_io_channel3_out_0 : _GEN_153; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_175 = _T_16 ? rules_8_io_channel3_out_1 : _GEN_154; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_176 = _T_16 ? rules_8_io_channel3_out_2 : _GEN_155; // @[system.scala 76:21 79:14]
  wire  _GEN_177 = _T_16 ? rules_8_io_home_sharer_list_out_0 : _GEN_156; // @[system.scala 76:21 80:22]
  wire  _GEN_178 = _T_16 ? rules_8_io_home_sharer_list_out_1 : _GEN_157; // @[system.scala 76:21 80:22]
  wire  _GEN_179 = _T_16 ? rules_8_io_home_sharer_list_out_2 : _GEN_158; // @[system.scala 76:21 80:22]
  wire  _GEN_180 = _T_16 ? rules_8_io_home_invalidate_list_out_0 : _GEN_159; // @[system.scala 76:21 81:26]
  wire  _GEN_181 = _T_16 ? rules_8_io_home_invalidate_list_out_1 : _GEN_160; // @[system.scala 76:21 81:26]
  wire  _GEN_182 = _T_16 ? rules_8_io_home_invalidate_list_out_2 : _GEN_161; // @[system.scala 76:21 81:26]
  wire  _GEN_183 = _T_16 ? rules_8_io_home_exclusive_granted_out : _GEN_162; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_184 = _T_16 ? rules_8_io_home_current_command_out : _GEN_163; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_185 = _T_16 ? rules_8_io_home_current_client_out : _GEN_164; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_186 = _T_16 ? rules_8_io_cache_out_0 : _GEN_165; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_187 = _T_16 ? rules_8_io_cache_out_1 : _GEN_166; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_188 = _T_16 ? rules_8_io_cache_out_2 : _GEN_167; // @[system.scala 76:21 85:11]
  wire  _T_18 = io_en_a == 5'h9; // @[system.scala 75:27]
  wire [2:0] _GEN_189 = _T_18 ? rules_9_io_channel1_out_0 : _GEN_168; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_190 = _T_18 ? rules_9_io_channel1_out_1 : _GEN_169; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_191 = _T_18 ? rules_9_io_channel1_out_2 : _GEN_170; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_192 = _T_18 ? rules_9_io_channel2_4_out_0 : _GEN_171; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_193 = _T_18 ? rules_9_io_channel2_4_out_1 : _GEN_172; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_194 = _T_18 ? rules_9_io_channel2_4_out_2 : _GEN_173; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_195 = _T_18 ? rules_9_io_channel3_out_0 : _GEN_174; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_196 = _T_18 ? rules_9_io_channel3_out_1 : _GEN_175; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_197 = _T_18 ? rules_9_io_channel3_out_2 : _GEN_176; // @[system.scala 76:21 79:14]
  wire  _GEN_198 = _T_18 ? rules_9_io_home_sharer_list_out_0 : _GEN_177; // @[system.scala 76:21 80:22]
  wire  _GEN_199 = _T_18 ? rules_9_io_home_sharer_list_out_1 : _GEN_178; // @[system.scala 76:21 80:22]
  wire  _GEN_200 = _T_18 ? rules_9_io_home_sharer_list_out_2 : _GEN_179; // @[system.scala 76:21 80:22]
  wire  _GEN_201 = _T_18 ? rules_9_io_home_invalidate_list_out_0 : _GEN_180; // @[system.scala 76:21 81:26]
  wire  _GEN_202 = _T_18 ? rules_9_io_home_invalidate_list_out_1 : _GEN_181; // @[system.scala 76:21 81:26]
  wire  _GEN_203 = _T_18 ? rules_9_io_home_invalidate_list_out_2 : _GEN_182; // @[system.scala 76:21 81:26]
  wire  _GEN_204 = _T_18 ? rules_9_io_home_exclusive_granted_out : _GEN_183; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_205 = _T_18 ? rules_9_io_home_current_command_out : _GEN_184; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_206 = _T_18 ? rules_9_io_home_current_client_out : _GEN_185; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_207 = _T_18 ? rules_9_io_cache_out_0 : _GEN_186; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_208 = _T_18 ? rules_9_io_cache_out_1 : _GEN_187; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_209 = _T_18 ? rules_9_io_cache_out_2 : _GEN_188; // @[system.scala 76:21 85:11]
  wire  _T_20 = io_en_a == 5'ha; // @[system.scala 75:27]
  wire [2:0] _GEN_210 = _T_20 ? rules_10_io_channel1_out_0 : _GEN_189; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_211 = _T_20 ? rules_10_io_channel1_out_1 : _GEN_190; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_212 = _T_20 ? rules_10_io_channel1_out_2 : _GEN_191; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_213 = _T_20 ? rules_10_io_channel2_4_out_0 : _GEN_192; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_214 = _T_20 ? rules_10_io_channel2_4_out_1 : _GEN_193; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_215 = _T_20 ? rules_10_io_channel2_4_out_2 : _GEN_194; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_216 = _T_20 ? rules_10_io_channel3_out_0 : _GEN_195; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_217 = _T_20 ? rules_10_io_channel3_out_1 : _GEN_196; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_218 = _T_20 ? rules_10_io_channel3_out_2 : _GEN_197; // @[system.scala 76:21 79:14]
  wire  _GEN_219 = _T_20 ? rules_10_io_home_sharer_list_out_0 : _GEN_198; // @[system.scala 76:21 80:22]
  wire  _GEN_220 = _T_20 ? rules_10_io_home_sharer_list_out_1 : _GEN_199; // @[system.scala 76:21 80:22]
  wire  _GEN_221 = _T_20 ? rules_10_io_home_sharer_list_out_2 : _GEN_200; // @[system.scala 76:21 80:22]
  wire  _GEN_222 = _T_20 ? rules_10_io_home_invalidate_list_out_0 : _GEN_201; // @[system.scala 76:21 81:26]
  wire  _GEN_223 = _T_20 ? rules_10_io_home_invalidate_list_out_1 : _GEN_202; // @[system.scala 76:21 81:26]
  wire  _GEN_224 = _T_20 ? rules_10_io_home_invalidate_list_out_2 : _GEN_203; // @[system.scala 76:21 81:26]
  wire  _GEN_225 = _T_20 ? rules_10_io_home_exclusive_granted_out : _GEN_204; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_226 = _T_20 ? rules_10_io_home_current_command_out : _GEN_205; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_227 = _T_20 ? rules_10_io_home_current_client_out : _GEN_206; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_228 = _T_20 ? rules_10_io_cache_out_0 : _GEN_207; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_229 = _T_20 ? rules_10_io_cache_out_1 : _GEN_208; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_230 = _T_20 ? rules_10_io_cache_out_2 : _GEN_209; // @[system.scala 76:21 85:11]
  wire  _T_22 = io_en_a == 5'hb; // @[system.scala 75:27]
  wire [2:0] _GEN_231 = _T_22 ? rules_11_io_channel1_out_0 : _GEN_210; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_232 = _T_22 ? rules_11_io_channel1_out_1 : _GEN_211; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_233 = _T_22 ? rules_11_io_channel1_out_2 : _GEN_212; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_234 = _T_22 ? rules_11_io_channel2_4_out_0 : _GEN_213; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_235 = _T_22 ? rules_11_io_channel2_4_out_1 : _GEN_214; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_236 = _T_22 ? rules_11_io_channel2_4_out_2 : _GEN_215; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_237 = _T_22 ? rules_11_io_channel3_out_0 : _GEN_216; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_238 = _T_22 ? rules_11_io_channel3_out_1 : _GEN_217; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_239 = _T_22 ? rules_11_io_channel3_out_2 : _GEN_218; // @[system.scala 76:21 79:14]
  wire  _GEN_240 = _T_22 ? rules_11_io_home_sharer_list_out_0 : _GEN_219; // @[system.scala 76:21 80:22]
  wire  _GEN_241 = _T_22 ? rules_11_io_home_sharer_list_out_1 : _GEN_220; // @[system.scala 76:21 80:22]
  wire  _GEN_242 = _T_22 ? rules_11_io_home_sharer_list_out_2 : _GEN_221; // @[system.scala 76:21 80:22]
  wire  _GEN_243 = _T_22 ? rules_11_io_home_invalidate_list_out_0 : _GEN_222; // @[system.scala 76:21 81:26]
  wire  _GEN_244 = _T_22 ? rules_11_io_home_invalidate_list_out_1 : _GEN_223; // @[system.scala 76:21 81:26]
  wire  _GEN_245 = _T_22 ? rules_11_io_home_invalidate_list_out_2 : _GEN_224; // @[system.scala 76:21 81:26]
  wire  _GEN_246 = _T_22 ? rules_11_io_home_exclusive_granted_out : _GEN_225; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_247 = _T_22 ? rules_11_io_home_current_command_out : _GEN_226; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_248 = _T_22 ? rules_11_io_home_current_client_out : _GEN_227; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_249 = _T_22 ? rules_11_io_cache_out_0 : _GEN_228; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_250 = _T_22 ? rules_11_io_cache_out_1 : _GEN_229; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_251 = _T_22 ? rules_11_io_cache_out_2 : _GEN_230; // @[system.scala 76:21 85:11]
  wire  _T_24 = io_en_a == 5'hc; // @[system.scala 75:27]
  wire [2:0] _GEN_252 = _T_24 ? rules_12_io_channel1_out_0 : _GEN_231; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_253 = _T_24 ? rules_12_io_channel1_out_1 : _GEN_232; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_254 = _T_24 ? rules_12_io_channel1_out_2 : _GEN_233; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_255 = _T_24 ? rules_12_io_channel2_4_out_0 : _GEN_234; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_256 = _T_24 ? rules_12_io_channel2_4_out_1 : _GEN_235; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_257 = _T_24 ? rules_12_io_channel2_4_out_2 : _GEN_236; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_258 = _T_24 ? rules_12_io_channel3_out_0 : _GEN_237; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_259 = _T_24 ? rules_12_io_channel3_out_1 : _GEN_238; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_260 = _T_24 ? rules_12_io_channel3_out_2 : _GEN_239; // @[system.scala 76:21 79:14]
  wire  _GEN_261 = _T_24 ? rules_12_io_home_sharer_list_out_0 : _GEN_240; // @[system.scala 76:21 80:22]
  wire  _GEN_262 = _T_24 ? rules_12_io_home_sharer_list_out_1 : _GEN_241; // @[system.scala 76:21 80:22]
  wire  _GEN_263 = _T_24 ? rules_12_io_home_sharer_list_out_2 : _GEN_242; // @[system.scala 76:21 80:22]
  wire  _GEN_264 = _T_24 ? rules_12_io_home_invalidate_list_out_0 : _GEN_243; // @[system.scala 76:21 81:26]
  wire  _GEN_265 = _T_24 ? rules_12_io_home_invalidate_list_out_1 : _GEN_244; // @[system.scala 76:21 81:26]
  wire  _GEN_266 = _T_24 ? rules_12_io_home_invalidate_list_out_2 : _GEN_245; // @[system.scala 76:21 81:26]
  wire  _GEN_267 = _T_24 ? rules_12_io_home_exclusive_granted_out : _GEN_246; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_268 = _T_24 ? rules_12_io_home_current_command_out : _GEN_247; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_269 = _T_24 ? rules_12_io_home_current_client_out : _GEN_248; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_270 = _T_24 ? rules_12_io_cache_out_0 : _GEN_249; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_271 = _T_24 ? rules_12_io_cache_out_1 : _GEN_250; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_272 = _T_24 ? rules_12_io_cache_out_2 : _GEN_251; // @[system.scala 76:21 85:11]
  wire  _T_26 = io_en_a == 5'hd; // @[system.scala 75:27]
  wire [2:0] _GEN_273 = _T_26 ? rules_13_io_channel1_out_0 : _GEN_252; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_274 = _T_26 ? rules_13_io_channel1_out_1 : _GEN_253; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_275 = _T_26 ? rules_13_io_channel1_out_2 : _GEN_254; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_276 = _T_26 ? rules_13_io_channel2_4_out_0 : _GEN_255; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_277 = _T_26 ? rules_13_io_channel2_4_out_1 : _GEN_256; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_278 = _T_26 ? rules_13_io_channel2_4_out_2 : _GEN_257; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_279 = _T_26 ? rules_13_io_channel3_out_0 : _GEN_258; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_280 = _T_26 ? rules_13_io_channel3_out_1 : _GEN_259; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_281 = _T_26 ? rules_13_io_channel3_out_2 : _GEN_260; // @[system.scala 76:21 79:14]
  wire  _GEN_282 = _T_26 ? rules_13_io_home_sharer_list_out_0 : _GEN_261; // @[system.scala 76:21 80:22]
  wire  _GEN_283 = _T_26 ? rules_13_io_home_sharer_list_out_1 : _GEN_262; // @[system.scala 76:21 80:22]
  wire  _GEN_284 = _T_26 ? rules_13_io_home_sharer_list_out_2 : _GEN_263; // @[system.scala 76:21 80:22]
  wire  _GEN_285 = _T_26 ? rules_13_io_home_invalidate_list_out_0 : _GEN_264; // @[system.scala 76:21 81:26]
  wire  _GEN_286 = _T_26 ? rules_13_io_home_invalidate_list_out_1 : _GEN_265; // @[system.scala 76:21 81:26]
  wire  _GEN_287 = _T_26 ? rules_13_io_home_invalidate_list_out_2 : _GEN_266; // @[system.scala 76:21 81:26]
  wire  _GEN_288 = _T_26 ? rules_13_io_home_exclusive_granted_out : _GEN_267; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_289 = _T_26 ? rules_13_io_home_current_command_out : _GEN_268; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_290 = _T_26 ? rules_13_io_home_current_client_out : _GEN_269; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_291 = _T_26 ? rules_13_io_cache_out_0 : _GEN_270; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_292 = _T_26 ? rules_13_io_cache_out_1 : _GEN_271; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_293 = _T_26 ? rules_13_io_cache_out_2 : _GEN_272; // @[system.scala 76:21 85:11]
  wire  _T_28 = io_en_a == 5'he; // @[system.scala 75:27]
  wire [2:0] _GEN_294 = _T_28 ? rules_14_io_channel1_out_0 : _GEN_273; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_295 = _T_28 ? rules_14_io_channel1_out_1 : _GEN_274; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_296 = _T_28 ? rules_14_io_channel1_out_2 : _GEN_275; // @[system.scala 76:21 77:14]
  wire [2:0] _GEN_297 = _T_28 ? rules_14_io_channel2_4_out_0 : _GEN_276; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_298 = _T_28 ? rules_14_io_channel2_4_out_1 : _GEN_277; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_299 = _T_28 ? rules_14_io_channel2_4_out_2 : _GEN_278; // @[system.scala 76:21 78:16]
  wire [2:0] _GEN_300 = _T_28 ? rules_14_io_channel3_out_0 : _GEN_279; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_301 = _T_28 ? rules_14_io_channel3_out_1 : _GEN_280; // @[system.scala 76:21 79:14]
  wire [2:0] _GEN_302 = _T_28 ? rules_14_io_channel3_out_2 : _GEN_281; // @[system.scala 76:21 79:14]
  wire  _GEN_303 = _T_28 ? rules_14_io_home_sharer_list_out_0 : _GEN_282; // @[system.scala 76:21 80:22]
  wire  _GEN_304 = _T_28 ? rules_14_io_home_sharer_list_out_1 : _GEN_283; // @[system.scala 76:21 80:22]
  wire  _GEN_305 = _T_28 ? rules_14_io_home_sharer_list_out_2 : _GEN_284; // @[system.scala 76:21 80:22]
  wire  _GEN_306 = _T_28 ? rules_14_io_home_invalidate_list_out_0 : _GEN_285; // @[system.scala 76:21 81:26]
  wire  _GEN_307 = _T_28 ? rules_14_io_home_invalidate_list_out_1 : _GEN_286; // @[system.scala 76:21 81:26]
  wire  _GEN_308 = _T_28 ? rules_14_io_home_invalidate_list_out_2 : _GEN_287; // @[system.scala 76:21 81:26]
  wire  _GEN_309 = _T_28 ? rules_14_io_home_exclusive_granted_out : _GEN_288; // @[system.scala 76:21 82:28]
  wire [2:0] _GEN_310 = _T_28 ? rules_14_io_home_current_command_out : _GEN_289; // @[system.scala 76:21 83:26]
  wire [1:0] _GEN_311 = _T_28 ? rules_14_io_home_current_client_out : _GEN_290; // @[system.scala 76:21 84:25]
  wire [1:0] _GEN_312 = _T_28 ? rules_14_io_cache_out_0 : _GEN_291; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_313 = _T_28 ? rules_14_io_cache_out_1 : _GEN_292; // @[system.scala 76:21 85:11]
  wire [1:0] _GEN_314 = _T_28 ? rules_14_io_cache_out_2 : _GEN_293; // @[system.scala 76:21 85:11]
  wire  _T_30 = io_en_a == 5'hf; // @[system.scala 75:27]
  wire  _T_32 = io_en_a == 5'h10; // @[system.scala 75:27]
  wire  _T_34 = io_en_a == 5'h11; // @[system.scala 75:27]
  wire  _T_36 = io_en_a == 5'h12; // @[system.scala 75:27]
  Init rules_0 ( // @[system.scala 38:16]
    .io_en_r(rules_0_io_en_r),
    .io_channel1_in_0(rules_0_io_channel1_in_0),
    .io_channel1_in_1(rules_0_io_channel1_in_1),
    .io_channel1_in_2(rules_0_io_channel1_in_2),
    .io_channel1_out_0(rules_0_io_channel1_out_0),
    .io_channel1_out_1(rules_0_io_channel1_out_1),
    .io_channel1_out_2(rules_0_io_channel1_out_2),
    .io_channel2_4_in_0(rules_0_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_0_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_0_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_0_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_0_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_0_io_channel2_4_out_2),
    .io_channel3_in_0(rules_0_io_channel3_in_0),
    .io_channel3_in_1(rules_0_io_channel3_in_1),
    .io_channel3_in_2(rules_0_io_channel3_in_2),
    .io_channel3_out_0(rules_0_io_channel3_out_0),
    .io_channel3_out_1(rules_0_io_channel3_out_1),
    .io_channel3_out_2(rules_0_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_0_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_0_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_0_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_0_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_0_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_0_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_0_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_0_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_0_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_0_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_0_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_0_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_0_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_0_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_0_io_home_current_command_in),
    .io_home_current_command_out(rules_0_io_home_current_command_out),
    .io_home_current_client_in(rules_0_io_home_current_client_in),
    .io_home_current_client_out(rules_0_io_home_current_client_out),
    .io_cache_in_0(rules_0_io_cache_in_0),
    .io_cache_in_1(rules_0_io_cache_in_1),
    .io_cache_in_2(rules_0_io_cache_in_2),
    .io_cache_out_0(rules_0_io_cache_out_0),
    .io_cache_out_1(rules_0_io_cache_out_1),
    .io_cache_out_2(rules_0_io_cache_out_2)
  );
  clientrequestssharedaccess rules_1 ( // @[system.scala 40:16]
    .io_en_r(rules_1_io_en_r),
    .io_channel1_in_0(rules_1_io_channel1_in_0),
    .io_channel1_in_1(rules_1_io_channel1_in_1),
    .io_channel1_in_2(rules_1_io_channel1_in_2),
    .io_channel1_out_0(rules_1_io_channel1_out_0),
    .io_channel1_out_1(rules_1_io_channel1_out_1),
    .io_channel1_out_2(rules_1_io_channel1_out_2),
    .io_channel2_4_in_0(rules_1_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_1_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_1_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_1_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_1_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_1_io_channel2_4_out_2),
    .io_channel3_in_0(rules_1_io_channel3_in_0),
    .io_channel3_in_1(rules_1_io_channel3_in_1),
    .io_channel3_in_2(rules_1_io_channel3_in_2),
    .io_channel3_out_0(rules_1_io_channel3_out_0),
    .io_channel3_out_1(rules_1_io_channel3_out_1),
    .io_channel3_out_2(rules_1_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_1_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_1_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_1_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_1_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_1_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_1_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_1_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_1_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_1_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_1_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_1_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_1_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_1_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_1_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_1_io_home_current_command_in),
    .io_home_current_command_out(rules_1_io_home_current_command_out),
    .io_home_current_client_in(rules_1_io_home_current_client_in),
    .io_home_current_client_out(rules_1_io_home_current_client_out),
    .io_cache_in_0(rules_1_io_cache_in_0),
    .io_cache_in_1(rules_1_io_cache_in_1),
    .io_cache_in_2(rules_1_io_cache_in_2),
    .io_cache_out_0(rules_1_io_cache_out_0),
    .io_cache_out_1(rules_1_io_cache_out_1),
    .io_cache_out_2(rules_1_io_cache_out_2)
  );
  clientrequestssharedaccess_1 rules_2 ( // @[system.scala 40:16]
    .io_en_r(rules_2_io_en_r),
    .io_channel1_in_0(rules_2_io_channel1_in_0),
    .io_channel1_in_1(rules_2_io_channel1_in_1),
    .io_channel1_in_2(rules_2_io_channel1_in_2),
    .io_channel1_out_0(rules_2_io_channel1_out_0),
    .io_channel1_out_1(rules_2_io_channel1_out_1),
    .io_channel1_out_2(rules_2_io_channel1_out_2),
    .io_channel2_4_in_0(rules_2_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_2_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_2_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_2_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_2_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_2_io_channel2_4_out_2),
    .io_channel3_in_0(rules_2_io_channel3_in_0),
    .io_channel3_in_1(rules_2_io_channel3_in_1),
    .io_channel3_in_2(rules_2_io_channel3_in_2),
    .io_channel3_out_0(rules_2_io_channel3_out_0),
    .io_channel3_out_1(rules_2_io_channel3_out_1),
    .io_channel3_out_2(rules_2_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_2_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_2_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_2_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_2_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_2_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_2_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_2_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_2_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_2_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_2_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_2_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_2_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_2_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_2_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_2_io_home_current_command_in),
    .io_home_current_command_out(rules_2_io_home_current_command_out),
    .io_home_current_client_in(rules_2_io_home_current_client_in),
    .io_home_current_client_out(rules_2_io_home_current_client_out),
    .io_cache_in_0(rules_2_io_cache_in_0),
    .io_cache_in_1(rules_2_io_cache_in_1),
    .io_cache_in_2(rules_2_io_cache_in_2),
    .io_cache_out_0(rules_2_io_cache_out_0),
    .io_cache_out_1(rules_2_io_cache_out_1),
    .io_cache_out_2(rules_2_io_cache_out_2)
  );
  clientrequestsexclusiveaccess rules_3 ( // @[system.scala 43:16]
    .io_en_r(rules_3_io_en_r),
    .io_channel1_in_0(rules_3_io_channel1_in_0),
    .io_channel1_in_1(rules_3_io_channel1_in_1),
    .io_channel1_in_2(rules_3_io_channel1_in_2),
    .io_channel1_out_0(rules_3_io_channel1_out_0),
    .io_channel1_out_1(rules_3_io_channel1_out_1),
    .io_channel1_out_2(rules_3_io_channel1_out_2),
    .io_channel2_4_in_0(rules_3_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_3_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_3_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_3_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_3_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_3_io_channel2_4_out_2),
    .io_channel3_in_0(rules_3_io_channel3_in_0),
    .io_channel3_in_1(rules_3_io_channel3_in_1),
    .io_channel3_in_2(rules_3_io_channel3_in_2),
    .io_channel3_out_0(rules_3_io_channel3_out_0),
    .io_channel3_out_1(rules_3_io_channel3_out_1),
    .io_channel3_out_2(rules_3_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_3_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_3_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_3_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_3_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_3_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_3_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_3_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_3_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_3_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_3_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_3_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_3_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_3_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_3_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_3_io_home_current_command_in),
    .io_home_current_command_out(rules_3_io_home_current_command_out),
    .io_home_current_client_in(rules_3_io_home_current_client_in),
    .io_home_current_client_out(rules_3_io_home_current_client_out),
    .io_cache_in_0(rules_3_io_cache_in_0),
    .io_cache_in_1(rules_3_io_cache_in_1),
    .io_cache_in_2(rules_3_io_cache_in_2),
    .io_cache_out_0(rules_3_io_cache_out_0),
    .io_cache_out_1(rules_3_io_cache_out_1),
    .io_cache_out_2(rules_3_io_cache_out_2)
  );
  clientrequestsexclusiveaccess_1 rules_4 ( // @[system.scala 43:16]
    .io_en_r(rules_4_io_en_r),
    .io_channel1_in_0(rules_4_io_channel1_in_0),
    .io_channel1_in_1(rules_4_io_channel1_in_1),
    .io_channel1_in_2(rules_4_io_channel1_in_2),
    .io_channel1_out_0(rules_4_io_channel1_out_0),
    .io_channel1_out_1(rules_4_io_channel1_out_1),
    .io_channel1_out_2(rules_4_io_channel1_out_2),
    .io_channel2_4_in_0(rules_4_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_4_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_4_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_4_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_4_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_4_io_channel2_4_out_2),
    .io_channel3_in_0(rules_4_io_channel3_in_0),
    .io_channel3_in_1(rules_4_io_channel3_in_1),
    .io_channel3_in_2(rules_4_io_channel3_in_2),
    .io_channel3_out_0(rules_4_io_channel3_out_0),
    .io_channel3_out_1(rules_4_io_channel3_out_1),
    .io_channel3_out_2(rules_4_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_4_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_4_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_4_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_4_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_4_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_4_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_4_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_4_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_4_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_4_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_4_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_4_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_4_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_4_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_4_io_home_current_command_in),
    .io_home_current_command_out(rules_4_io_home_current_command_out),
    .io_home_current_client_in(rules_4_io_home_current_client_in),
    .io_home_current_client_out(rules_4_io_home_current_client_out),
    .io_cache_in_0(rules_4_io_cache_in_0),
    .io_cache_in_1(rules_4_io_cache_in_1),
    .io_cache_in_2(rules_4_io_cache_in_2),
    .io_cache_out_0(rules_4_io_cache_out_0),
    .io_cache_out_1(rules_4_io_cache_out_1),
    .io_cache_out_2(rules_4_io_cache_out_2)
  );
  homepicksnewrequest rules_5 ( // @[system.scala 46:16]
    .io_en_r(rules_5_io_en_r),
    .io_channel1_in_0(rules_5_io_channel1_in_0),
    .io_channel1_in_1(rules_5_io_channel1_in_1),
    .io_channel1_in_2(rules_5_io_channel1_in_2),
    .io_channel1_out_0(rules_5_io_channel1_out_0),
    .io_channel1_out_1(rules_5_io_channel1_out_1),
    .io_channel1_out_2(rules_5_io_channel1_out_2),
    .io_channel2_4_in_0(rules_5_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_5_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_5_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_5_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_5_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_5_io_channel2_4_out_2),
    .io_channel3_in_0(rules_5_io_channel3_in_0),
    .io_channel3_in_1(rules_5_io_channel3_in_1),
    .io_channel3_in_2(rules_5_io_channel3_in_2),
    .io_channel3_out_0(rules_5_io_channel3_out_0),
    .io_channel3_out_1(rules_5_io_channel3_out_1),
    .io_channel3_out_2(rules_5_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_5_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_5_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_5_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_5_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_5_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_5_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_5_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_5_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_5_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_5_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_5_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_5_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_5_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_5_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_5_io_home_current_command_in),
    .io_home_current_command_out(rules_5_io_home_current_command_out),
    .io_home_current_client_in(rules_5_io_home_current_client_in),
    .io_home_current_client_out(rules_5_io_home_current_client_out),
    .io_cache_in_0(rules_5_io_cache_in_0),
    .io_cache_in_1(rules_5_io_cache_in_1),
    .io_cache_in_2(rules_5_io_cache_in_2),
    .io_cache_out_0(rules_5_io_cache_out_0),
    .io_cache_out_1(rules_5_io_cache_out_1),
    .io_cache_out_2(rules_5_io_cache_out_2)
  );
  homepicksnewrequest_1 rules_6 ( // @[system.scala 46:16]
    .io_en_r(rules_6_io_en_r),
    .io_channel1_in_0(rules_6_io_channel1_in_0),
    .io_channel1_in_1(rules_6_io_channel1_in_1),
    .io_channel1_in_2(rules_6_io_channel1_in_2),
    .io_channel1_out_0(rules_6_io_channel1_out_0),
    .io_channel1_out_1(rules_6_io_channel1_out_1),
    .io_channel1_out_2(rules_6_io_channel1_out_2),
    .io_channel2_4_in_0(rules_6_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_6_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_6_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_6_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_6_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_6_io_channel2_4_out_2),
    .io_channel3_in_0(rules_6_io_channel3_in_0),
    .io_channel3_in_1(rules_6_io_channel3_in_1),
    .io_channel3_in_2(rules_6_io_channel3_in_2),
    .io_channel3_out_0(rules_6_io_channel3_out_0),
    .io_channel3_out_1(rules_6_io_channel3_out_1),
    .io_channel3_out_2(rules_6_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_6_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_6_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_6_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_6_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_6_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_6_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_6_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_6_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_6_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_6_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_6_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_6_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_6_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_6_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_6_io_home_current_command_in),
    .io_home_current_command_out(rules_6_io_home_current_command_out),
    .io_home_current_client_in(rules_6_io_home_current_client_in),
    .io_home_current_client_out(rules_6_io_home_current_client_out),
    .io_cache_in_0(rules_6_io_cache_in_0),
    .io_cache_in_1(rules_6_io_cache_in_1),
    .io_cache_in_2(rules_6_io_cache_in_2),
    .io_cache_out_0(rules_6_io_cache_out_0),
    .io_cache_out_1(rules_6_io_cache_out_1),
    .io_cache_out_2(rules_6_io_cache_out_2)
  );
  homesendsinvalidatemessage rules_7 ( // @[system.scala 49:16]
    .io_en_r(rules_7_io_en_r),
    .io_channel1_in_0(rules_7_io_channel1_in_0),
    .io_channel1_in_1(rules_7_io_channel1_in_1),
    .io_channel1_in_2(rules_7_io_channel1_in_2),
    .io_channel1_out_0(rules_7_io_channel1_out_0),
    .io_channel1_out_1(rules_7_io_channel1_out_1),
    .io_channel1_out_2(rules_7_io_channel1_out_2),
    .io_channel2_4_in_0(rules_7_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_7_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_7_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_7_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_7_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_7_io_channel2_4_out_2),
    .io_channel3_in_0(rules_7_io_channel3_in_0),
    .io_channel3_in_1(rules_7_io_channel3_in_1),
    .io_channel3_in_2(rules_7_io_channel3_in_2),
    .io_channel3_out_0(rules_7_io_channel3_out_0),
    .io_channel3_out_1(rules_7_io_channel3_out_1),
    .io_channel3_out_2(rules_7_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_7_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_7_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_7_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_7_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_7_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_7_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_7_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_7_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_7_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_7_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_7_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_7_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_7_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_7_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_7_io_home_current_command_in),
    .io_home_current_command_out(rules_7_io_home_current_command_out),
    .io_home_current_client_in(rules_7_io_home_current_client_in),
    .io_home_current_client_out(rules_7_io_home_current_client_out),
    .io_cache_in_0(rules_7_io_cache_in_0),
    .io_cache_in_1(rules_7_io_cache_in_1),
    .io_cache_in_2(rules_7_io_cache_in_2),
    .io_cache_out_0(rules_7_io_cache_out_0),
    .io_cache_out_1(rules_7_io_cache_out_1),
    .io_cache_out_2(rules_7_io_cache_out_2)
  );
  homesendsinvalidatemessage_1 rules_8 ( // @[system.scala 49:16]
    .io_en_r(rules_8_io_en_r),
    .io_channel1_in_0(rules_8_io_channel1_in_0),
    .io_channel1_in_1(rules_8_io_channel1_in_1),
    .io_channel1_in_2(rules_8_io_channel1_in_2),
    .io_channel1_out_0(rules_8_io_channel1_out_0),
    .io_channel1_out_1(rules_8_io_channel1_out_1),
    .io_channel1_out_2(rules_8_io_channel1_out_2),
    .io_channel2_4_in_0(rules_8_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_8_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_8_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_8_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_8_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_8_io_channel2_4_out_2),
    .io_channel3_in_0(rules_8_io_channel3_in_0),
    .io_channel3_in_1(rules_8_io_channel3_in_1),
    .io_channel3_in_2(rules_8_io_channel3_in_2),
    .io_channel3_out_0(rules_8_io_channel3_out_0),
    .io_channel3_out_1(rules_8_io_channel3_out_1),
    .io_channel3_out_2(rules_8_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_8_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_8_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_8_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_8_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_8_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_8_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_8_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_8_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_8_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_8_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_8_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_8_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_8_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_8_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_8_io_home_current_command_in),
    .io_home_current_command_out(rules_8_io_home_current_command_out),
    .io_home_current_client_in(rules_8_io_home_current_client_in),
    .io_home_current_client_out(rules_8_io_home_current_client_out),
    .io_cache_in_0(rules_8_io_cache_in_0),
    .io_cache_in_1(rules_8_io_cache_in_1),
    .io_cache_in_2(rules_8_io_cache_in_2),
    .io_cache_out_0(rules_8_io_cache_out_0),
    .io_cache_out_1(rules_8_io_cache_out_1),
    .io_cache_out_2(rules_8_io_cache_out_2)
  );
  homereceivesinvalidateacknowledgement rules_9 ( // @[system.scala 52:16]
    .io_en_r(rules_9_io_en_r),
    .io_channel1_in_0(rules_9_io_channel1_in_0),
    .io_channel1_in_1(rules_9_io_channel1_in_1),
    .io_channel1_in_2(rules_9_io_channel1_in_2),
    .io_channel1_out_0(rules_9_io_channel1_out_0),
    .io_channel1_out_1(rules_9_io_channel1_out_1),
    .io_channel1_out_2(rules_9_io_channel1_out_2),
    .io_channel2_4_in_0(rules_9_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_9_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_9_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_9_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_9_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_9_io_channel2_4_out_2),
    .io_channel3_in_0(rules_9_io_channel3_in_0),
    .io_channel3_in_1(rules_9_io_channel3_in_1),
    .io_channel3_in_2(rules_9_io_channel3_in_2),
    .io_channel3_out_0(rules_9_io_channel3_out_0),
    .io_channel3_out_1(rules_9_io_channel3_out_1),
    .io_channel3_out_2(rules_9_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_9_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_9_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_9_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_9_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_9_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_9_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_9_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_9_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_9_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_9_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_9_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_9_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_9_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_9_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_9_io_home_current_command_in),
    .io_home_current_command_out(rules_9_io_home_current_command_out),
    .io_home_current_client_in(rules_9_io_home_current_client_in),
    .io_home_current_client_out(rules_9_io_home_current_client_out),
    .io_cache_in_0(rules_9_io_cache_in_0),
    .io_cache_in_1(rules_9_io_cache_in_1),
    .io_cache_in_2(rules_9_io_cache_in_2),
    .io_cache_out_0(rules_9_io_cache_out_0),
    .io_cache_out_1(rules_9_io_cache_out_1),
    .io_cache_out_2(rules_9_io_cache_out_2)
  );
  homereceivesinvalidateacknowledgement_1 rules_10 ( // @[system.scala 52:16]
    .io_en_r(rules_10_io_en_r),
    .io_channel1_in_0(rules_10_io_channel1_in_0),
    .io_channel1_in_1(rules_10_io_channel1_in_1),
    .io_channel1_in_2(rules_10_io_channel1_in_2),
    .io_channel1_out_0(rules_10_io_channel1_out_0),
    .io_channel1_out_1(rules_10_io_channel1_out_1),
    .io_channel1_out_2(rules_10_io_channel1_out_2),
    .io_channel2_4_in_0(rules_10_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_10_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_10_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_10_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_10_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_10_io_channel2_4_out_2),
    .io_channel3_in_0(rules_10_io_channel3_in_0),
    .io_channel3_in_1(rules_10_io_channel3_in_1),
    .io_channel3_in_2(rules_10_io_channel3_in_2),
    .io_channel3_out_0(rules_10_io_channel3_out_0),
    .io_channel3_out_1(rules_10_io_channel3_out_1),
    .io_channel3_out_2(rules_10_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_10_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_10_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_10_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_10_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_10_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_10_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_10_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_10_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_10_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_10_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_10_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_10_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_10_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_10_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_10_io_home_current_command_in),
    .io_home_current_command_out(rules_10_io_home_current_command_out),
    .io_home_current_client_in(rules_10_io_home_current_client_in),
    .io_home_current_client_out(rules_10_io_home_current_client_out),
    .io_cache_in_0(rules_10_io_cache_in_0),
    .io_cache_in_1(rules_10_io_cache_in_1),
    .io_cache_in_2(rules_10_io_cache_in_2),
    .io_cache_out_0(rules_10_io_cache_out_0),
    .io_cache_out_1(rules_10_io_cache_out_1),
    .io_cache_out_2(rules_10_io_cache_out_2)
  );
  sharerinvalidatescache rules_11 ( // @[system.scala 55:16]
    .io_en_r(rules_11_io_en_r),
    .io_channel1_in_0(rules_11_io_channel1_in_0),
    .io_channel1_in_1(rules_11_io_channel1_in_1),
    .io_channel1_in_2(rules_11_io_channel1_in_2),
    .io_channel1_out_0(rules_11_io_channel1_out_0),
    .io_channel1_out_1(rules_11_io_channel1_out_1),
    .io_channel1_out_2(rules_11_io_channel1_out_2),
    .io_channel2_4_in_0(rules_11_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_11_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_11_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_11_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_11_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_11_io_channel2_4_out_2),
    .io_channel3_in_0(rules_11_io_channel3_in_0),
    .io_channel3_in_1(rules_11_io_channel3_in_1),
    .io_channel3_in_2(rules_11_io_channel3_in_2),
    .io_channel3_out_0(rules_11_io_channel3_out_0),
    .io_channel3_out_1(rules_11_io_channel3_out_1),
    .io_channel3_out_2(rules_11_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_11_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_11_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_11_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_11_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_11_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_11_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_11_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_11_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_11_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_11_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_11_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_11_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_11_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_11_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_11_io_home_current_command_in),
    .io_home_current_command_out(rules_11_io_home_current_command_out),
    .io_home_current_client_in(rules_11_io_home_current_client_in),
    .io_home_current_client_out(rules_11_io_home_current_client_out),
    .io_cache_in_0(rules_11_io_cache_in_0),
    .io_cache_in_1(rules_11_io_cache_in_1),
    .io_cache_in_2(rules_11_io_cache_in_2),
    .io_cache_out_0(rules_11_io_cache_out_0),
    .io_cache_out_1(rules_11_io_cache_out_1),
    .io_cache_out_2(rules_11_io_cache_out_2)
  );
  sharerinvalidatescache_1 rules_12 ( // @[system.scala 55:16]
    .io_en_r(rules_12_io_en_r),
    .io_channel1_in_0(rules_12_io_channel1_in_0),
    .io_channel1_in_1(rules_12_io_channel1_in_1),
    .io_channel1_in_2(rules_12_io_channel1_in_2),
    .io_channel1_out_0(rules_12_io_channel1_out_0),
    .io_channel1_out_1(rules_12_io_channel1_out_1),
    .io_channel1_out_2(rules_12_io_channel1_out_2),
    .io_channel2_4_in_0(rules_12_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_12_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_12_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_12_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_12_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_12_io_channel2_4_out_2),
    .io_channel3_in_0(rules_12_io_channel3_in_0),
    .io_channel3_in_1(rules_12_io_channel3_in_1),
    .io_channel3_in_2(rules_12_io_channel3_in_2),
    .io_channel3_out_0(rules_12_io_channel3_out_0),
    .io_channel3_out_1(rules_12_io_channel3_out_1),
    .io_channel3_out_2(rules_12_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_12_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_12_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_12_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_12_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_12_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_12_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_12_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_12_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_12_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_12_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_12_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_12_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_12_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_12_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_12_io_home_current_command_in),
    .io_home_current_command_out(rules_12_io_home_current_command_out),
    .io_home_current_client_in(rules_12_io_home_current_client_in),
    .io_home_current_client_out(rules_12_io_home_current_client_out),
    .io_cache_in_0(rules_12_io_cache_in_0),
    .io_cache_in_1(rules_12_io_cache_in_1),
    .io_cache_in_2(rules_12_io_cache_in_2),
    .io_cache_out_0(rules_12_io_cache_out_0),
    .io_cache_out_1(rules_12_io_cache_out_1),
    .io_cache_out_2(rules_12_io_cache_out_2)
  );
  clientreceivessharedgrant rules_13 ( // @[system.scala 58:16]
    .io_en_r(rules_13_io_en_r),
    .io_channel1_in_0(rules_13_io_channel1_in_0),
    .io_channel1_in_1(rules_13_io_channel1_in_1),
    .io_channel1_in_2(rules_13_io_channel1_in_2),
    .io_channel1_out_0(rules_13_io_channel1_out_0),
    .io_channel1_out_1(rules_13_io_channel1_out_1),
    .io_channel1_out_2(rules_13_io_channel1_out_2),
    .io_channel2_4_in_0(rules_13_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_13_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_13_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_13_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_13_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_13_io_channel2_4_out_2),
    .io_channel3_in_0(rules_13_io_channel3_in_0),
    .io_channel3_in_1(rules_13_io_channel3_in_1),
    .io_channel3_in_2(rules_13_io_channel3_in_2),
    .io_channel3_out_0(rules_13_io_channel3_out_0),
    .io_channel3_out_1(rules_13_io_channel3_out_1),
    .io_channel3_out_2(rules_13_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_13_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_13_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_13_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_13_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_13_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_13_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_13_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_13_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_13_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_13_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_13_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_13_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_13_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_13_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_13_io_home_current_command_in),
    .io_home_current_command_out(rules_13_io_home_current_command_out),
    .io_home_current_client_in(rules_13_io_home_current_client_in),
    .io_home_current_client_out(rules_13_io_home_current_client_out),
    .io_cache_in_0(rules_13_io_cache_in_0),
    .io_cache_in_1(rules_13_io_cache_in_1),
    .io_cache_in_2(rules_13_io_cache_in_2),
    .io_cache_out_0(rules_13_io_cache_out_0),
    .io_cache_out_1(rules_13_io_cache_out_1),
    .io_cache_out_2(rules_13_io_cache_out_2)
  );
  clientreceivessharedgrant_1 rules_14 ( // @[system.scala 58:16]
    .io_en_r(rules_14_io_en_r),
    .io_channel1_in_0(rules_14_io_channel1_in_0),
    .io_channel1_in_1(rules_14_io_channel1_in_1),
    .io_channel1_in_2(rules_14_io_channel1_in_2),
    .io_channel1_out_0(rules_14_io_channel1_out_0),
    .io_channel1_out_1(rules_14_io_channel1_out_1),
    .io_channel1_out_2(rules_14_io_channel1_out_2),
    .io_channel2_4_in_0(rules_14_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_14_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_14_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_14_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_14_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_14_io_channel2_4_out_2),
    .io_channel3_in_0(rules_14_io_channel3_in_0),
    .io_channel3_in_1(rules_14_io_channel3_in_1),
    .io_channel3_in_2(rules_14_io_channel3_in_2),
    .io_channel3_out_0(rules_14_io_channel3_out_0),
    .io_channel3_out_1(rules_14_io_channel3_out_1),
    .io_channel3_out_2(rules_14_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_14_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_14_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_14_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_14_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_14_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_14_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_14_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_14_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_14_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_14_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_14_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_14_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_14_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_14_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_14_io_home_current_command_in),
    .io_home_current_command_out(rules_14_io_home_current_command_out),
    .io_home_current_client_in(rules_14_io_home_current_client_in),
    .io_home_current_client_out(rules_14_io_home_current_client_out),
    .io_cache_in_0(rules_14_io_cache_in_0),
    .io_cache_in_1(rules_14_io_cache_in_1),
    .io_cache_in_2(rules_14_io_cache_in_2),
    .io_cache_out_0(rules_14_io_cache_out_0),
    .io_cache_out_1(rules_14_io_cache_out_1),
    .io_cache_out_2(rules_14_io_cache_out_2)
  );
  clientreceivedexclusivegrant rules_15 ( // @[system.scala 61:16]
    .io_en_r(rules_15_io_en_r),
    .io_channel1_in_0(rules_15_io_channel1_in_0),
    .io_channel1_in_1(rules_15_io_channel1_in_1),
    .io_channel1_in_2(rules_15_io_channel1_in_2),
    .io_channel1_out_0(rules_15_io_channel1_out_0),
    .io_channel1_out_1(rules_15_io_channel1_out_1),
    .io_channel1_out_2(rules_15_io_channel1_out_2),
    .io_channel2_4_in_0(rules_15_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_15_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_15_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_15_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_15_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_15_io_channel2_4_out_2),
    .io_channel3_in_0(rules_15_io_channel3_in_0),
    .io_channel3_in_1(rules_15_io_channel3_in_1),
    .io_channel3_in_2(rules_15_io_channel3_in_2),
    .io_channel3_out_0(rules_15_io_channel3_out_0),
    .io_channel3_out_1(rules_15_io_channel3_out_1),
    .io_channel3_out_2(rules_15_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_15_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_15_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_15_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_15_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_15_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_15_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_15_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_15_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_15_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_15_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_15_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_15_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_15_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_15_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_15_io_home_current_command_in),
    .io_home_current_command_out(rules_15_io_home_current_command_out),
    .io_home_current_client_in(rules_15_io_home_current_client_in),
    .io_home_current_client_out(rules_15_io_home_current_client_out),
    .io_cache_in_0(rules_15_io_cache_in_0),
    .io_cache_in_1(rules_15_io_cache_in_1),
    .io_cache_in_2(rules_15_io_cache_in_2),
    .io_cache_out_0(rules_15_io_cache_out_0),
    .io_cache_out_1(rules_15_io_cache_out_1),
    .io_cache_out_2(rules_15_io_cache_out_2)
  );
  clientreceivedexclusivegrant_1 rules_16 ( // @[system.scala 61:16]
    .io_en_r(rules_16_io_en_r),
    .io_channel1_in_0(rules_16_io_channel1_in_0),
    .io_channel1_in_1(rules_16_io_channel1_in_1),
    .io_channel1_in_2(rules_16_io_channel1_in_2),
    .io_channel1_out_0(rules_16_io_channel1_out_0),
    .io_channel1_out_1(rules_16_io_channel1_out_1),
    .io_channel1_out_2(rules_16_io_channel1_out_2),
    .io_channel2_4_in_0(rules_16_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_16_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_16_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_16_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_16_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_16_io_channel2_4_out_2),
    .io_channel3_in_0(rules_16_io_channel3_in_0),
    .io_channel3_in_1(rules_16_io_channel3_in_1),
    .io_channel3_in_2(rules_16_io_channel3_in_2),
    .io_channel3_out_0(rules_16_io_channel3_out_0),
    .io_channel3_out_1(rules_16_io_channel3_out_1),
    .io_channel3_out_2(rules_16_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_16_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_16_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_16_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_16_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_16_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_16_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_16_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_16_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_16_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_16_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_16_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_16_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_16_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_16_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_16_io_home_current_command_in),
    .io_home_current_command_out(rules_16_io_home_current_command_out),
    .io_home_current_client_in(rules_16_io_home_current_client_in),
    .io_home_current_client_out(rules_16_io_home_current_client_out),
    .io_cache_in_0(rules_16_io_cache_in_0),
    .io_cache_in_1(rules_16_io_cache_in_1),
    .io_cache_in_2(rules_16_io_cache_in_2),
    .io_cache_out_0(rules_16_io_cache_out_0),
    .io_cache_out_1(rules_16_io_cache_out_1),
    .io_cache_out_2(rules_16_io_cache_out_2)
  );
  homesendsreplytoclient_shared rules_17 ( // @[system.scala 63:16]
    .io_en_r(rules_17_io_en_r),
    .io_channel1_in_0(rules_17_io_channel1_in_0),
    .io_channel1_in_1(rules_17_io_channel1_in_1),
    .io_channel1_in_2(rules_17_io_channel1_in_2),
    .io_channel1_out_0(rules_17_io_channel1_out_0),
    .io_channel1_out_1(rules_17_io_channel1_out_1),
    .io_channel1_out_2(rules_17_io_channel1_out_2),
    .io_channel2_4_in_0(rules_17_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_17_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_17_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_17_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_17_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_17_io_channel2_4_out_2),
    .io_channel3_in_0(rules_17_io_channel3_in_0),
    .io_channel3_in_1(rules_17_io_channel3_in_1),
    .io_channel3_in_2(rules_17_io_channel3_in_2),
    .io_channel3_out_0(rules_17_io_channel3_out_0),
    .io_channel3_out_1(rules_17_io_channel3_out_1),
    .io_channel3_out_2(rules_17_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_17_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_17_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_17_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_17_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_17_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_17_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_17_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_17_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_17_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_17_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_17_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_17_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_17_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_17_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_17_io_home_current_command_in),
    .io_home_current_command_out(rules_17_io_home_current_command_out),
    .io_home_current_client_in(rules_17_io_home_current_client_in),
    .io_home_current_client_out(rules_17_io_home_current_client_out),
    .io_cache_in_0(rules_17_io_cache_in_0),
    .io_cache_in_1(rules_17_io_cache_in_1),
    .io_cache_in_2(rules_17_io_cache_in_2),
    .io_cache_out_0(rules_17_io_cache_out_0),
    .io_cache_out_1(rules_17_io_cache_out_1),
    .io_cache_out_2(rules_17_io_cache_out_2)
  );
  homesendsreplytoclient_exclusive rules_18 ( // @[system.scala 64:16]
    .io_en_r(rules_18_io_en_r),
    .io_channel1_in_0(rules_18_io_channel1_in_0),
    .io_channel1_in_1(rules_18_io_channel1_in_1),
    .io_channel1_in_2(rules_18_io_channel1_in_2),
    .io_channel1_out_0(rules_18_io_channel1_out_0),
    .io_channel1_out_1(rules_18_io_channel1_out_1),
    .io_channel1_out_2(rules_18_io_channel1_out_2),
    .io_channel2_4_in_0(rules_18_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_18_io_channel2_4_in_1),
    .io_channel2_4_in_2(rules_18_io_channel2_4_in_2),
    .io_channel2_4_out_0(rules_18_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_18_io_channel2_4_out_1),
    .io_channel2_4_out_2(rules_18_io_channel2_4_out_2),
    .io_channel3_in_0(rules_18_io_channel3_in_0),
    .io_channel3_in_1(rules_18_io_channel3_in_1),
    .io_channel3_in_2(rules_18_io_channel3_in_2),
    .io_channel3_out_0(rules_18_io_channel3_out_0),
    .io_channel3_out_1(rules_18_io_channel3_out_1),
    .io_channel3_out_2(rules_18_io_channel3_out_2),
    .io_home_sharer_list_in_0(rules_18_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_18_io_home_sharer_list_in_1),
    .io_home_sharer_list_in_2(rules_18_io_home_sharer_list_in_2),
    .io_home_sharer_list_out_0(rules_18_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_18_io_home_sharer_list_out_1),
    .io_home_sharer_list_out_2(rules_18_io_home_sharer_list_out_2),
    .io_home_invalidate_list_in_0(rules_18_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_18_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_in_2(rules_18_io_home_invalidate_list_in_2),
    .io_home_invalidate_list_out_0(rules_18_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_18_io_home_invalidate_list_out_1),
    .io_home_invalidate_list_out_2(rules_18_io_home_invalidate_list_out_2),
    .io_home_exclusive_granted_in(rules_18_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_18_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_18_io_home_current_command_in),
    .io_home_current_command_out(rules_18_io_home_current_command_out),
    .io_home_current_client_in(rules_18_io_home_current_client_in),
    .io_home_current_client_out(rules_18_io_home_current_client_out),
    .io_cache_in_0(rules_18_io_cache_in_0),
    .io_cache_in_1(rules_18_io_cache_in_1),
    .io_cache_in_2(rules_18_io_cache_in_2),
    .io_cache_out_0(rules_18_io_cache_out_0),
    .io_cache_out_1(rules_18_io_cache_out_1),
    .io_cache_out_2(rules_18_io_cache_out_2)
  );
  assign io_channel1_out_0 = channel1_reg_0; // @[system.scala 21:16]
  assign io_channel1_out_1 = channel1_reg_1; // @[system.scala 21:16]
  assign io_channel1_out_2 = channel1_reg_2; // @[system.scala 21:16]
  assign io_channel2_4_out_0 = channel2_4_reg_0; // @[system.scala 23:18]
  assign io_channel2_4_out_1 = channel2_4_reg_1; // @[system.scala 23:18]
  assign io_channel2_4_out_2 = channel2_4_reg_2; // @[system.scala 23:18]
  assign io_channel3_out_0 = channel3_reg_0; // @[system.scala 25:16]
  assign io_channel3_out_1 = channel3_reg_1; // @[system.scala 25:16]
  assign io_channel3_out_2 = channel3_reg_2; // @[system.scala 25:16]
  assign io_home_sharer_list_out_0 = home_sharer_list_reg_0; // @[system.scala 27:24]
  assign io_home_sharer_list_out_1 = home_sharer_list_reg_1; // @[system.scala 27:24]
  assign io_home_sharer_list_out_2 = home_sharer_list_reg_2; // @[system.scala 27:24]
  assign io_home_invalidate_list_out_0 = home_invalidate_list_reg_0; // @[system.scala 29:28]
  assign io_home_invalidate_list_out_1 = home_invalidate_list_reg_1; // @[system.scala 29:28]
  assign io_home_invalidate_list_out_2 = home_invalidate_list_reg_2; // @[system.scala 29:28]
  assign io_home_exclusive_granted_out = home_exclusive_granted_reg; // @[system.scala 31:30]
  assign io_home_current_command_out = home_current_command_reg; // @[system.scala 33:28]
  assign io_home_current_client_out = home_current_client_reg; // @[system.scala 35:27]
  assign io_cache_out_0 = cache_reg_0; // @[system.scala 37:13]
  assign io_cache_out_1 = cache_reg_1; // @[system.scala 37:13]
  assign io_cache_out_2 = cache_reg_2; // @[system.scala 37:13]
  assign rules_0_io_en_r = io_en_a == 5'h0; // @[system.scala 75:27]
  assign rules_0_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_0_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_0_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_0_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_0_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_0_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_0_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_0_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_0_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_0_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_0_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_0_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_0_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_0_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_0_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_0_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_0_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_0_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_0_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_0_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_0_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_1_io_en_r = io_en_a == 5'h1; // @[system.scala 75:27]
  assign rules_1_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_1_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_1_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_1_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_1_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_1_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_1_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_1_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_1_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_1_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_1_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_1_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_1_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_1_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_1_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_1_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_1_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_1_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_1_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_1_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_1_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_2_io_en_r = io_en_a == 5'h2; // @[system.scala 75:27]
  assign rules_2_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_2_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_2_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_2_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_2_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_2_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_2_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_2_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_2_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_2_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_2_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_2_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_2_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_2_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_2_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_2_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_2_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_2_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_2_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_2_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_2_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_3_io_en_r = io_en_a == 5'h3; // @[system.scala 75:27]
  assign rules_3_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_3_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_3_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_3_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_3_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_3_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_3_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_3_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_3_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_3_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_3_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_3_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_3_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_3_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_3_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_3_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_3_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_3_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_3_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_3_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_3_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_4_io_en_r = io_en_a == 5'h4; // @[system.scala 75:27]
  assign rules_4_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_4_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_4_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_4_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_4_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_4_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_4_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_4_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_4_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_4_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_4_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_4_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_4_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_4_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_4_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_4_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_4_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_4_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_4_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_4_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_4_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_5_io_en_r = io_en_a == 5'h5; // @[system.scala 75:27]
  assign rules_5_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_5_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_5_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_5_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_5_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_5_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_5_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_5_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_5_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_5_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_5_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_5_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_5_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_5_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_5_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_5_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_5_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_5_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_5_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_5_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_5_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_6_io_en_r = io_en_a == 5'h6; // @[system.scala 75:27]
  assign rules_6_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_6_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_6_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_6_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_6_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_6_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_6_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_6_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_6_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_6_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_6_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_6_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_6_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_6_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_6_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_6_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_6_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_6_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_6_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_6_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_6_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_7_io_en_r = io_en_a == 5'h7; // @[system.scala 75:27]
  assign rules_7_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_7_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_7_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_7_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_7_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_7_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_7_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_7_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_7_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_7_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_7_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_7_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_7_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_7_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_7_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_7_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_7_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_7_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_7_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_7_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_7_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_8_io_en_r = io_en_a == 5'h8; // @[system.scala 75:27]
  assign rules_8_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_8_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_8_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_8_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_8_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_8_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_8_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_8_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_8_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_8_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_8_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_8_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_8_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_8_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_8_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_8_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_8_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_8_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_8_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_8_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_8_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_9_io_en_r = io_en_a == 5'h9; // @[system.scala 75:27]
  assign rules_9_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_9_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_9_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_9_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_9_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_9_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_9_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_9_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_9_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_9_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_9_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_9_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_9_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_9_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_9_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_9_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_9_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_9_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_9_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_9_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_9_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_10_io_en_r = io_en_a == 5'ha; // @[system.scala 75:27]
  assign rules_10_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_10_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_10_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_10_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_10_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_10_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_10_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_10_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_10_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_10_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_10_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_10_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_10_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_10_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_10_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_10_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_10_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_10_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_10_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_10_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_10_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_11_io_en_r = io_en_a == 5'hb; // @[system.scala 75:27]
  assign rules_11_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_11_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_11_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_11_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_11_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_11_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_11_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_11_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_11_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_11_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_11_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_11_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_11_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_11_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_11_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_11_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_11_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_11_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_11_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_11_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_11_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_12_io_en_r = io_en_a == 5'hc; // @[system.scala 75:27]
  assign rules_12_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_12_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_12_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_12_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_12_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_12_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_12_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_12_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_12_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_12_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_12_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_12_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_12_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_12_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_12_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_12_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_12_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_12_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_12_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_12_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_12_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_13_io_en_r = io_en_a == 5'hd; // @[system.scala 75:27]
  assign rules_13_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_13_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_13_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_13_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_13_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_13_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_13_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_13_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_13_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_13_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_13_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_13_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_13_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_13_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_13_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_13_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_13_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_13_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_13_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_13_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_13_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_14_io_en_r = io_en_a == 5'he; // @[system.scala 75:27]
  assign rules_14_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_14_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_14_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_14_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_14_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_14_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_14_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_14_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_14_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_14_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_14_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_14_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_14_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_14_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_14_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_14_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_14_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_14_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_14_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_14_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_14_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_15_io_en_r = io_en_a == 5'hf; // @[system.scala 75:27]
  assign rules_15_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_15_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_15_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_15_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_15_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_15_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_15_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_15_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_15_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_15_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_15_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_15_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_15_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_15_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_15_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_15_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_15_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_15_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_15_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_15_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_15_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_16_io_en_r = io_en_a == 5'h10; // @[system.scala 75:27]
  assign rules_16_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_16_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_16_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_16_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_16_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_16_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_16_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_16_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_16_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_16_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_16_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_16_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_16_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_16_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_16_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_16_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_16_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_16_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_16_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_16_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_16_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_17_io_en_r = io_en_a == 5'h11; // @[system.scala 75:27]
  assign rules_17_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_17_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_17_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_17_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_17_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_17_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_17_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_17_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_17_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_17_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_17_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_17_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_17_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_17_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_17_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_17_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_17_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_17_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_17_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_17_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_17_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  assign rules_18_io_en_r = io_en_a == 5'h12; // @[system.scala 75:27]
  assign rules_18_io_channel1_in_0 = channel1_reg_0; // @[system.scala 66:25]
  assign rules_18_io_channel1_in_1 = channel1_reg_1; // @[system.scala 66:25]
  assign rules_18_io_channel1_in_2 = channel1_reg_2; // @[system.scala 66:25]
  assign rules_18_io_channel2_4_in_0 = channel2_4_reg_0; // @[system.scala 67:27]
  assign rules_18_io_channel2_4_in_1 = channel2_4_reg_1; // @[system.scala 67:27]
  assign rules_18_io_channel2_4_in_2 = channel2_4_reg_2; // @[system.scala 67:27]
  assign rules_18_io_channel3_in_0 = channel3_reg_0; // @[system.scala 68:25]
  assign rules_18_io_channel3_in_1 = channel3_reg_1; // @[system.scala 68:25]
  assign rules_18_io_channel3_in_2 = channel3_reg_2; // @[system.scala 68:25]
  assign rules_18_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[system.scala 69:33]
  assign rules_18_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[system.scala 69:33]
  assign rules_18_io_home_sharer_list_in_2 = home_sharer_list_reg_2; // @[system.scala 69:33]
  assign rules_18_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[system.scala 70:37]
  assign rules_18_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[system.scala 70:37]
  assign rules_18_io_home_invalidate_list_in_2 = home_invalidate_list_reg_2; // @[system.scala 70:37]
  assign rules_18_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[system.scala 71:39]
  assign rules_18_io_home_current_command_in = home_current_command_reg; // @[system.scala 72:37]
  assign rules_18_io_home_current_client_in = home_current_client_reg; // @[system.scala 73:36]
  assign rules_18_io_cache_in_0 = cache_reg_0; // @[system.scala 74:22]
  assign rules_18_io_cache_in_1 = cache_reg_1; // @[system.scala 74:22]
  assign rules_18_io_cache_in_2 = cache_reg_2; // @[system.scala 74:22]
  always @(posedge clock) begin
    if (_T_36) begin // @[system.scala 76:21]
      channel1_reg_0 <= rules_18_io_channel1_out_0; // @[system.scala 77:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel1_reg_0 <= rules_17_io_channel1_out_0; // @[system.scala 77:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel1_reg_0 <= rules_16_io_channel1_out_0; // @[system.scala 77:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel1_reg_0 <= rules_15_io_channel1_out_0; // @[system.scala 77:14]
    end else begin
      channel1_reg_0 <= _GEN_294;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel1_reg_1 <= rules_18_io_channel1_out_1; // @[system.scala 77:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel1_reg_1 <= rules_17_io_channel1_out_1; // @[system.scala 77:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel1_reg_1 <= rules_16_io_channel1_out_1; // @[system.scala 77:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel1_reg_1 <= rules_15_io_channel1_out_1; // @[system.scala 77:14]
    end else begin
      channel1_reg_1 <= _GEN_295;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel1_reg_2 <= rules_18_io_channel1_out_2; // @[system.scala 77:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel1_reg_2 <= rules_17_io_channel1_out_2; // @[system.scala 77:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel1_reg_2 <= rules_16_io_channel1_out_2; // @[system.scala 77:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel1_reg_2 <= rules_15_io_channel1_out_2; // @[system.scala 77:14]
    end else begin
      channel1_reg_2 <= _GEN_296;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel2_4_reg_0 <= rules_18_io_channel2_4_out_0; // @[system.scala 78:16]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel2_4_reg_0 <= rules_17_io_channel2_4_out_0; // @[system.scala 78:16]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel2_4_reg_0 <= rules_16_io_channel2_4_out_0; // @[system.scala 78:16]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel2_4_reg_0 <= rules_15_io_channel2_4_out_0; // @[system.scala 78:16]
    end else begin
      channel2_4_reg_0 <= _GEN_297;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel2_4_reg_1 <= rules_18_io_channel2_4_out_1; // @[system.scala 78:16]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel2_4_reg_1 <= rules_17_io_channel2_4_out_1; // @[system.scala 78:16]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel2_4_reg_1 <= rules_16_io_channel2_4_out_1; // @[system.scala 78:16]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel2_4_reg_1 <= rules_15_io_channel2_4_out_1; // @[system.scala 78:16]
    end else begin
      channel2_4_reg_1 <= _GEN_298;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel2_4_reg_2 <= rules_18_io_channel2_4_out_2; // @[system.scala 78:16]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel2_4_reg_2 <= rules_17_io_channel2_4_out_2; // @[system.scala 78:16]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel2_4_reg_2 <= rules_16_io_channel2_4_out_2; // @[system.scala 78:16]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel2_4_reg_2 <= rules_15_io_channel2_4_out_2; // @[system.scala 78:16]
    end else begin
      channel2_4_reg_2 <= _GEN_299;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel3_reg_0 <= rules_18_io_channel3_out_0; // @[system.scala 79:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel3_reg_0 <= rules_17_io_channel3_out_0; // @[system.scala 79:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel3_reg_0 <= rules_16_io_channel3_out_0; // @[system.scala 79:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel3_reg_0 <= rules_15_io_channel3_out_0; // @[system.scala 79:14]
    end else begin
      channel3_reg_0 <= _GEN_300;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel3_reg_1 <= rules_18_io_channel3_out_1; // @[system.scala 79:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel3_reg_1 <= rules_17_io_channel3_out_1; // @[system.scala 79:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel3_reg_1 <= rules_16_io_channel3_out_1; // @[system.scala 79:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel3_reg_1 <= rules_15_io_channel3_out_1; // @[system.scala 79:14]
    end else begin
      channel3_reg_1 <= _GEN_301;
    end
    if (_T_36) begin // @[system.scala 76:21]
      channel3_reg_2 <= rules_18_io_channel3_out_2; // @[system.scala 79:14]
    end else if (_T_34) begin // @[system.scala 76:21]
      channel3_reg_2 <= rules_17_io_channel3_out_2; // @[system.scala 79:14]
    end else if (_T_32) begin // @[system.scala 76:21]
      channel3_reg_2 <= rules_16_io_channel3_out_2; // @[system.scala 79:14]
    end else if (_T_30) begin // @[system.scala 76:21]
      channel3_reg_2 <= rules_15_io_channel3_out_2; // @[system.scala 79:14]
    end else begin
      channel3_reg_2 <= _GEN_302;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_sharer_list_reg_0 <= rules_18_io_home_sharer_list_out_0; // @[system.scala 80:22]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_sharer_list_reg_0 <= rules_17_io_home_sharer_list_out_0; // @[system.scala 80:22]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_sharer_list_reg_0 <= rules_16_io_home_sharer_list_out_0; // @[system.scala 80:22]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_sharer_list_reg_0 <= rules_15_io_home_sharer_list_out_0; // @[system.scala 80:22]
    end else begin
      home_sharer_list_reg_0 <= _GEN_303;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_sharer_list_reg_1 <= rules_18_io_home_sharer_list_out_1; // @[system.scala 80:22]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_sharer_list_reg_1 <= rules_17_io_home_sharer_list_out_1; // @[system.scala 80:22]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_sharer_list_reg_1 <= rules_16_io_home_sharer_list_out_1; // @[system.scala 80:22]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_sharer_list_reg_1 <= rules_15_io_home_sharer_list_out_1; // @[system.scala 80:22]
    end else begin
      home_sharer_list_reg_1 <= _GEN_304;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_sharer_list_reg_2 <= rules_18_io_home_sharer_list_out_2; // @[system.scala 80:22]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_sharer_list_reg_2 <= rules_17_io_home_sharer_list_out_2; // @[system.scala 80:22]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_sharer_list_reg_2 <= rules_16_io_home_sharer_list_out_2; // @[system.scala 80:22]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_sharer_list_reg_2 <= rules_15_io_home_sharer_list_out_2; // @[system.scala 80:22]
    end else begin
      home_sharer_list_reg_2 <= _GEN_305;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_invalidate_list_reg_0 <= rules_18_io_home_invalidate_list_out_0; // @[system.scala 81:26]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_invalidate_list_reg_0 <= rules_17_io_home_invalidate_list_out_0; // @[system.scala 81:26]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_invalidate_list_reg_0 <= rules_16_io_home_invalidate_list_out_0; // @[system.scala 81:26]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_invalidate_list_reg_0 <= rules_15_io_home_invalidate_list_out_0; // @[system.scala 81:26]
    end else begin
      home_invalidate_list_reg_0 <= _GEN_306;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_invalidate_list_reg_1 <= rules_18_io_home_invalidate_list_out_1; // @[system.scala 81:26]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_invalidate_list_reg_1 <= rules_17_io_home_invalidate_list_out_1; // @[system.scala 81:26]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_invalidate_list_reg_1 <= rules_16_io_home_invalidate_list_out_1; // @[system.scala 81:26]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_invalidate_list_reg_1 <= rules_15_io_home_invalidate_list_out_1; // @[system.scala 81:26]
    end else begin
      home_invalidate_list_reg_1 <= _GEN_307;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_invalidate_list_reg_2 <= rules_18_io_home_invalidate_list_out_2; // @[system.scala 81:26]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_invalidate_list_reg_2 <= rules_17_io_home_invalidate_list_out_2; // @[system.scala 81:26]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_invalidate_list_reg_2 <= rules_16_io_home_invalidate_list_out_2; // @[system.scala 81:26]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_invalidate_list_reg_2 <= rules_15_io_home_invalidate_list_out_2; // @[system.scala 81:26]
    end else begin
      home_invalidate_list_reg_2 <= _GEN_308;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_exclusive_granted_reg <= rules_18_io_home_exclusive_granted_out; // @[system.scala 82:28]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_exclusive_granted_reg <= rules_17_io_home_exclusive_granted_out; // @[system.scala 82:28]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_exclusive_granted_reg <= rules_16_io_home_exclusive_granted_out; // @[system.scala 82:28]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_exclusive_granted_reg <= rules_15_io_home_exclusive_granted_out; // @[system.scala 82:28]
    end else begin
      home_exclusive_granted_reg <= _GEN_309;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_current_command_reg <= rules_18_io_home_current_command_out; // @[system.scala 83:26]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_current_command_reg <= rules_17_io_home_current_command_out; // @[system.scala 83:26]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_current_command_reg <= rules_16_io_home_current_command_out; // @[system.scala 83:26]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_current_command_reg <= rules_15_io_home_current_command_out; // @[system.scala 83:26]
    end else begin
      home_current_command_reg <= _GEN_310;
    end
    if (_T_36) begin // @[system.scala 76:21]
      home_current_client_reg <= rules_18_io_home_current_client_out; // @[system.scala 84:25]
    end else if (_T_34) begin // @[system.scala 76:21]
      home_current_client_reg <= rules_17_io_home_current_client_out; // @[system.scala 84:25]
    end else if (_T_32) begin // @[system.scala 76:21]
      home_current_client_reg <= rules_16_io_home_current_client_out; // @[system.scala 84:25]
    end else if (_T_30) begin // @[system.scala 76:21]
      home_current_client_reg <= rules_15_io_home_current_client_out; // @[system.scala 84:25]
    end else begin
      home_current_client_reg <= _GEN_311;
    end
    if (_T_36) begin // @[system.scala 76:21]
      cache_reg_0 <= rules_18_io_cache_out_0; // @[system.scala 85:11]
    end else if (_T_34) begin // @[system.scala 76:21]
      cache_reg_0 <= rules_17_io_cache_out_0; // @[system.scala 85:11]
    end else if (_T_32) begin // @[system.scala 76:21]
      cache_reg_0 <= rules_16_io_cache_out_0; // @[system.scala 85:11]
    end else if (_T_30) begin // @[system.scala 76:21]
      cache_reg_0 <= rules_15_io_cache_out_0; // @[system.scala 85:11]
    end else begin
      cache_reg_0 <= _GEN_312;
    end
    if (_T_36) begin // @[system.scala 76:21]
      cache_reg_1 <= rules_18_io_cache_out_1; // @[system.scala 85:11]
    end else if (_T_34) begin // @[system.scala 76:21]
      cache_reg_1 <= rules_17_io_cache_out_1; // @[system.scala 85:11]
    end else if (_T_32) begin // @[system.scala 76:21]
      cache_reg_1 <= rules_16_io_cache_out_1; // @[system.scala 85:11]
    end else if (_T_30) begin // @[system.scala 76:21]
      cache_reg_1 <= rules_15_io_cache_out_1; // @[system.scala 85:11]
    end else begin
      cache_reg_1 <= _GEN_313;
    end
    if (_T_36) begin // @[system.scala 76:21]
      cache_reg_2 <= rules_18_io_cache_out_2; // @[system.scala 85:11]
    end else if (_T_34) begin // @[system.scala 76:21]
      cache_reg_2 <= rules_17_io_cache_out_2; // @[system.scala 85:11]
    end else if (_T_32) begin // @[system.scala 76:21]
      cache_reg_2 <= rules_16_io_cache_out_2; // @[system.scala 85:11]
    end else if (_T_30) begin // @[system.scala 76:21]
      cache_reg_2 <= rules_15_io_cache_out_2; // @[system.scala 85:11]
    end else begin
      cache_reg_2 <= _GEN_314;
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
                    assume(reset==1&&io_en_a==0);
                end

                  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 107:7]
    end
    //
    if (~reset) begin
      assert(~(cache_reg_1 == 2'h2) | cache_reg_2 == 2'h0); // @[system.scala 107:7]
    end
    //
    if (~reset) begin
      assert(~(cache_reg_2 == 2'h2) | cache_reg_1 == 2'h0); // @[system.scala 107:7]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 107:7]
    end
  end
endmodule
