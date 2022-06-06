module rule_client_requests_shared_access(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_cache_in_0 == 2'h0 & io_channel1_in_0 == 3'h0 ? 3'h1 : io_channel1_in_0; // @[cache_err.scala 33:18 50:80 51:27]
  assign io_channel1_out_0 = io_en_r ? _GEN_0 : io_channel1_in_0; // @[cache_err.scala 48:16 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_client_requests_exclusive_access(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = (io_cache_in_0 == 2'h0 | io_cache_in_0 == 2'h1) & io_channel1_in_0 == 3'h0 ? 3'h2 :
    io_channel1_in_0; // @[cache_err.scala 62:116 33:18 63:27]
  assign io_channel1_out_0 = io_en_r ? _GEN_0 : io_channel1_in_0; // @[cache_err.scala 60:16 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_picks_new_request(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_home_current_command_in == 3'h0 & io_channel1_in_0 != 3'h0 ? io_channel1_in_0 :
    io_home_current_command_in; // @[cache_err.scala 39:30 76:89 77:35]
  wire [2:0] _GEN_1 = io_home_current_command_in == 3'h0 & io_channel1_in_0 != 3'h0 ? 3'h0 : io_channel1_in_0; // @[cache_err.scala 33:18 76:89 78:27]
  wire  _GEN_2 = io_home_current_command_in == 3'h0 & io_channel1_in_0 != 3'h0 ? 1'h0 : io_home_current_client_in; // @[cache_err.scala 40:29 76:89 79:34]
  wire  _GEN_3 = io_home_current_command_in == 3'h0 & io_channel1_in_0 != 3'h0 ? io_home_sharer_list_in_0 :
    io_home_invalidate_list_in_0; // @[cache_err.scala 37:30 76:89 81:40]
  wire  _GEN_4 = io_home_current_command_in == 3'h0 & io_channel1_in_0 != 3'h0 ? io_home_sharer_list_in_1 :
    io_home_invalidate_list_in_1; // @[cache_err.scala 37:30 76:89 81:40]
  assign io_channel1_out_0 = io_en_r ? _GEN_1 : io_channel1_in_0; // @[cache_err.scala 74:16 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_en_r ? _GEN_3 : io_home_invalidate_list_in_0; // @[cache_err.scala 74:16 37:30]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_4 : io_home_invalidate_list_in_1; // @[cache_err.scala 74:16 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_en_r ? _GEN_0 : io_home_current_command_in; // @[cache_err.scala 74:16 39:30]
  assign io_home_current_client_out = io_en_r ? _GEN_2 : io_home_current_client_in; // @[cache_err.scala 74:16 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_sends_invalidate_message(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in
     == 3'h2) & (io_home_invalidate_list_in_0 & io_channel2_4_in_0 == 3'h0) ? 3'h3 : io_channel2_4_in_0; // @[cache_err.scala 34:20 93:220 94:29]
  wire  _GEN_1 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in == 3'h2
    ) & (io_home_invalidate_list_in_0 & io_channel2_4_in_0 == 3'h0) ? 1'h0 : io_home_invalidate_list_in_0; // @[cache_err.scala 93:220 37:30 95:39]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_0 : io_channel2_4_in_0; // @[cache_err.scala 91:16 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_en_r ? _GEN_1 : io_home_invalidate_list_in_0; // @[cache_err.scala 91:16 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_receives_invalidate_acknowledgement(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire  _GEN_0 = io_home_current_command_in != 3'h0 & io_channel3_in_0 == 3'h4 ? 1'h0 : io_home_sharer_list_in_0; // @[cache_err.scala 106:98 107:35 36:26]
  wire  _GEN_1 = io_home_current_command_in != 3'h0 & io_channel3_in_0 == 3'h4 ? 1'h0 : io_home_exclusive_granted_in; // @[cache_err.scala 106:98 108:37 38:32]
  wire [2:0] _GEN_2 = io_home_current_command_in != 3'h0 & io_channel3_in_0 == 3'h4 ? 3'h0 : io_channel3_in_0; // @[cache_err.scala 106:98 109:27 35:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_en_r ? _GEN_2 : io_channel3_in_0; // @[cache_err.scala 104:16 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_en_r ? _GEN_0 : io_home_sharer_list_in_0; // @[cache_err.scala 104:16 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_en_r ? _GEN_1 : io_home_exclusive_granted_in; // @[cache_err.scala 104:16 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_sharer_invalidates_cache(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_channel2_4_in_0 == 3'h3 & io_channel3_in_0 == 3'h0 ? 3'h0 : io_channel2_4_in_0; // @[cache_err.scala 120:88 121:29 34:20]
  wire [2:0] _GEN_1 = io_channel2_4_in_0 == 3'h3 & io_channel3_in_0 == 3'h0 ? 3'h4 : io_channel3_in_0; // @[cache_err.scala 120:88 122:27 35:18]
  wire [1:0] _GEN_2 = io_channel2_4_in_0 == 3'h3 & io_channel3_in_0 == 3'h0 ? 2'h0 : io_cache_in_0; // @[cache_err.scala 120:88 123:24 41:15]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_0 : io_channel2_4_in_0; // @[cache_err.scala 118:16 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_en_r ? _GEN_1 : io_channel3_in_0; // @[cache_err.scala 118:16 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_en_r ? _GEN_2 : io_cache_in_0; // @[cache_err.scala 118:16 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_client_receives_shared_grant(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [1:0] _GEN_0 = io_channel2_4_in_0 == 3'h5 ? 2'h1 : io_cache_in_0; // @[cache_err.scala 134:52 135:24 41:15]
  wire [2:0] _GEN_1 = io_channel2_4_in_0 == 3'h5 ? 3'h0 : io_channel2_4_in_0; // @[cache_err.scala 134:52 136:29 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_1 : io_channel2_4_in_0; // @[cache_err.scala 132:16 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_en_r ? _GEN_0 : io_cache_in_0; // @[cache_err.scala 132:16 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_client_received_exclusive_grant(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [1:0] _GEN_0 = io_channel2_4_in_0 == 3'h6 ? 2'h2 : io_cache_in_0; // @[cache_err.scala 147:55 148:24 41:15]
  wire [2:0] _GEN_1 = io_channel2_4_in_0 == 3'h6 ? 3'h0 : io_channel2_4_in_0; // @[cache_err.scala 147:55 149:29 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_1 : io_channel2_4_in_0; // @[cache_err.scala 145:16 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_en_r ? _GEN_0 : io_cache_in_0; // @[cache_err.scala 145:16 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_client_requests_shared_access_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_cache_in_1 == 2'h0 & io_channel1_in_1 == 3'h0 ? 3'h1 : io_channel1_in_1; // @[cache_err.scala 33:18 50:80 51:27]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_en_r ? _GEN_0 : io_channel1_in_1; // @[cache_err.scala 48:16 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_client_requests_exclusive_access_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = (io_cache_in_1 == 2'h0 | io_cache_in_1 == 2'h1) & io_channel1_in_1 == 3'h0 ? 3'h2 :
    io_channel1_in_1; // @[cache_err.scala 62:116 33:18 63:27]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_en_r ? _GEN_0 : io_channel1_in_1; // @[cache_err.scala 60:16 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_picks_new_request_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_channel1_in_1 :
    io_home_current_command_in; // @[cache_err.scala 39:30 76:89 77:35]
  wire [2:0] _GEN_1 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? 3'h0 : io_channel1_in_1; // @[cache_err.scala 33:18 76:89 78:27]
  wire  _GEN_2 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 | io_home_current_client_in; // @[cache_err.scala 40:29 76:89 79:34]
  wire  _GEN_3 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_home_sharer_list_in_0 :
    io_home_invalidate_list_in_0; // @[cache_err.scala 37:30 76:89 81:40]
  wire  _GEN_4 = io_home_current_command_in == 3'h0 & io_channel1_in_1 != 3'h0 ? io_home_sharer_list_in_1 :
    io_home_invalidate_list_in_1; // @[cache_err.scala 37:30 76:89 81:40]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_en_r ? _GEN_1 : io_channel1_in_1; // @[cache_err.scala 74:16 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_en_r ? _GEN_3 : io_home_invalidate_list_in_0; // @[cache_err.scala 74:16 37:30]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_4 : io_home_invalidate_list_in_1; // @[cache_err.scala 74:16 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_en_r ? _GEN_0 : io_home_current_command_in; // @[cache_err.scala 74:16 39:30]
  assign io_home_current_client_out = io_en_r ? _GEN_2 : io_home_current_client_in; // @[cache_err.scala 74:16 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_sends_invalidate_message_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in
     == 3'h2) & (io_home_invalidate_list_in_1 & io_channel2_4_in_1 == 3'h0) ? 3'h3 : io_channel2_4_in_1; // @[cache_err.scala 34:20 93:220 94:29]
  wire  _GEN_1 = (io_home_current_command_in == 3'h1 & io_home_exclusive_granted_in | io_home_current_command_in == 3'h2
    ) & (io_home_invalidate_list_in_1 & io_channel2_4_in_1 == 3'h0) ? 1'h0 : io_home_invalidate_list_in_1; // @[cache_err.scala 93:220 37:30 95:39]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_0 : io_channel2_4_in_1; // @[cache_err.scala 91:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_en_r ? _GEN_1 : io_home_invalidate_list_in_1; // @[cache_err.scala 91:16 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_receives_invalidate_acknowledgement_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire  _GEN_0 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 1'h0 : io_home_sharer_list_in_1; // @[cache_err.scala 106:98 107:35 36:26]
  wire  _GEN_1 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 1'h0 : io_home_exclusive_granted_in; // @[cache_err.scala 106:98 108:37 38:32]
  wire [2:0] _GEN_2 = io_home_current_command_in != 3'h0 & io_channel3_in_1 == 3'h4 ? 3'h0 : io_channel3_in_1; // @[cache_err.scala 106:98 109:27 35:18]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_channel2_4_in_1; // @[cache_err.scala 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_en_r ? _GEN_2 : io_channel3_in_1; // @[cache_err.scala 104:16 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_0 : io_home_sharer_list_in_1; // @[cache_err.scala 104:16 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_en_r ? _GEN_1 : io_home_exclusive_granted_in; // @[cache_err.scala 104:16 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_sharer_invalidates_cache_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_0 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 3'h0 : io_channel2_4_in_1; // @[cache_err.scala 120:88 121:29 34:20]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 3'h4 : io_channel3_in_1; // @[cache_err.scala 120:88 122:27 35:18]
  wire [1:0] _GEN_2 = io_channel2_4_in_1 == 3'h3 & io_channel3_in_1 == 3'h0 ? 2'h0 : io_cache_in_1; // @[cache_err.scala 120:88 123:24 41:15]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_0 : io_channel2_4_in_1; // @[cache_err.scala 118:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_en_r ? _GEN_1 : io_channel3_in_1; // @[cache_err.scala 118:16 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_en_r ? _GEN_2 : io_cache_in_1; // @[cache_err.scala 118:16 41:15]
endmodule
module rule_client_receives_shared_grant_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [1:0] _GEN_0 = io_channel2_4_in_1 == 3'h5 ? 2'h1 : io_cache_in_1; // @[cache_err.scala 134:52 135:24 41:15]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h5 ? 3'h0 : io_channel2_4_in_1; // @[cache_err.scala 134:52 136:29 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_1 : io_channel2_4_in_1; // @[cache_err.scala 132:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_en_r ? _GEN_0 : io_cache_in_1; // @[cache_err.scala 132:16 41:15]
endmodule
module rule_client_received_exclusive_grant_1(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [1:0] _GEN_0 = io_channel2_4_in_1 == 3'h6 ? 2'h2 : io_cache_in_1; // @[cache_err.scala 147:55 148:24 41:15]
  wire [2:0] _GEN_1 = io_channel2_4_in_1 == 3'h6 ? 3'h0 : io_channel2_4_in_1; // @[cache_err.scala 147:55 149:29 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_channel2_4_in_0; // @[cache_err.scala 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_1 : io_channel2_4_in_1; // @[cache_err.scala 145:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_home_sharer_list_in_0; // @[cache_err.scala 36:26]
  assign io_home_sharer_list_out_1 = io_home_sharer_list_in_1; // @[cache_err.scala 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_home_current_command_in; // @[cache_err.scala 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_en_r ? _GEN_0 : io_cache_in_1; // @[cache_err.scala 145:16 41:15]
endmodule
module rule_home_sends_reply_to_client_shared(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire [2:0] _GEN_1 = io_home_current_client_in ? io_channel2_4_in_1 : io_channel2_4_in_0; // @[cache_err.scala 160:{141,141}]
  wire  _GEN_2 = ~io_home_current_client_in | io_home_sharer_list_in_0; // @[cache_err.scala 161:{58,58} 36:26]
  wire  _GEN_3 = io_home_current_client_in | io_home_sharer_list_in_1; // @[cache_err.scala 161:{58,58} 36:26]
  wire [2:0] _GEN_4 = ~io_home_current_client_in ? 3'h5 : io_channel2_4_in_0; // @[cache_err.scala 163:{52,52} 34:20]
  wire [2:0] _GEN_5 = io_home_current_client_in ? 3'h5 : io_channel2_4_in_1; // @[cache_err.scala 163:{52,52} 34:20]
  wire  _GEN_6 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_1 == 3'h0) ? _GEN_2 :
    io_home_sharer_list_in_0; // @[cache_err.scala 160:156 36:26]
  wire  _GEN_7 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_1 == 3'h0) ? _GEN_3 :
    io_home_sharer_list_in_1; // @[cache_err.scala 160:156 36:26]
  wire [2:0] _GEN_8 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_1 == 3'h0) ? 3'h0 :
    io_home_current_command_in; // @[cache_err.scala 160:156 162:35 39:30]
  wire [2:0] _GEN_9 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_1 == 3'h0) ? _GEN_4 :
    io_channel2_4_in_0; // @[cache_err.scala 160:156 34:20]
  wire [2:0] _GEN_10 = io_home_current_command_in == 3'h1 & (~io_home_exclusive_granted_in & _GEN_1 == 3'h0) ? _GEN_5 :
    io_channel2_4_in_1; // @[cache_err.scala 160:156 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_9 : io_channel2_4_in_0; // @[cache_err.scala 158:16 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_10 : io_channel2_4_in_1; // @[cache_err.scala 158:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_en_r ? _GEN_6 : io_home_sharer_list_in_0; // @[cache_err.scala 158:16 36:26]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_7 : io_home_sharer_list_in_1; // @[cache_err.scala 158:16 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_en_r ? _GEN_8 : io_home_current_command_in; // @[cache_err.scala 158:16 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module rule_home_sends_reply_to_client_exclusive(
  input        io_en_r,
  input  [2:0] io_channel1_in_0,
  input  [2:0] io_channel1_in_1,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  input  [2:0] io_channel2_4_in_0,
  input  [2:0] io_channel2_4_in_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  input  [2:0] io_channel3_in_0,
  input  [2:0] io_channel3_in_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  input        io_home_sharer_list_in_0,
  input        io_home_sharer_list_in_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  input        io_home_invalidate_list_in_0,
  input        io_home_invalidate_list_in_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  input        io_home_exclusive_granted_in,
  output       io_home_exclusive_granted_out,
  input  [2:0] io_home_current_command_in,
  output [2:0] io_home_current_command_out,
  input        io_home_current_client_in,
  output       io_home_current_client_out,
  input  [1:0] io_cache_in_0,
  input  [1:0] io_cache_in_1,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
);
  wire  _GEN_0 = ~(~io_home_sharer_list_in_0) ? 1'h0 : 1'h1; // @[cache_err.scala 174:17 176:55 177:21]
  wire  forall_flag = ~(~io_home_sharer_list_in_1) ? 1'h0 : _GEN_0; // @[cache_err.scala 176:55 177:21]
  wire [2:0] _GEN_3 = io_home_current_client_in ? io_channel2_4_in_1 : io_channel2_4_in_0; // @[cache_err.scala 180:{124,124}]
  wire  _GEN_4 = ~io_home_current_client_in | io_home_sharer_list_in_0; // @[cache_err.scala 181:{58,58} 36:26]
  wire  _GEN_5 = io_home_current_client_in | io_home_sharer_list_in_1; // @[cache_err.scala 181:{58,58} 36:26]
  wire [2:0] _GEN_6 = ~io_home_current_client_in ? 3'h6 : io_channel2_4_in_0; // @[cache_err.scala 183:{52,52} 34:20]
  wire [2:0] _GEN_7 = io_home_current_client_in ? 3'h6 : io_channel2_4_in_1; // @[cache_err.scala 183:{52,52} 34:20]
  wire  _GEN_8 = io_home_current_command_in == 3'h2 & (forall_flag & _GEN_3 == 3'h0) ? _GEN_4 : io_home_sharer_list_in_0
    ; // @[cache_err.scala 180:139 36:26]
  wire  _GEN_9 = io_home_current_command_in == 3'h2 & (forall_flag & _GEN_3 == 3'h0) ? _GEN_5 : io_home_sharer_list_in_1
    ; // @[cache_err.scala 180:139 36:26]
  wire [2:0] _GEN_10 = io_home_current_command_in == 3'h2 & (forall_flag & _GEN_3 == 3'h0) ? 3'h0 :
    io_home_current_command_in; // @[cache_err.scala 180:139 182:35 39:30]
  wire [2:0] _GEN_11 = io_home_current_command_in == 3'h2 & (forall_flag & _GEN_3 == 3'h0) ? _GEN_6 : io_channel2_4_in_0
    ; // @[cache_err.scala 180:139 34:20]
  wire [2:0] _GEN_12 = io_home_current_command_in == 3'h2 & (forall_flag & _GEN_3 == 3'h0) ? _GEN_7 : io_channel2_4_in_1
    ; // @[cache_err.scala 180:139 34:20]
  assign io_channel1_out_0 = io_channel1_in_0; // @[cache_err.scala 33:18]
  assign io_channel1_out_1 = io_channel1_in_1; // @[cache_err.scala 33:18]
  assign io_channel2_4_out_0 = io_en_r ? _GEN_11 : io_channel2_4_in_0; // @[cache_err.scala 172:16 34:20]
  assign io_channel2_4_out_1 = io_en_r ? _GEN_12 : io_channel2_4_in_1; // @[cache_err.scala 172:16 34:20]
  assign io_channel3_out_0 = io_channel3_in_0; // @[cache_err.scala 35:18]
  assign io_channel3_out_1 = io_channel3_in_1; // @[cache_err.scala 35:18]
  assign io_home_sharer_list_out_0 = io_en_r ? _GEN_8 : io_home_sharer_list_in_0; // @[cache_err.scala 172:16 36:26]
  assign io_home_sharer_list_out_1 = io_en_r ? _GEN_9 : io_home_sharer_list_in_1; // @[cache_err.scala 172:16 36:26]
  assign io_home_invalidate_list_out_0 = io_home_invalidate_list_in_0; // @[cache_err.scala 37:30]
  assign io_home_invalidate_list_out_1 = io_home_invalidate_list_in_1; // @[cache_err.scala 37:30]
  assign io_home_exclusive_granted_out = io_home_exclusive_granted_in; // @[cache_err.scala 38:32]
  assign io_home_current_command_out = io_en_r ? _GEN_10 : io_home_current_command_in; // @[cache_err.scala 172:16 39:30]
  assign io_home_current_client_out = io_home_current_client_in; // @[cache_err.scala 40:29]
  assign io_cache_out_0 = io_cache_in_0; // @[cache_err.scala 41:15]
  assign io_cache_out_1 = io_cache_in_1; // @[cache_err.scala 41:15]
endmodule
module cache_err(
  input        clock,
  input        reset,
  input  [4:0] io_en_a,
  output [2:0] io_channel1_out_0,
  output [2:0] io_channel1_out_1,
  output [2:0] io_channel2_4_out_0,
  output [2:0] io_channel2_4_out_1,
  output [2:0] io_channel3_out_0,
  output [2:0] io_channel3_out_1,
  output       io_home_sharer_list_out_0,
  output       io_home_sharer_list_out_1,
  output       io_home_invalidate_list_out_0,
  output       io_home_invalidate_list_out_1,
  output       io_home_exclusive_granted_out,
  output [2:0] io_home_current_command_out,
  output       io_home_current_client_out,
  output [1:0] io_cache_out_0,
  output [1:0] io_cache_out_1
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
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel1_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel1_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel1_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel1_out_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel2_4_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel2_4_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel2_4_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel2_4_out_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel3_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel3_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel3_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_channel3_out_1; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_sharer_list_in_0; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_sharer_list_in_1; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_sharer_list_out_0; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_sharer_list_out_1; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_invalidate_list_in_0; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_invalidate_list_in_1; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_invalidate_list_out_0; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_invalidate_list_out_1; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_exclusive_granted_in; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_exclusive_granted_out; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_home_current_command_in; // @[cache_err.scala 250:20]
  wire [2:0] rules_0_io_home_current_command_out; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_current_client_in; // @[cache_err.scala 250:20]
  wire  rules_0_io_home_current_client_out; // @[cache_err.scala 250:20]
  wire [1:0] rules_0_io_cache_in_0; // @[cache_err.scala 250:20]
  wire [1:0] rules_0_io_cache_in_1; // @[cache_err.scala 250:20]
  wire [1:0] rules_0_io_cache_out_0; // @[cache_err.scala 250:20]
  wire [1:0] rules_0_io_cache_out_1; // @[cache_err.scala 250:20]
  wire  rules_1_io_en_r; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel1_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel1_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel1_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel1_out_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel2_4_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel2_4_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel2_4_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel2_4_out_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel3_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel3_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel3_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_channel3_out_1; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_sharer_list_in_0; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_sharer_list_in_1; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_sharer_list_out_0; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_sharer_list_out_1; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_invalidate_list_in_0; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_invalidate_list_in_1; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_invalidate_list_out_0; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_invalidate_list_out_1; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_exclusive_granted_in; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_exclusive_granted_out; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_home_current_command_in; // @[cache_err.scala 251:20]
  wire [2:0] rules_1_io_home_current_command_out; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_current_client_in; // @[cache_err.scala 251:20]
  wire  rules_1_io_home_current_client_out; // @[cache_err.scala 251:20]
  wire [1:0] rules_1_io_cache_in_0; // @[cache_err.scala 251:20]
  wire [1:0] rules_1_io_cache_in_1; // @[cache_err.scala 251:20]
  wire [1:0] rules_1_io_cache_out_0; // @[cache_err.scala 251:20]
  wire [1:0] rules_1_io_cache_out_1; // @[cache_err.scala 251:20]
  wire  rules_2_io_en_r; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel1_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel1_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel1_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel1_out_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel2_4_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel2_4_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel2_4_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel2_4_out_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel3_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel3_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel3_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_channel3_out_1; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_sharer_list_in_0; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_sharer_list_in_1; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_sharer_list_out_0; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_sharer_list_out_1; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_invalidate_list_in_0; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_invalidate_list_in_1; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_invalidate_list_out_0; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_invalidate_list_out_1; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_exclusive_granted_in; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_exclusive_granted_out; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_home_current_command_in; // @[cache_err.scala 252:20]
  wire [2:0] rules_2_io_home_current_command_out; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_current_client_in; // @[cache_err.scala 252:20]
  wire  rules_2_io_home_current_client_out; // @[cache_err.scala 252:20]
  wire [1:0] rules_2_io_cache_in_0; // @[cache_err.scala 252:20]
  wire [1:0] rules_2_io_cache_in_1; // @[cache_err.scala 252:20]
  wire [1:0] rules_2_io_cache_out_0; // @[cache_err.scala 252:20]
  wire [1:0] rules_2_io_cache_out_1; // @[cache_err.scala 252:20]
  wire  rules_3_io_en_r; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel1_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel1_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel1_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel1_out_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel2_4_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel2_4_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel2_4_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel2_4_out_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel3_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel3_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel3_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_channel3_out_1; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_sharer_list_in_0; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_sharer_list_in_1; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_sharer_list_out_0; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_sharer_list_out_1; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_invalidate_list_in_0; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_invalidate_list_in_1; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_invalidate_list_out_0; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_invalidate_list_out_1; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_exclusive_granted_in; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_exclusive_granted_out; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_home_current_command_in; // @[cache_err.scala 253:20]
  wire [2:0] rules_3_io_home_current_command_out; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_current_client_in; // @[cache_err.scala 253:20]
  wire  rules_3_io_home_current_client_out; // @[cache_err.scala 253:20]
  wire [1:0] rules_3_io_cache_in_0; // @[cache_err.scala 253:20]
  wire [1:0] rules_3_io_cache_in_1; // @[cache_err.scala 253:20]
  wire [1:0] rules_3_io_cache_out_0; // @[cache_err.scala 253:20]
  wire [1:0] rules_3_io_cache_out_1; // @[cache_err.scala 253:20]
  wire  rules_4_io_en_r; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel1_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel1_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel1_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel1_out_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel2_4_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel2_4_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel2_4_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel2_4_out_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel3_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel3_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel3_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_channel3_out_1; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_sharer_list_in_0; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_sharer_list_in_1; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_sharer_list_out_0; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_sharer_list_out_1; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_invalidate_list_in_0; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_invalidate_list_in_1; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_invalidate_list_out_0; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_invalidate_list_out_1; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_exclusive_granted_in; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_exclusive_granted_out; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_home_current_command_in; // @[cache_err.scala 254:20]
  wire [2:0] rules_4_io_home_current_command_out; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_current_client_in; // @[cache_err.scala 254:20]
  wire  rules_4_io_home_current_client_out; // @[cache_err.scala 254:20]
  wire [1:0] rules_4_io_cache_in_0; // @[cache_err.scala 254:20]
  wire [1:0] rules_4_io_cache_in_1; // @[cache_err.scala 254:20]
  wire [1:0] rules_4_io_cache_out_0; // @[cache_err.scala 254:20]
  wire [1:0] rules_4_io_cache_out_1; // @[cache_err.scala 254:20]
  wire  rules_5_io_en_r; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel1_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel1_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel1_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel1_out_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel2_4_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel2_4_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel2_4_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel2_4_out_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel3_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel3_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel3_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_channel3_out_1; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_sharer_list_in_0; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_sharer_list_in_1; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_sharer_list_out_0; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_sharer_list_out_1; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_invalidate_list_in_0; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_invalidate_list_in_1; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_invalidate_list_out_0; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_invalidate_list_out_1; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_exclusive_granted_in; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_exclusive_granted_out; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_home_current_command_in; // @[cache_err.scala 255:20]
  wire [2:0] rules_5_io_home_current_command_out; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_current_client_in; // @[cache_err.scala 255:20]
  wire  rules_5_io_home_current_client_out; // @[cache_err.scala 255:20]
  wire [1:0] rules_5_io_cache_in_0; // @[cache_err.scala 255:20]
  wire [1:0] rules_5_io_cache_in_1; // @[cache_err.scala 255:20]
  wire [1:0] rules_5_io_cache_out_0; // @[cache_err.scala 255:20]
  wire [1:0] rules_5_io_cache_out_1; // @[cache_err.scala 255:20]
  wire  rules_6_io_en_r; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel1_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel1_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel1_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel1_out_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel2_4_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel2_4_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel2_4_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel2_4_out_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel3_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel3_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel3_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_channel3_out_1; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_sharer_list_in_0; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_sharer_list_in_1; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_sharer_list_out_0; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_sharer_list_out_1; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_invalidate_list_in_0; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_invalidate_list_in_1; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_invalidate_list_out_0; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_invalidate_list_out_1; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_exclusive_granted_in; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_exclusive_granted_out; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_home_current_command_in; // @[cache_err.scala 256:20]
  wire [2:0] rules_6_io_home_current_command_out; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_current_client_in; // @[cache_err.scala 256:20]
  wire  rules_6_io_home_current_client_out; // @[cache_err.scala 256:20]
  wire [1:0] rules_6_io_cache_in_0; // @[cache_err.scala 256:20]
  wire [1:0] rules_6_io_cache_in_1; // @[cache_err.scala 256:20]
  wire [1:0] rules_6_io_cache_out_0; // @[cache_err.scala 256:20]
  wire [1:0] rules_6_io_cache_out_1; // @[cache_err.scala 256:20]
  wire  rules_7_io_en_r; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel1_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel1_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel1_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel1_out_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel2_4_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel2_4_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel2_4_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel2_4_out_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel3_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel3_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel3_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_channel3_out_1; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_sharer_list_in_0; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_sharer_list_in_1; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_sharer_list_out_0; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_sharer_list_out_1; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_invalidate_list_in_0; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_invalidate_list_in_1; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_invalidate_list_out_0; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_invalidate_list_out_1; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_exclusive_granted_in; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_exclusive_granted_out; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_home_current_command_in; // @[cache_err.scala 257:20]
  wire [2:0] rules_7_io_home_current_command_out; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_current_client_in; // @[cache_err.scala 257:20]
  wire  rules_7_io_home_current_client_out; // @[cache_err.scala 257:20]
  wire [1:0] rules_7_io_cache_in_0; // @[cache_err.scala 257:20]
  wire [1:0] rules_7_io_cache_in_1; // @[cache_err.scala 257:20]
  wire [1:0] rules_7_io_cache_out_0; // @[cache_err.scala 257:20]
  wire [1:0] rules_7_io_cache_out_1; // @[cache_err.scala 257:20]
  wire  rules_8_io_en_r; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel1_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel1_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel1_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel1_out_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel2_4_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel2_4_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel2_4_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel2_4_out_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel3_in_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel3_in_1; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel3_out_0; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_channel3_out_1; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_sharer_list_in_0; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_sharer_list_in_1; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_sharer_list_out_0; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_sharer_list_out_1; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_invalidate_list_in_0; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_invalidate_list_in_1; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_invalidate_list_out_0; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_invalidate_list_out_1; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_exclusive_granted_in; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_exclusive_granted_out; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_home_current_command_in; // @[cache_err.scala 250:20]
  wire [2:0] rules_8_io_home_current_command_out; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_current_client_in; // @[cache_err.scala 250:20]
  wire  rules_8_io_home_current_client_out; // @[cache_err.scala 250:20]
  wire [1:0] rules_8_io_cache_in_0; // @[cache_err.scala 250:20]
  wire [1:0] rules_8_io_cache_in_1; // @[cache_err.scala 250:20]
  wire [1:0] rules_8_io_cache_out_0; // @[cache_err.scala 250:20]
  wire [1:0] rules_8_io_cache_out_1; // @[cache_err.scala 250:20]
  wire  rules_9_io_en_r; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel1_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel1_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel1_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel1_out_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel2_4_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel2_4_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel2_4_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel2_4_out_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel3_in_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel3_in_1; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel3_out_0; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_channel3_out_1; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_sharer_list_in_0; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_sharer_list_in_1; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_sharer_list_out_0; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_sharer_list_out_1; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_invalidate_list_in_0; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_invalidate_list_in_1; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_invalidate_list_out_0; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_invalidate_list_out_1; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_exclusive_granted_in; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_exclusive_granted_out; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_home_current_command_in; // @[cache_err.scala 251:20]
  wire [2:0] rules_9_io_home_current_command_out; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_current_client_in; // @[cache_err.scala 251:20]
  wire  rules_9_io_home_current_client_out; // @[cache_err.scala 251:20]
  wire [1:0] rules_9_io_cache_in_0; // @[cache_err.scala 251:20]
  wire [1:0] rules_9_io_cache_in_1; // @[cache_err.scala 251:20]
  wire [1:0] rules_9_io_cache_out_0; // @[cache_err.scala 251:20]
  wire [1:0] rules_9_io_cache_out_1; // @[cache_err.scala 251:20]
  wire  rules_10_io_en_r; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel1_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel1_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel1_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel1_out_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel2_4_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel2_4_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel2_4_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel2_4_out_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel3_in_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel3_in_1; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel3_out_0; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_channel3_out_1; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_sharer_list_in_0; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_sharer_list_in_1; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_sharer_list_out_0; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_sharer_list_out_1; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_invalidate_list_in_0; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_invalidate_list_in_1; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_invalidate_list_out_0; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_invalidate_list_out_1; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_exclusive_granted_in; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_exclusive_granted_out; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_home_current_command_in; // @[cache_err.scala 252:20]
  wire [2:0] rules_10_io_home_current_command_out; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_current_client_in; // @[cache_err.scala 252:20]
  wire  rules_10_io_home_current_client_out; // @[cache_err.scala 252:20]
  wire [1:0] rules_10_io_cache_in_0; // @[cache_err.scala 252:20]
  wire [1:0] rules_10_io_cache_in_1; // @[cache_err.scala 252:20]
  wire [1:0] rules_10_io_cache_out_0; // @[cache_err.scala 252:20]
  wire [1:0] rules_10_io_cache_out_1; // @[cache_err.scala 252:20]
  wire  rules_11_io_en_r; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel1_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel1_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel1_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel1_out_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel2_4_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel2_4_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel2_4_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel2_4_out_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel3_in_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel3_in_1; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel3_out_0; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_channel3_out_1; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_sharer_list_in_0; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_sharer_list_in_1; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_sharer_list_out_0; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_sharer_list_out_1; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_invalidate_list_in_0; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_invalidate_list_in_1; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_invalidate_list_out_0; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_invalidate_list_out_1; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_exclusive_granted_in; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_exclusive_granted_out; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_home_current_command_in; // @[cache_err.scala 253:20]
  wire [2:0] rules_11_io_home_current_command_out; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_current_client_in; // @[cache_err.scala 253:20]
  wire  rules_11_io_home_current_client_out; // @[cache_err.scala 253:20]
  wire [1:0] rules_11_io_cache_in_0; // @[cache_err.scala 253:20]
  wire [1:0] rules_11_io_cache_in_1; // @[cache_err.scala 253:20]
  wire [1:0] rules_11_io_cache_out_0; // @[cache_err.scala 253:20]
  wire [1:0] rules_11_io_cache_out_1; // @[cache_err.scala 253:20]
  wire  rules_12_io_en_r; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel1_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel1_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel1_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel1_out_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel2_4_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel2_4_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel2_4_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel2_4_out_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel3_in_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel3_in_1; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel3_out_0; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_channel3_out_1; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_sharer_list_in_0; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_sharer_list_in_1; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_sharer_list_out_0; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_sharer_list_out_1; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_invalidate_list_in_0; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_invalidate_list_in_1; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_invalidate_list_out_0; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_invalidate_list_out_1; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_exclusive_granted_in; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_exclusive_granted_out; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_home_current_command_in; // @[cache_err.scala 254:20]
  wire [2:0] rules_12_io_home_current_command_out; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_current_client_in; // @[cache_err.scala 254:20]
  wire  rules_12_io_home_current_client_out; // @[cache_err.scala 254:20]
  wire [1:0] rules_12_io_cache_in_0; // @[cache_err.scala 254:20]
  wire [1:0] rules_12_io_cache_in_1; // @[cache_err.scala 254:20]
  wire [1:0] rules_12_io_cache_out_0; // @[cache_err.scala 254:20]
  wire [1:0] rules_12_io_cache_out_1; // @[cache_err.scala 254:20]
  wire  rules_13_io_en_r; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel1_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel1_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel1_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel1_out_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel2_4_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel2_4_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel2_4_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel2_4_out_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel3_in_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel3_in_1; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel3_out_0; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_channel3_out_1; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_sharer_list_in_0; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_sharer_list_in_1; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_sharer_list_out_0; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_sharer_list_out_1; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_invalidate_list_in_0; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_invalidate_list_in_1; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_invalidate_list_out_0; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_invalidate_list_out_1; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_exclusive_granted_in; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_exclusive_granted_out; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_home_current_command_in; // @[cache_err.scala 255:20]
  wire [2:0] rules_13_io_home_current_command_out; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_current_client_in; // @[cache_err.scala 255:20]
  wire  rules_13_io_home_current_client_out; // @[cache_err.scala 255:20]
  wire [1:0] rules_13_io_cache_in_0; // @[cache_err.scala 255:20]
  wire [1:0] rules_13_io_cache_in_1; // @[cache_err.scala 255:20]
  wire [1:0] rules_13_io_cache_out_0; // @[cache_err.scala 255:20]
  wire [1:0] rules_13_io_cache_out_1; // @[cache_err.scala 255:20]
  wire  rules_14_io_en_r; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel1_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel1_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel1_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel1_out_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel2_4_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel2_4_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel2_4_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel2_4_out_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel3_in_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel3_in_1; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel3_out_0; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_channel3_out_1; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_sharer_list_in_0; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_sharer_list_in_1; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_sharer_list_out_0; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_sharer_list_out_1; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_invalidate_list_in_0; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_invalidate_list_in_1; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_invalidate_list_out_0; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_invalidate_list_out_1; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_exclusive_granted_in; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_exclusive_granted_out; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_home_current_command_in; // @[cache_err.scala 256:20]
  wire [2:0] rules_14_io_home_current_command_out; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_current_client_in; // @[cache_err.scala 256:20]
  wire  rules_14_io_home_current_client_out; // @[cache_err.scala 256:20]
  wire [1:0] rules_14_io_cache_in_0; // @[cache_err.scala 256:20]
  wire [1:0] rules_14_io_cache_in_1; // @[cache_err.scala 256:20]
  wire [1:0] rules_14_io_cache_out_0; // @[cache_err.scala 256:20]
  wire [1:0] rules_14_io_cache_out_1; // @[cache_err.scala 256:20]
  wire  rules_15_io_en_r; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel1_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel1_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel1_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel1_out_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel2_4_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel2_4_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel2_4_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel2_4_out_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel3_in_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel3_in_1; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel3_out_0; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_channel3_out_1; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_sharer_list_in_0; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_sharer_list_in_1; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_sharer_list_out_0; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_sharer_list_out_1; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_invalidate_list_in_0; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_invalidate_list_in_1; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_invalidate_list_out_0; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_invalidate_list_out_1; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_exclusive_granted_in; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_exclusive_granted_out; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_home_current_command_in; // @[cache_err.scala 257:20]
  wire [2:0] rules_15_io_home_current_command_out; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_current_client_in; // @[cache_err.scala 257:20]
  wire  rules_15_io_home_current_client_out; // @[cache_err.scala 257:20]
  wire [1:0] rules_15_io_cache_in_0; // @[cache_err.scala 257:20]
  wire [1:0] rules_15_io_cache_in_1; // @[cache_err.scala 257:20]
  wire [1:0] rules_15_io_cache_out_0; // @[cache_err.scala 257:20]
  wire [1:0] rules_15_io_cache_out_1; // @[cache_err.scala 257:20]
  wire  rules_16_io_en_r; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel1_in_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel1_in_1; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel1_out_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel1_out_1; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel2_4_in_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel2_4_in_1; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel2_4_out_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel2_4_out_1; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel3_in_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel3_in_1; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel3_out_0; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_channel3_out_1; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_sharer_list_in_0; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_sharer_list_in_1; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_sharer_list_out_0; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_sharer_list_out_1; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_invalidate_list_in_0; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_invalidate_list_in_1; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_invalidate_list_out_0; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_invalidate_list_out_1; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_exclusive_granted_in; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_exclusive_granted_out; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_home_current_command_in; // @[cache_err.scala 260:18]
  wire [2:0] rules_16_io_home_current_command_out; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_current_client_in; // @[cache_err.scala 260:18]
  wire  rules_16_io_home_current_client_out; // @[cache_err.scala 260:18]
  wire [1:0] rules_16_io_cache_in_0; // @[cache_err.scala 260:18]
  wire [1:0] rules_16_io_cache_in_1; // @[cache_err.scala 260:18]
  wire [1:0] rules_16_io_cache_out_0; // @[cache_err.scala 260:18]
  wire [1:0] rules_16_io_cache_out_1; // @[cache_err.scala 260:18]
  wire  rules_17_io_en_r; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel1_in_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel1_in_1; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel1_out_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel1_out_1; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel2_4_in_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel2_4_in_1; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel2_4_out_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel2_4_out_1; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel3_in_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel3_in_1; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel3_out_0; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_channel3_out_1; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_sharer_list_in_0; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_sharer_list_in_1; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_sharer_list_out_0; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_sharer_list_out_1; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_invalidate_list_in_0; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_invalidate_list_in_1; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_invalidate_list_out_0; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_invalidate_list_out_1; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_exclusive_granted_in; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_exclusive_granted_out; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_home_current_command_in; // @[cache_err.scala 261:18]
  wire [2:0] rules_17_io_home_current_command_out; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_current_client_in; // @[cache_err.scala 261:18]
  wire  rules_17_io_home_current_client_out; // @[cache_err.scala 261:18]
  wire [1:0] rules_17_io_cache_in_0; // @[cache_err.scala 261:18]
  wire [1:0] rules_17_io_cache_in_1; // @[cache_err.scala 261:18]
  wire [1:0] rules_17_io_cache_out_0; // @[cache_err.scala 261:18]
  wire [1:0] rules_17_io_cache_out_1; // @[cache_err.scala 261:18]
  reg [2:0] channel1_reg_0; // @[cache_err.scala 208:29]
  reg [2:0] channel1_reg_1; // @[cache_err.scala 208:29]
  reg [2:0] channel2_4_reg_0; // @[cache_err.scala 211:31]
  reg [2:0] channel2_4_reg_1; // @[cache_err.scala 211:31]
  reg [2:0] channel3_reg_0; // @[cache_err.scala 214:29]
  reg [2:0] channel3_reg_1; // @[cache_err.scala 214:29]
  reg  home_sharer_list_reg_0; // @[cache_err.scala 217:37]
  reg  home_sharer_list_reg_1; // @[cache_err.scala 217:37]
  reg  home_invalidate_list_reg_0; // @[cache_err.scala 220:41]
  reg  home_invalidate_list_reg_1; // @[cache_err.scala 220:41]
  reg  home_exclusive_granted_reg; // @[cache_err.scala 223:43]
  reg [2:0] home_current_command_reg; // @[cache_err.scala 226:41]
  reg  home_current_client_reg; // @[cache_err.scala 229:40]
  reg [1:0] cache_reg_0; // @[cache_err.scala 232:26]
  reg [1:0] cache_reg_1; // @[cache_err.scala 232:26]
  wire  _T = io_en_a == 5'h0; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_0 = _T ? rules_0_io_channel1_out_0 : channel1_reg_0; // @[cache_err.scala 273:29 274:20 208:29]
  wire [2:0] _GEN_1 = _T ? rules_0_io_channel1_out_1 : channel1_reg_1; // @[cache_err.scala 273:29 274:20 208:29]
  wire [2:0] _GEN_2 = _T ? rules_0_io_channel2_4_out_0 : channel2_4_reg_0; // @[cache_err.scala 273:29 275:22 211:31]
  wire [2:0] _GEN_3 = _T ? rules_0_io_channel2_4_out_1 : channel2_4_reg_1; // @[cache_err.scala 273:29 275:22 211:31]
  wire [2:0] _GEN_4 = _T ? rules_0_io_channel3_out_0 : channel3_reg_0; // @[cache_err.scala 273:29 276:20 214:29]
  wire [2:0] _GEN_5 = _T ? rules_0_io_channel3_out_1 : channel3_reg_1; // @[cache_err.scala 273:29 276:20 214:29]
  wire  _GEN_6 = _T ? rules_0_io_home_sharer_list_out_0 : home_sharer_list_reg_0; // @[cache_err.scala 273:29 277:28 217:37]
  wire  _GEN_7 = _T ? rules_0_io_home_sharer_list_out_1 : home_sharer_list_reg_1; // @[cache_err.scala 273:29 277:28 217:37]
  wire  _GEN_8 = _T ? rules_0_io_home_invalidate_list_out_0 : home_invalidate_list_reg_0; // @[cache_err.scala 273:29 278:32 220:41]
  wire  _GEN_9 = _T ? rules_0_io_home_invalidate_list_out_1 : home_invalidate_list_reg_1; // @[cache_err.scala 273:29 278:32 220:41]
  wire  _GEN_10 = _T ? rules_0_io_home_exclusive_granted_out : home_exclusive_granted_reg; // @[cache_err.scala 273:29 279:34 223:43]
  wire [2:0] _GEN_11 = _T ? rules_0_io_home_current_command_out : home_current_command_reg; // @[cache_err.scala 273:29 280:32 226:41]
  wire  _GEN_12 = _T ? rules_0_io_home_current_client_out : home_current_client_reg; // @[cache_err.scala 273:29 281:31 229:40]
  wire [1:0] _GEN_13 = _T ? rules_0_io_cache_out_0 : cache_reg_0; // @[cache_err.scala 273:29 282:17 232:26]
  wire [1:0] _GEN_14 = _T ? rules_0_io_cache_out_1 : cache_reg_1; // @[cache_err.scala 273:29 282:17 232:26]
  wire  _T_2 = io_en_a == 5'h1; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_15 = _T_2 ? rules_1_io_channel1_out_0 : _GEN_0; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_16 = _T_2 ? rules_1_io_channel1_out_1 : _GEN_1; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_17 = _T_2 ? rules_1_io_channel2_4_out_0 : _GEN_2; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_18 = _T_2 ? rules_1_io_channel2_4_out_1 : _GEN_3; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_19 = _T_2 ? rules_1_io_channel3_out_0 : _GEN_4; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_20 = _T_2 ? rules_1_io_channel3_out_1 : _GEN_5; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_21 = _T_2 ? rules_1_io_home_sharer_list_out_0 : _GEN_6; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_22 = _T_2 ? rules_1_io_home_sharer_list_out_1 : _GEN_7; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_23 = _T_2 ? rules_1_io_home_invalidate_list_out_0 : _GEN_8; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_24 = _T_2 ? rules_1_io_home_invalidate_list_out_1 : _GEN_9; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_25 = _T_2 ? rules_1_io_home_exclusive_granted_out : _GEN_10; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_26 = _T_2 ? rules_1_io_home_current_command_out : _GEN_11; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_27 = _T_2 ? rules_1_io_home_current_client_out : _GEN_12; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_28 = _T_2 ? rules_1_io_cache_out_0 : _GEN_13; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_29 = _T_2 ? rules_1_io_cache_out_1 : _GEN_14; // @[cache_err.scala 273:29 282:17]
  wire  _T_4 = io_en_a == 5'h2; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_30 = _T_4 ? rules_2_io_channel1_out_0 : _GEN_15; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_31 = _T_4 ? rules_2_io_channel1_out_1 : _GEN_16; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_32 = _T_4 ? rules_2_io_channel2_4_out_0 : _GEN_17; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_33 = _T_4 ? rules_2_io_channel2_4_out_1 : _GEN_18; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_34 = _T_4 ? rules_2_io_channel3_out_0 : _GEN_19; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_35 = _T_4 ? rules_2_io_channel3_out_1 : _GEN_20; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_36 = _T_4 ? rules_2_io_home_sharer_list_out_0 : _GEN_21; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_37 = _T_4 ? rules_2_io_home_sharer_list_out_1 : _GEN_22; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_38 = _T_4 ? rules_2_io_home_invalidate_list_out_0 : _GEN_23; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_39 = _T_4 ? rules_2_io_home_invalidate_list_out_1 : _GEN_24; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_40 = _T_4 ? rules_2_io_home_exclusive_granted_out : _GEN_25; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_41 = _T_4 ? rules_2_io_home_current_command_out : _GEN_26; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_42 = _T_4 ? rules_2_io_home_current_client_out : _GEN_27; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_43 = _T_4 ? rules_2_io_cache_out_0 : _GEN_28; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_44 = _T_4 ? rules_2_io_cache_out_1 : _GEN_29; // @[cache_err.scala 273:29 282:17]
  wire  _T_6 = io_en_a == 5'h3; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_45 = _T_6 ? rules_3_io_channel1_out_0 : _GEN_30; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_46 = _T_6 ? rules_3_io_channel1_out_1 : _GEN_31; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_47 = _T_6 ? rules_3_io_channel2_4_out_0 : _GEN_32; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_48 = _T_6 ? rules_3_io_channel2_4_out_1 : _GEN_33; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_49 = _T_6 ? rules_3_io_channel3_out_0 : _GEN_34; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_50 = _T_6 ? rules_3_io_channel3_out_1 : _GEN_35; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_51 = _T_6 ? rules_3_io_home_sharer_list_out_0 : _GEN_36; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_52 = _T_6 ? rules_3_io_home_sharer_list_out_1 : _GEN_37; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_53 = _T_6 ? rules_3_io_home_invalidate_list_out_0 : _GEN_38; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_54 = _T_6 ? rules_3_io_home_invalidate_list_out_1 : _GEN_39; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_55 = _T_6 ? rules_3_io_home_exclusive_granted_out : _GEN_40; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_56 = _T_6 ? rules_3_io_home_current_command_out : _GEN_41; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_57 = _T_6 ? rules_3_io_home_current_client_out : _GEN_42; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_58 = _T_6 ? rules_3_io_cache_out_0 : _GEN_43; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_59 = _T_6 ? rules_3_io_cache_out_1 : _GEN_44; // @[cache_err.scala 273:29 282:17]
  wire  _T_8 = io_en_a == 5'h4; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_60 = _T_8 ? rules_4_io_channel1_out_0 : _GEN_45; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_61 = _T_8 ? rules_4_io_channel1_out_1 : _GEN_46; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_62 = _T_8 ? rules_4_io_channel2_4_out_0 : _GEN_47; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_63 = _T_8 ? rules_4_io_channel2_4_out_1 : _GEN_48; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_64 = _T_8 ? rules_4_io_channel3_out_0 : _GEN_49; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_65 = _T_8 ? rules_4_io_channel3_out_1 : _GEN_50; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_66 = _T_8 ? rules_4_io_home_sharer_list_out_0 : _GEN_51; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_67 = _T_8 ? rules_4_io_home_sharer_list_out_1 : _GEN_52; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_68 = _T_8 ? rules_4_io_home_invalidate_list_out_0 : _GEN_53; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_69 = _T_8 ? rules_4_io_home_invalidate_list_out_1 : _GEN_54; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_70 = _T_8 ? rules_4_io_home_exclusive_granted_out : _GEN_55; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_71 = _T_8 ? rules_4_io_home_current_command_out : _GEN_56; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_72 = _T_8 ? rules_4_io_home_current_client_out : _GEN_57; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_73 = _T_8 ? rules_4_io_cache_out_0 : _GEN_58; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_74 = _T_8 ? rules_4_io_cache_out_1 : _GEN_59; // @[cache_err.scala 273:29 282:17]
  wire  _T_10 = io_en_a == 5'h5; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_75 = _T_10 ? rules_5_io_channel1_out_0 : _GEN_60; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_76 = _T_10 ? rules_5_io_channel1_out_1 : _GEN_61; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_77 = _T_10 ? rules_5_io_channel2_4_out_0 : _GEN_62; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_78 = _T_10 ? rules_5_io_channel2_4_out_1 : _GEN_63; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_79 = _T_10 ? rules_5_io_channel3_out_0 : _GEN_64; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_80 = _T_10 ? rules_5_io_channel3_out_1 : _GEN_65; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_81 = _T_10 ? rules_5_io_home_sharer_list_out_0 : _GEN_66; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_82 = _T_10 ? rules_5_io_home_sharer_list_out_1 : _GEN_67; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_83 = _T_10 ? rules_5_io_home_invalidate_list_out_0 : _GEN_68; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_84 = _T_10 ? rules_5_io_home_invalidate_list_out_1 : _GEN_69; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_85 = _T_10 ? rules_5_io_home_exclusive_granted_out : _GEN_70; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_86 = _T_10 ? rules_5_io_home_current_command_out : _GEN_71; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_87 = _T_10 ? rules_5_io_home_current_client_out : _GEN_72; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_88 = _T_10 ? rules_5_io_cache_out_0 : _GEN_73; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_89 = _T_10 ? rules_5_io_cache_out_1 : _GEN_74; // @[cache_err.scala 273:29 282:17]
  wire  _T_12 = io_en_a == 5'h6; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_90 = _T_12 ? rules_6_io_channel1_out_0 : _GEN_75; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_91 = _T_12 ? rules_6_io_channel1_out_1 : _GEN_76; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_92 = _T_12 ? rules_6_io_channel2_4_out_0 : _GEN_77; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_93 = _T_12 ? rules_6_io_channel2_4_out_1 : _GEN_78; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_94 = _T_12 ? rules_6_io_channel3_out_0 : _GEN_79; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_95 = _T_12 ? rules_6_io_channel3_out_1 : _GEN_80; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_96 = _T_12 ? rules_6_io_home_sharer_list_out_0 : _GEN_81; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_97 = _T_12 ? rules_6_io_home_sharer_list_out_1 : _GEN_82; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_98 = _T_12 ? rules_6_io_home_invalidate_list_out_0 : _GEN_83; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_99 = _T_12 ? rules_6_io_home_invalidate_list_out_1 : _GEN_84; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_100 = _T_12 ? rules_6_io_home_exclusive_granted_out : _GEN_85; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_101 = _T_12 ? rules_6_io_home_current_command_out : _GEN_86; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_102 = _T_12 ? rules_6_io_home_current_client_out : _GEN_87; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_103 = _T_12 ? rules_6_io_cache_out_0 : _GEN_88; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_104 = _T_12 ? rules_6_io_cache_out_1 : _GEN_89; // @[cache_err.scala 273:29 282:17]
  wire  _T_14 = io_en_a == 5'h7; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_105 = _T_14 ? rules_7_io_channel1_out_0 : _GEN_90; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_106 = _T_14 ? rules_7_io_channel1_out_1 : _GEN_91; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_107 = _T_14 ? rules_7_io_channel2_4_out_0 : _GEN_92; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_108 = _T_14 ? rules_7_io_channel2_4_out_1 : _GEN_93; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_109 = _T_14 ? rules_7_io_channel3_out_0 : _GEN_94; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_110 = _T_14 ? rules_7_io_channel3_out_1 : _GEN_95; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_111 = _T_14 ? rules_7_io_home_sharer_list_out_0 : _GEN_96; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_112 = _T_14 ? rules_7_io_home_sharer_list_out_1 : _GEN_97; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_113 = _T_14 ? rules_7_io_home_invalidate_list_out_0 : _GEN_98; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_114 = _T_14 ? rules_7_io_home_invalidate_list_out_1 : _GEN_99; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_115 = _T_14 ? rules_7_io_home_exclusive_granted_out : _GEN_100; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_116 = _T_14 ? rules_7_io_home_current_command_out : _GEN_101; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_117 = _T_14 ? rules_7_io_home_current_client_out : _GEN_102; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_118 = _T_14 ? rules_7_io_cache_out_0 : _GEN_103; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_119 = _T_14 ? rules_7_io_cache_out_1 : _GEN_104; // @[cache_err.scala 273:29 282:17]
  wire  _T_16 = io_en_a == 5'h8; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_120 = _T_16 ? rules_8_io_channel1_out_0 : _GEN_105; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_121 = _T_16 ? rules_8_io_channel1_out_1 : _GEN_106; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_122 = _T_16 ? rules_8_io_channel2_4_out_0 : _GEN_107; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_123 = _T_16 ? rules_8_io_channel2_4_out_1 : _GEN_108; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_124 = _T_16 ? rules_8_io_channel3_out_0 : _GEN_109; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_125 = _T_16 ? rules_8_io_channel3_out_1 : _GEN_110; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_126 = _T_16 ? rules_8_io_home_sharer_list_out_0 : _GEN_111; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_127 = _T_16 ? rules_8_io_home_sharer_list_out_1 : _GEN_112; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_128 = _T_16 ? rules_8_io_home_invalidate_list_out_0 : _GEN_113; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_129 = _T_16 ? rules_8_io_home_invalidate_list_out_1 : _GEN_114; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_130 = _T_16 ? rules_8_io_home_exclusive_granted_out : _GEN_115; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_131 = _T_16 ? rules_8_io_home_current_command_out : _GEN_116; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_132 = _T_16 ? rules_8_io_home_current_client_out : _GEN_117; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_133 = _T_16 ? rules_8_io_cache_out_0 : _GEN_118; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_134 = _T_16 ? rules_8_io_cache_out_1 : _GEN_119; // @[cache_err.scala 273:29 282:17]
  wire  _T_18 = io_en_a == 5'h9; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_135 = _T_18 ? rules_9_io_channel1_out_0 : _GEN_120; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_136 = _T_18 ? rules_9_io_channel1_out_1 : _GEN_121; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_137 = _T_18 ? rules_9_io_channel2_4_out_0 : _GEN_122; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_138 = _T_18 ? rules_9_io_channel2_4_out_1 : _GEN_123; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_139 = _T_18 ? rules_9_io_channel3_out_0 : _GEN_124; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_140 = _T_18 ? rules_9_io_channel3_out_1 : _GEN_125; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_141 = _T_18 ? rules_9_io_home_sharer_list_out_0 : _GEN_126; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_142 = _T_18 ? rules_9_io_home_sharer_list_out_1 : _GEN_127; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_143 = _T_18 ? rules_9_io_home_invalidate_list_out_0 : _GEN_128; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_144 = _T_18 ? rules_9_io_home_invalidate_list_out_1 : _GEN_129; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_145 = _T_18 ? rules_9_io_home_exclusive_granted_out : _GEN_130; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_146 = _T_18 ? rules_9_io_home_current_command_out : _GEN_131; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_147 = _T_18 ? rules_9_io_home_current_client_out : _GEN_132; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_148 = _T_18 ? rules_9_io_cache_out_0 : _GEN_133; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_149 = _T_18 ? rules_9_io_cache_out_1 : _GEN_134; // @[cache_err.scala 273:29 282:17]
  wire  _T_20 = io_en_a == 5'ha; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_150 = _T_20 ? rules_10_io_channel1_out_0 : _GEN_135; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_151 = _T_20 ? rules_10_io_channel1_out_1 : _GEN_136; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_152 = _T_20 ? rules_10_io_channel2_4_out_0 : _GEN_137; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_153 = _T_20 ? rules_10_io_channel2_4_out_1 : _GEN_138; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_154 = _T_20 ? rules_10_io_channel3_out_0 : _GEN_139; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_155 = _T_20 ? rules_10_io_channel3_out_1 : _GEN_140; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_156 = _T_20 ? rules_10_io_home_sharer_list_out_0 : _GEN_141; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_157 = _T_20 ? rules_10_io_home_sharer_list_out_1 : _GEN_142; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_158 = _T_20 ? rules_10_io_home_invalidate_list_out_0 : _GEN_143; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_159 = _T_20 ? rules_10_io_home_invalidate_list_out_1 : _GEN_144; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_160 = _T_20 ? rules_10_io_home_exclusive_granted_out : _GEN_145; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_161 = _T_20 ? rules_10_io_home_current_command_out : _GEN_146; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_162 = _T_20 ? rules_10_io_home_current_client_out : _GEN_147; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_163 = _T_20 ? rules_10_io_cache_out_0 : _GEN_148; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_164 = _T_20 ? rules_10_io_cache_out_1 : _GEN_149; // @[cache_err.scala 273:29 282:17]
  wire  _T_22 = io_en_a == 5'hb; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_165 = _T_22 ? rules_11_io_channel1_out_0 : _GEN_150; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_166 = _T_22 ? rules_11_io_channel1_out_1 : _GEN_151; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_167 = _T_22 ? rules_11_io_channel2_4_out_0 : _GEN_152; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_168 = _T_22 ? rules_11_io_channel2_4_out_1 : _GEN_153; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_169 = _T_22 ? rules_11_io_channel3_out_0 : _GEN_154; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_170 = _T_22 ? rules_11_io_channel3_out_1 : _GEN_155; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_171 = _T_22 ? rules_11_io_home_sharer_list_out_0 : _GEN_156; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_172 = _T_22 ? rules_11_io_home_sharer_list_out_1 : _GEN_157; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_173 = _T_22 ? rules_11_io_home_invalidate_list_out_0 : _GEN_158; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_174 = _T_22 ? rules_11_io_home_invalidate_list_out_1 : _GEN_159; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_175 = _T_22 ? rules_11_io_home_exclusive_granted_out : _GEN_160; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_176 = _T_22 ? rules_11_io_home_current_command_out : _GEN_161; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_177 = _T_22 ? rules_11_io_home_current_client_out : _GEN_162; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_178 = _T_22 ? rules_11_io_cache_out_0 : _GEN_163; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_179 = _T_22 ? rules_11_io_cache_out_1 : _GEN_164; // @[cache_err.scala 273:29 282:17]
  wire  _T_24 = io_en_a == 5'hc; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_180 = _T_24 ? rules_12_io_channel1_out_0 : _GEN_165; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_181 = _T_24 ? rules_12_io_channel1_out_1 : _GEN_166; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_182 = _T_24 ? rules_12_io_channel2_4_out_0 : _GEN_167; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_183 = _T_24 ? rules_12_io_channel2_4_out_1 : _GEN_168; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_184 = _T_24 ? rules_12_io_channel3_out_0 : _GEN_169; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_185 = _T_24 ? rules_12_io_channel3_out_1 : _GEN_170; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_186 = _T_24 ? rules_12_io_home_sharer_list_out_0 : _GEN_171; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_187 = _T_24 ? rules_12_io_home_sharer_list_out_1 : _GEN_172; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_188 = _T_24 ? rules_12_io_home_invalidate_list_out_0 : _GEN_173; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_189 = _T_24 ? rules_12_io_home_invalidate_list_out_1 : _GEN_174; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_190 = _T_24 ? rules_12_io_home_exclusive_granted_out : _GEN_175; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_191 = _T_24 ? rules_12_io_home_current_command_out : _GEN_176; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_192 = _T_24 ? rules_12_io_home_current_client_out : _GEN_177; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_193 = _T_24 ? rules_12_io_cache_out_0 : _GEN_178; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_194 = _T_24 ? rules_12_io_cache_out_1 : _GEN_179; // @[cache_err.scala 273:29 282:17]
  wire  _T_26 = io_en_a == 5'hd; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_195 = _T_26 ? rules_13_io_channel1_out_0 : _GEN_180; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_196 = _T_26 ? rules_13_io_channel1_out_1 : _GEN_181; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_197 = _T_26 ? rules_13_io_channel2_4_out_0 : _GEN_182; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_198 = _T_26 ? rules_13_io_channel2_4_out_1 : _GEN_183; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_199 = _T_26 ? rules_13_io_channel3_out_0 : _GEN_184; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_200 = _T_26 ? rules_13_io_channel3_out_1 : _GEN_185; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_201 = _T_26 ? rules_13_io_home_sharer_list_out_0 : _GEN_186; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_202 = _T_26 ? rules_13_io_home_sharer_list_out_1 : _GEN_187; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_203 = _T_26 ? rules_13_io_home_invalidate_list_out_0 : _GEN_188; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_204 = _T_26 ? rules_13_io_home_invalidate_list_out_1 : _GEN_189; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_205 = _T_26 ? rules_13_io_home_exclusive_granted_out : _GEN_190; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_206 = _T_26 ? rules_13_io_home_current_command_out : _GEN_191; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_207 = _T_26 ? rules_13_io_home_current_client_out : _GEN_192; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_208 = _T_26 ? rules_13_io_cache_out_0 : _GEN_193; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_209 = _T_26 ? rules_13_io_cache_out_1 : _GEN_194; // @[cache_err.scala 273:29 282:17]
  wire  _T_28 = io_en_a == 5'he; // @[cache_err.scala 272:31]
  wire [2:0] _GEN_210 = _T_28 ? rules_14_io_channel1_out_0 : _GEN_195; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_211 = _T_28 ? rules_14_io_channel1_out_1 : _GEN_196; // @[cache_err.scala 273:29 274:20]
  wire [2:0] _GEN_212 = _T_28 ? rules_14_io_channel2_4_out_0 : _GEN_197; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_213 = _T_28 ? rules_14_io_channel2_4_out_1 : _GEN_198; // @[cache_err.scala 273:29 275:22]
  wire [2:0] _GEN_214 = _T_28 ? rules_14_io_channel3_out_0 : _GEN_199; // @[cache_err.scala 273:29 276:20]
  wire [2:0] _GEN_215 = _T_28 ? rules_14_io_channel3_out_1 : _GEN_200; // @[cache_err.scala 273:29 276:20]
  wire  _GEN_216 = _T_28 ? rules_14_io_home_sharer_list_out_0 : _GEN_201; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_217 = _T_28 ? rules_14_io_home_sharer_list_out_1 : _GEN_202; // @[cache_err.scala 273:29 277:28]
  wire  _GEN_218 = _T_28 ? rules_14_io_home_invalidate_list_out_0 : _GEN_203; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_219 = _T_28 ? rules_14_io_home_invalidate_list_out_1 : _GEN_204; // @[cache_err.scala 273:29 278:32]
  wire  _GEN_220 = _T_28 ? rules_14_io_home_exclusive_granted_out : _GEN_205; // @[cache_err.scala 273:29 279:34]
  wire [2:0] _GEN_221 = _T_28 ? rules_14_io_home_current_command_out : _GEN_206; // @[cache_err.scala 273:29 280:32]
  wire  _GEN_222 = _T_28 ? rules_14_io_home_current_client_out : _GEN_207; // @[cache_err.scala 273:29 281:31]
  wire [1:0] _GEN_223 = _T_28 ? rules_14_io_cache_out_0 : _GEN_208; // @[cache_err.scala 273:29 282:17]
  wire [1:0] _GEN_224 = _T_28 ? rules_14_io_cache_out_1 : _GEN_209; // @[cache_err.scala 273:29 282:17]
  wire  _T_30 = io_en_a == 5'hf; // @[cache_err.scala 272:31]
  wire  _T_32 = io_en_a == 5'h10; // @[cache_err.scala 272:31]
  wire  _T_34 = io_en_a == 5'h11; // @[cache_err.scala 272:31]
  rule_client_requests_shared_access rules_0 ( // @[cache_err.scala 250:20]
    .io_en_r(rules_0_io_en_r),
    .io_channel1_in_0(rules_0_io_channel1_in_0),
    .io_channel1_in_1(rules_0_io_channel1_in_1),
    .io_channel1_out_0(rules_0_io_channel1_out_0),
    .io_channel1_out_1(rules_0_io_channel1_out_1),
    .io_channel2_4_in_0(rules_0_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_0_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_0_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_0_io_channel2_4_out_1),
    .io_channel3_in_0(rules_0_io_channel3_in_0),
    .io_channel3_in_1(rules_0_io_channel3_in_1),
    .io_channel3_out_0(rules_0_io_channel3_out_0),
    .io_channel3_out_1(rules_0_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_0_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_0_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_0_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_0_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_0_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_0_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_0_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_0_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_0_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_0_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_0_io_home_current_command_in),
    .io_home_current_command_out(rules_0_io_home_current_command_out),
    .io_home_current_client_in(rules_0_io_home_current_client_in),
    .io_home_current_client_out(rules_0_io_home_current_client_out),
    .io_cache_in_0(rules_0_io_cache_in_0),
    .io_cache_in_1(rules_0_io_cache_in_1),
    .io_cache_out_0(rules_0_io_cache_out_0),
    .io_cache_out_1(rules_0_io_cache_out_1)
  );
  rule_client_requests_exclusive_access rules_1 ( // @[cache_err.scala 251:20]
    .io_en_r(rules_1_io_en_r),
    .io_channel1_in_0(rules_1_io_channel1_in_0),
    .io_channel1_in_1(rules_1_io_channel1_in_1),
    .io_channel1_out_0(rules_1_io_channel1_out_0),
    .io_channel1_out_1(rules_1_io_channel1_out_1),
    .io_channel2_4_in_0(rules_1_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_1_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_1_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_1_io_channel2_4_out_1),
    .io_channel3_in_0(rules_1_io_channel3_in_0),
    .io_channel3_in_1(rules_1_io_channel3_in_1),
    .io_channel3_out_0(rules_1_io_channel3_out_0),
    .io_channel3_out_1(rules_1_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_1_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_1_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_1_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_1_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_1_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_1_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_1_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_1_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_1_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_1_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_1_io_home_current_command_in),
    .io_home_current_command_out(rules_1_io_home_current_command_out),
    .io_home_current_client_in(rules_1_io_home_current_client_in),
    .io_home_current_client_out(rules_1_io_home_current_client_out),
    .io_cache_in_0(rules_1_io_cache_in_0),
    .io_cache_in_1(rules_1_io_cache_in_1),
    .io_cache_out_0(rules_1_io_cache_out_0),
    .io_cache_out_1(rules_1_io_cache_out_1)
  );
  rule_home_picks_new_request rules_2 ( // @[cache_err.scala 252:20]
    .io_en_r(rules_2_io_en_r),
    .io_channel1_in_0(rules_2_io_channel1_in_0),
    .io_channel1_in_1(rules_2_io_channel1_in_1),
    .io_channel1_out_0(rules_2_io_channel1_out_0),
    .io_channel1_out_1(rules_2_io_channel1_out_1),
    .io_channel2_4_in_0(rules_2_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_2_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_2_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_2_io_channel2_4_out_1),
    .io_channel3_in_0(rules_2_io_channel3_in_0),
    .io_channel3_in_1(rules_2_io_channel3_in_1),
    .io_channel3_out_0(rules_2_io_channel3_out_0),
    .io_channel3_out_1(rules_2_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_2_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_2_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_2_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_2_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_2_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_2_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_2_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_2_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_2_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_2_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_2_io_home_current_command_in),
    .io_home_current_command_out(rules_2_io_home_current_command_out),
    .io_home_current_client_in(rules_2_io_home_current_client_in),
    .io_home_current_client_out(rules_2_io_home_current_client_out),
    .io_cache_in_0(rules_2_io_cache_in_0),
    .io_cache_in_1(rules_2_io_cache_in_1),
    .io_cache_out_0(rules_2_io_cache_out_0),
    .io_cache_out_1(rules_2_io_cache_out_1)
  );
  rule_home_sends_invalidate_message rules_3 ( // @[cache_err.scala 253:20]
    .io_en_r(rules_3_io_en_r),
    .io_channel1_in_0(rules_3_io_channel1_in_0),
    .io_channel1_in_1(rules_3_io_channel1_in_1),
    .io_channel1_out_0(rules_3_io_channel1_out_0),
    .io_channel1_out_1(rules_3_io_channel1_out_1),
    .io_channel2_4_in_0(rules_3_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_3_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_3_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_3_io_channel2_4_out_1),
    .io_channel3_in_0(rules_3_io_channel3_in_0),
    .io_channel3_in_1(rules_3_io_channel3_in_1),
    .io_channel3_out_0(rules_3_io_channel3_out_0),
    .io_channel3_out_1(rules_3_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_3_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_3_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_3_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_3_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_3_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_3_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_3_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_3_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_3_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_3_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_3_io_home_current_command_in),
    .io_home_current_command_out(rules_3_io_home_current_command_out),
    .io_home_current_client_in(rules_3_io_home_current_client_in),
    .io_home_current_client_out(rules_3_io_home_current_client_out),
    .io_cache_in_0(rules_3_io_cache_in_0),
    .io_cache_in_1(rules_3_io_cache_in_1),
    .io_cache_out_0(rules_3_io_cache_out_0),
    .io_cache_out_1(rules_3_io_cache_out_1)
  );
  rule_home_receives_invalidate_acknowledgement rules_4 ( // @[cache_err.scala 254:20]
    .io_en_r(rules_4_io_en_r),
    .io_channel1_in_0(rules_4_io_channel1_in_0),
    .io_channel1_in_1(rules_4_io_channel1_in_1),
    .io_channel1_out_0(rules_4_io_channel1_out_0),
    .io_channel1_out_1(rules_4_io_channel1_out_1),
    .io_channel2_4_in_0(rules_4_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_4_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_4_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_4_io_channel2_4_out_1),
    .io_channel3_in_0(rules_4_io_channel3_in_0),
    .io_channel3_in_1(rules_4_io_channel3_in_1),
    .io_channel3_out_0(rules_4_io_channel3_out_0),
    .io_channel3_out_1(rules_4_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_4_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_4_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_4_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_4_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_4_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_4_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_4_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_4_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_4_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_4_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_4_io_home_current_command_in),
    .io_home_current_command_out(rules_4_io_home_current_command_out),
    .io_home_current_client_in(rules_4_io_home_current_client_in),
    .io_home_current_client_out(rules_4_io_home_current_client_out),
    .io_cache_in_0(rules_4_io_cache_in_0),
    .io_cache_in_1(rules_4_io_cache_in_1),
    .io_cache_out_0(rules_4_io_cache_out_0),
    .io_cache_out_1(rules_4_io_cache_out_1)
  );
  rule_sharer_invalidates_cache rules_5 ( // @[cache_err.scala 255:20]
    .io_en_r(rules_5_io_en_r),
    .io_channel1_in_0(rules_5_io_channel1_in_0),
    .io_channel1_in_1(rules_5_io_channel1_in_1),
    .io_channel1_out_0(rules_5_io_channel1_out_0),
    .io_channel1_out_1(rules_5_io_channel1_out_1),
    .io_channel2_4_in_0(rules_5_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_5_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_5_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_5_io_channel2_4_out_1),
    .io_channel3_in_0(rules_5_io_channel3_in_0),
    .io_channel3_in_1(rules_5_io_channel3_in_1),
    .io_channel3_out_0(rules_5_io_channel3_out_0),
    .io_channel3_out_1(rules_5_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_5_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_5_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_5_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_5_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_5_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_5_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_5_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_5_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_5_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_5_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_5_io_home_current_command_in),
    .io_home_current_command_out(rules_5_io_home_current_command_out),
    .io_home_current_client_in(rules_5_io_home_current_client_in),
    .io_home_current_client_out(rules_5_io_home_current_client_out),
    .io_cache_in_0(rules_5_io_cache_in_0),
    .io_cache_in_1(rules_5_io_cache_in_1),
    .io_cache_out_0(rules_5_io_cache_out_0),
    .io_cache_out_1(rules_5_io_cache_out_1)
  );
  rule_client_receives_shared_grant rules_6 ( // @[cache_err.scala 256:20]
    .io_en_r(rules_6_io_en_r),
    .io_channel1_in_0(rules_6_io_channel1_in_0),
    .io_channel1_in_1(rules_6_io_channel1_in_1),
    .io_channel1_out_0(rules_6_io_channel1_out_0),
    .io_channel1_out_1(rules_6_io_channel1_out_1),
    .io_channel2_4_in_0(rules_6_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_6_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_6_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_6_io_channel2_4_out_1),
    .io_channel3_in_0(rules_6_io_channel3_in_0),
    .io_channel3_in_1(rules_6_io_channel3_in_1),
    .io_channel3_out_0(rules_6_io_channel3_out_0),
    .io_channel3_out_1(rules_6_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_6_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_6_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_6_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_6_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_6_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_6_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_6_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_6_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_6_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_6_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_6_io_home_current_command_in),
    .io_home_current_command_out(rules_6_io_home_current_command_out),
    .io_home_current_client_in(rules_6_io_home_current_client_in),
    .io_home_current_client_out(rules_6_io_home_current_client_out),
    .io_cache_in_0(rules_6_io_cache_in_0),
    .io_cache_in_1(rules_6_io_cache_in_1),
    .io_cache_out_0(rules_6_io_cache_out_0),
    .io_cache_out_1(rules_6_io_cache_out_1)
  );
  rule_client_received_exclusive_grant rules_7 ( // @[cache_err.scala 257:20]
    .io_en_r(rules_7_io_en_r),
    .io_channel1_in_0(rules_7_io_channel1_in_0),
    .io_channel1_in_1(rules_7_io_channel1_in_1),
    .io_channel1_out_0(rules_7_io_channel1_out_0),
    .io_channel1_out_1(rules_7_io_channel1_out_1),
    .io_channel2_4_in_0(rules_7_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_7_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_7_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_7_io_channel2_4_out_1),
    .io_channel3_in_0(rules_7_io_channel3_in_0),
    .io_channel3_in_1(rules_7_io_channel3_in_1),
    .io_channel3_out_0(rules_7_io_channel3_out_0),
    .io_channel3_out_1(rules_7_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_7_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_7_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_7_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_7_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_7_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_7_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_7_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_7_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_7_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_7_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_7_io_home_current_command_in),
    .io_home_current_command_out(rules_7_io_home_current_command_out),
    .io_home_current_client_in(rules_7_io_home_current_client_in),
    .io_home_current_client_out(rules_7_io_home_current_client_out),
    .io_cache_in_0(rules_7_io_cache_in_0),
    .io_cache_in_1(rules_7_io_cache_in_1),
    .io_cache_out_0(rules_7_io_cache_out_0),
    .io_cache_out_1(rules_7_io_cache_out_1)
  );
  rule_client_requests_shared_access_1 rules_8 ( // @[cache_err.scala 250:20]
    .io_en_r(rules_8_io_en_r),
    .io_channel1_in_0(rules_8_io_channel1_in_0),
    .io_channel1_in_1(rules_8_io_channel1_in_1),
    .io_channel1_out_0(rules_8_io_channel1_out_0),
    .io_channel1_out_1(rules_8_io_channel1_out_1),
    .io_channel2_4_in_0(rules_8_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_8_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_8_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_8_io_channel2_4_out_1),
    .io_channel3_in_0(rules_8_io_channel3_in_0),
    .io_channel3_in_1(rules_8_io_channel3_in_1),
    .io_channel3_out_0(rules_8_io_channel3_out_0),
    .io_channel3_out_1(rules_8_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_8_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_8_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_8_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_8_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_8_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_8_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_8_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_8_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_8_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_8_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_8_io_home_current_command_in),
    .io_home_current_command_out(rules_8_io_home_current_command_out),
    .io_home_current_client_in(rules_8_io_home_current_client_in),
    .io_home_current_client_out(rules_8_io_home_current_client_out),
    .io_cache_in_0(rules_8_io_cache_in_0),
    .io_cache_in_1(rules_8_io_cache_in_1),
    .io_cache_out_0(rules_8_io_cache_out_0),
    .io_cache_out_1(rules_8_io_cache_out_1)
  );
  rule_client_requests_exclusive_access_1 rules_9 ( // @[cache_err.scala 251:20]
    .io_en_r(rules_9_io_en_r),
    .io_channel1_in_0(rules_9_io_channel1_in_0),
    .io_channel1_in_1(rules_9_io_channel1_in_1),
    .io_channel1_out_0(rules_9_io_channel1_out_0),
    .io_channel1_out_1(rules_9_io_channel1_out_1),
    .io_channel2_4_in_0(rules_9_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_9_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_9_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_9_io_channel2_4_out_1),
    .io_channel3_in_0(rules_9_io_channel3_in_0),
    .io_channel3_in_1(rules_9_io_channel3_in_1),
    .io_channel3_out_0(rules_9_io_channel3_out_0),
    .io_channel3_out_1(rules_9_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_9_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_9_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_9_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_9_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_9_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_9_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_9_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_9_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_9_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_9_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_9_io_home_current_command_in),
    .io_home_current_command_out(rules_9_io_home_current_command_out),
    .io_home_current_client_in(rules_9_io_home_current_client_in),
    .io_home_current_client_out(rules_9_io_home_current_client_out),
    .io_cache_in_0(rules_9_io_cache_in_0),
    .io_cache_in_1(rules_9_io_cache_in_1),
    .io_cache_out_0(rules_9_io_cache_out_0),
    .io_cache_out_1(rules_9_io_cache_out_1)
  );
  rule_home_picks_new_request_1 rules_10 ( // @[cache_err.scala 252:20]
    .io_en_r(rules_10_io_en_r),
    .io_channel1_in_0(rules_10_io_channel1_in_0),
    .io_channel1_in_1(rules_10_io_channel1_in_1),
    .io_channel1_out_0(rules_10_io_channel1_out_0),
    .io_channel1_out_1(rules_10_io_channel1_out_1),
    .io_channel2_4_in_0(rules_10_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_10_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_10_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_10_io_channel2_4_out_1),
    .io_channel3_in_0(rules_10_io_channel3_in_0),
    .io_channel3_in_1(rules_10_io_channel3_in_1),
    .io_channel3_out_0(rules_10_io_channel3_out_0),
    .io_channel3_out_1(rules_10_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_10_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_10_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_10_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_10_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_10_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_10_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_10_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_10_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_10_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_10_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_10_io_home_current_command_in),
    .io_home_current_command_out(rules_10_io_home_current_command_out),
    .io_home_current_client_in(rules_10_io_home_current_client_in),
    .io_home_current_client_out(rules_10_io_home_current_client_out),
    .io_cache_in_0(rules_10_io_cache_in_0),
    .io_cache_in_1(rules_10_io_cache_in_1),
    .io_cache_out_0(rules_10_io_cache_out_0),
    .io_cache_out_1(rules_10_io_cache_out_1)
  );
  rule_home_sends_invalidate_message_1 rules_11 ( // @[cache_err.scala 253:20]
    .io_en_r(rules_11_io_en_r),
    .io_channel1_in_0(rules_11_io_channel1_in_0),
    .io_channel1_in_1(rules_11_io_channel1_in_1),
    .io_channel1_out_0(rules_11_io_channel1_out_0),
    .io_channel1_out_1(rules_11_io_channel1_out_1),
    .io_channel2_4_in_0(rules_11_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_11_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_11_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_11_io_channel2_4_out_1),
    .io_channel3_in_0(rules_11_io_channel3_in_0),
    .io_channel3_in_1(rules_11_io_channel3_in_1),
    .io_channel3_out_0(rules_11_io_channel3_out_0),
    .io_channel3_out_1(rules_11_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_11_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_11_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_11_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_11_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_11_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_11_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_11_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_11_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_11_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_11_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_11_io_home_current_command_in),
    .io_home_current_command_out(rules_11_io_home_current_command_out),
    .io_home_current_client_in(rules_11_io_home_current_client_in),
    .io_home_current_client_out(rules_11_io_home_current_client_out),
    .io_cache_in_0(rules_11_io_cache_in_0),
    .io_cache_in_1(rules_11_io_cache_in_1),
    .io_cache_out_0(rules_11_io_cache_out_0),
    .io_cache_out_1(rules_11_io_cache_out_1)
  );
  rule_home_receives_invalidate_acknowledgement_1 rules_12 ( // @[cache_err.scala 254:20]
    .io_en_r(rules_12_io_en_r),
    .io_channel1_in_0(rules_12_io_channel1_in_0),
    .io_channel1_in_1(rules_12_io_channel1_in_1),
    .io_channel1_out_0(rules_12_io_channel1_out_0),
    .io_channel1_out_1(rules_12_io_channel1_out_1),
    .io_channel2_4_in_0(rules_12_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_12_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_12_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_12_io_channel2_4_out_1),
    .io_channel3_in_0(rules_12_io_channel3_in_0),
    .io_channel3_in_1(rules_12_io_channel3_in_1),
    .io_channel3_out_0(rules_12_io_channel3_out_0),
    .io_channel3_out_1(rules_12_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_12_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_12_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_12_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_12_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_12_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_12_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_12_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_12_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_12_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_12_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_12_io_home_current_command_in),
    .io_home_current_command_out(rules_12_io_home_current_command_out),
    .io_home_current_client_in(rules_12_io_home_current_client_in),
    .io_home_current_client_out(rules_12_io_home_current_client_out),
    .io_cache_in_0(rules_12_io_cache_in_0),
    .io_cache_in_1(rules_12_io_cache_in_1),
    .io_cache_out_0(rules_12_io_cache_out_0),
    .io_cache_out_1(rules_12_io_cache_out_1)
  );
  rule_sharer_invalidates_cache_1 rules_13 ( // @[cache_err.scala 255:20]
    .io_en_r(rules_13_io_en_r),
    .io_channel1_in_0(rules_13_io_channel1_in_0),
    .io_channel1_in_1(rules_13_io_channel1_in_1),
    .io_channel1_out_0(rules_13_io_channel1_out_0),
    .io_channel1_out_1(rules_13_io_channel1_out_1),
    .io_channel2_4_in_0(rules_13_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_13_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_13_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_13_io_channel2_4_out_1),
    .io_channel3_in_0(rules_13_io_channel3_in_0),
    .io_channel3_in_1(rules_13_io_channel3_in_1),
    .io_channel3_out_0(rules_13_io_channel3_out_0),
    .io_channel3_out_1(rules_13_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_13_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_13_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_13_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_13_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_13_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_13_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_13_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_13_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_13_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_13_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_13_io_home_current_command_in),
    .io_home_current_command_out(rules_13_io_home_current_command_out),
    .io_home_current_client_in(rules_13_io_home_current_client_in),
    .io_home_current_client_out(rules_13_io_home_current_client_out),
    .io_cache_in_0(rules_13_io_cache_in_0),
    .io_cache_in_1(rules_13_io_cache_in_1),
    .io_cache_out_0(rules_13_io_cache_out_0),
    .io_cache_out_1(rules_13_io_cache_out_1)
  );
  rule_client_receives_shared_grant_1 rules_14 ( // @[cache_err.scala 256:20]
    .io_en_r(rules_14_io_en_r),
    .io_channel1_in_0(rules_14_io_channel1_in_0),
    .io_channel1_in_1(rules_14_io_channel1_in_1),
    .io_channel1_out_0(rules_14_io_channel1_out_0),
    .io_channel1_out_1(rules_14_io_channel1_out_1),
    .io_channel2_4_in_0(rules_14_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_14_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_14_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_14_io_channel2_4_out_1),
    .io_channel3_in_0(rules_14_io_channel3_in_0),
    .io_channel3_in_1(rules_14_io_channel3_in_1),
    .io_channel3_out_0(rules_14_io_channel3_out_0),
    .io_channel3_out_1(rules_14_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_14_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_14_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_14_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_14_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_14_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_14_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_14_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_14_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_14_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_14_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_14_io_home_current_command_in),
    .io_home_current_command_out(rules_14_io_home_current_command_out),
    .io_home_current_client_in(rules_14_io_home_current_client_in),
    .io_home_current_client_out(rules_14_io_home_current_client_out),
    .io_cache_in_0(rules_14_io_cache_in_0),
    .io_cache_in_1(rules_14_io_cache_in_1),
    .io_cache_out_0(rules_14_io_cache_out_0),
    .io_cache_out_1(rules_14_io_cache_out_1)
  );
  rule_client_received_exclusive_grant_1 rules_15 ( // @[cache_err.scala 257:20]
    .io_en_r(rules_15_io_en_r),
    .io_channel1_in_0(rules_15_io_channel1_in_0),
    .io_channel1_in_1(rules_15_io_channel1_in_1),
    .io_channel1_out_0(rules_15_io_channel1_out_0),
    .io_channel1_out_1(rules_15_io_channel1_out_1),
    .io_channel2_4_in_0(rules_15_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_15_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_15_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_15_io_channel2_4_out_1),
    .io_channel3_in_0(rules_15_io_channel3_in_0),
    .io_channel3_in_1(rules_15_io_channel3_in_1),
    .io_channel3_out_0(rules_15_io_channel3_out_0),
    .io_channel3_out_1(rules_15_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_15_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_15_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_15_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_15_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_15_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_15_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_15_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_15_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_15_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_15_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_15_io_home_current_command_in),
    .io_home_current_command_out(rules_15_io_home_current_command_out),
    .io_home_current_client_in(rules_15_io_home_current_client_in),
    .io_home_current_client_out(rules_15_io_home_current_client_out),
    .io_cache_in_0(rules_15_io_cache_in_0),
    .io_cache_in_1(rules_15_io_cache_in_1),
    .io_cache_out_0(rules_15_io_cache_out_0),
    .io_cache_out_1(rules_15_io_cache_out_1)
  );
  rule_home_sends_reply_to_client_shared rules_16 ( // @[cache_err.scala 260:18]
    .io_en_r(rules_16_io_en_r),
    .io_channel1_in_0(rules_16_io_channel1_in_0),
    .io_channel1_in_1(rules_16_io_channel1_in_1),
    .io_channel1_out_0(rules_16_io_channel1_out_0),
    .io_channel1_out_1(rules_16_io_channel1_out_1),
    .io_channel2_4_in_0(rules_16_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_16_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_16_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_16_io_channel2_4_out_1),
    .io_channel3_in_0(rules_16_io_channel3_in_0),
    .io_channel3_in_1(rules_16_io_channel3_in_1),
    .io_channel3_out_0(rules_16_io_channel3_out_0),
    .io_channel3_out_1(rules_16_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_16_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_16_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_16_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_16_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_16_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_16_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_16_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_16_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_16_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_16_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_16_io_home_current_command_in),
    .io_home_current_command_out(rules_16_io_home_current_command_out),
    .io_home_current_client_in(rules_16_io_home_current_client_in),
    .io_home_current_client_out(rules_16_io_home_current_client_out),
    .io_cache_in_0(rules_16_io_cache_in_0),
    .io_cache_in_1(rules_16_io_cache_in_1),
    .io_cache_out_0(rules_16_io_cache_out_0),
    .io_cache_out_1(rules_16_io_cache_out_1)
  );
  rule_home_sends_reply_to_client_exclusive rules_17 ( // @[cache_err.scala 261:18]
    .io_en_r(rules_17_io_en_r),
    .io_channel1_in_0(rules_17_io_channel1_in_0),
    .io_channel1_in_1(rules_17_io_channel1_in_1),
    .io_channel1_out_0(rules_17_io_channel1_out_0),
    .io_channel1_out_1(rules_17_io_channel1_out_1),
    .io_channel2_4_in_0(rules_17_io_channel2_4_in_0),
    .io_channel2_4_in_1(rules_17_io_channel2_4_in_1),
    .io_channel2_4_out_0(rules_17_io_channel2_4_out_0),
    .io_channel2_4_out_1(rules_17_io_channel2_4_out_1),
    .io_channel3_in_0(rules_17_io_channel3_in_0),
    .io_channel3_in_1(rules_17_io_channel3_in_1),
    .io_channel3_out_0(rules_17_io_channel3_out_0),
    .io_channel3_out_1(rules_17_io_channel3_out_1),
    .io_home_sharer_list_in_0(rules_17_io_home_sharer_list_in_0),
    .io_home_sharer_list_in_1(rules_17_io_home_sharer_list_in_1),
    .io_home_sharer_list_out_0(rules_17_io_home_sharer_list_out_0),
    .io_home_sharer_list_out_1(rules_17_io_home_sharer_list_out_1),
    .io_home_invalidate_list_in_0(rules_17_io_home_invalidate_list_in_0),
    .io_home_invalidate_list_in_1(rules_17_io_home_invalidate_list_in_1),
    .io_home_invalidate_list_out_0(rules_17_io_home_invalidate_list_out_0),
    .io_home_invalidate_list_out_1(rules_17_io_home_invalidate_list_out_1),
    .io_home_exclusive_granted_in(rules_17_io_home_exclusive_granted_in),
    .io_home_exclusive_granted_out(rules_17_io_home_exclusive_granted_out),
    .io_home_current_command_in(rules_17_io_home_current_command_in),
    .io_home_current_command_out(rules_17_io_home_current_command_out),
    .io_home_current_client_in(rules_17_io_home_current_client_in),
    .io_home_current_client_out(rules_17_io_home_current_client_out),
    .io_cache_in_0(rules_17_io_cache_in_0),
    .io_cache_in_1(rules_17_io_cache_in_1),
    .io_cache_out_0(rules_17_io_cache_out_0),
    .io_cache_out_1(rules_17_io_cache_out_1)
  );
  assign io_channel1_out_0 = channel1_reg_0; // @[cache_err.scala 209:18]
  assign io_channel1_out_1 = channel1_reg_1; // @[cache_err.scala 209:18]
  assign io_channel2_4_out_0 = channel2_4_reg_0; // @[cache_err.scala 212:20]
  assign io_channel2_4_out_1 = channel2_4_reg_1; // @[cache_err.scala 212:20]
  assign io_channel3_out_0 = channel3_reg_0; // @[cache_err.scala 215:18]
  assign io_channel3_out_1 = channel3_reg_1; // @[cache_err.scala 215:18]
  assign io_home_sharer_list_out_0 = home_sharer_list_reg_0; // @[cache_err.scala 218:26]
  assign io_home_sharer_list_out_1 = home_sharer_list_reg_1; // @[cache_err.scala 218:26]
  assign io_home_invalidate_list_out_0 = home_invalidate_list_reg_0; // @[cache_err.scala 221:30]
  assign io_home_invalidate_list_out_1 = home_invalidate_list_reg_1; // @[cache_err.scala 221:30]
  assign io_home_exclusive_granted_out = home_exclusive_granted_reg; // @[cache_err.scala 224:32]
  assign io_home_current_command_out = home_current_command_reg; // @[cache_err.scala 227:30]
  assign io_home_current_client_out = home_current_client_reg; // @[cache_err.scala 230:29]
  assign io_cache_out_0 = cache_reg_0; // @[cache_err.scala 233:15]
  assign io_cache_out_1 = cache_reg_1; // @[cache_err.scala 233:15]
  assign rules_0_io_en_r = io_en_a == 5'h0; // @[cache_err.scala 272:31]
  assign rules_0_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_0_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_0_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_0_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_0_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_0_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_0_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_0_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_0_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_0_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_0_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_0_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_0_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_0_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_0_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_1_io_en_r = io_en_a == 5'h1; // @[cache_err.scala 272:31]
  assign rules_1_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_1_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_1_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_1_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_1_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_1_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_1_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_1_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_1_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_1_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_1_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_1_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_1_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_1_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_1_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_2_io_en_r = io_en_a == 5'h2; // @[cache_err.scala 272:31]
  assign rules_2_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_2_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_2_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_2_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_2_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_2_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_2_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_2_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_2_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_2_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_2_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_2_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_2_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_2_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_2_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_3_io_en_r = io_en_a == 5'h3; // @[cache_err.scala 272:31]
  assign rules_3_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_3_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_3_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_3_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_3_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_3_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_3_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_3_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_3_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_3_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_3_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_3_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_3_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_3_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_3_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_4_io_en_r = io_en_a == 5'h4; // @[cache_err.scala 272:31]
  assign rules_4_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_4_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_4_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_4_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_4_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_4_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_4_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_4_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_4_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_4_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_4_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_4_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_4_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_4_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_4_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_5_io_en_r = io_en_a == 5'h5; // @[cache_err.scala 272:31]
  assign rules_5_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_5_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_5_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_5_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_5_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_5_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_5_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_5_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_5_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_5_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_5_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_5_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_5_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_5_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_5_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_6_io_en_r = io_en_a == 5'h6; // @[cache_err.scala 272:31]
  assign rules_6_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_6_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_6_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_6_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_6_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_6_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_6_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_6_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_6_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_6_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_6_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_6_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_6_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_6_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_6_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_7_io_en_r = io_en_a == 5'h7; // @[cache_err.scala 272:31]
  assign rules_7_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_7_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_7_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_7_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_7_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_7_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_7_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_7_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_7_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_7_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_7_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_7_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_7_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_7_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_7_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_8_io_en_r = io_en_a == 5'h8; // @[cache_err.scala 272:31]
  assign rules_8_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_8_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_8_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_8_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_8_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_8_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_8_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_8_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_8_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_8_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_8_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_8_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_8_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_8_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_8_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_9_io_en_r = io_en_a == 5'h9; // @[cache_err.scala 272:31]
  assign rules_9_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_9_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_9_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_9_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_9_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_9_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_9_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_9_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_9_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_9_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_9_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_9_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_9_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_9_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_9_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_10_io_en_r = io_en_a == 5'ha; // @[cache_err.scala 272:31]
  assign rules_10_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_10_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_10_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_10_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_10_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_10_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_10_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_10_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_10_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_10_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_10_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_10_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_10_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_10_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_10_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_11_io_en_r = io_en_a == 5'hb; // @[cache_err.scala 272:31]
  assign rules_11_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_11_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_11_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_11_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_11_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_11_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_11_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_11_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_11_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_11_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_11_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_11_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_11_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_11_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_11_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_12_io_en_r = io_en_a == 5'hc; // @[cache_err.scala 272:31]
  assign rules_12_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_12_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_12_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_12_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_12_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_12_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_12_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_12_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_12_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_12_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_12_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_12_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_12_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_12_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_12_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_13_io_en_r = io_en_a == 5'hd; // @[cache_err.scala 272:31]
  assign rules_13_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_13_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_13_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_13_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_13_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_13_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_13_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_13_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_13_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_13_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_13_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_13_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_13_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_13_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_13_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_14_io_en_r = io_en_a == 5'he; // @[cache_err.scala 272:31]
  assign rules_14_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_14_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_14_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_14_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_14_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_14_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_14_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_14_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_14_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_14_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_14_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_14_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_14_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_14_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_14_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_15_io_en_r = io_en_a == 5'hf; // @[cache_err.scala 272:31]
  assign rules_15_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_15_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_15_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_15_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_15_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_15_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_15_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_15_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_15_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_15_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_15_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_15_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_15_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_15_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_15_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_16_io_en_r = io_en_a == 5'h10; // @[cache_err.scala 272:31]
  assign rules_16_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_16_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_16_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_16_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_16_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_16_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_16_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_16_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_16_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_16_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_16_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_16_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_16_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_16_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_16_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  assign rules_17_io_en_r = io_en_a == 5'h11; // @[cache_err.scala 272:31]
  assign rules_17_io_channel1_in_0 = channel1_reg_0; // @[cache_err.scala 263:29]
  assign rules_17_io_channel1_in_1 = channel1_reg_1; // @[cache_err.scala 263:29]
  assign rules_17_io_channel2_4_in_0 = channel2_4_reg_0; // @[cache_err.scala 264:31]
  assign rules_17_io_channel2_4_in_1 = channel2_4_reg_1; // @[cache_err.scala 264:31]
  assign rules_17_io_channel3_in_0 = channel3_reg_0; // @[cache_err.scala 265:29]
  assign rules_17_io_channel3_in_1 = channel3_reg_1; // @[cache_err.scala 265:29]
  assign rules_17_io_home_sharer_list_in_0 = home_sharer_list_reg_0; // @[cache_err.scala 266:37]
  assign rules_17_io_home_sharer_list_in_1 = home_sharer_list_reg_1; // @[cache_err.scala 266:37]
  assign rules_17_io_home_invalidate_list_in_0 = home_invalidate_list_reg_0; // @[cache_err.scala 267:41]
  assign rules_17_io_home_invalidate_list_in_1 = home_invalidate_list_reg_1; // @[cache_err.scala 267:41]
  assign rules_17_io_home_exclusive_granted_in = home_exclusive_granted_reg; // @[cache_err.scala 268:43]
  assign rules_17_io_home_current_command_in = home_current_command_reg; // @[cache_err.scala 269:41]
  assign rules_17_io_home_current_client_in = home_current_client_reg; // @[cache_err.scala 270:40]
  assign rules_17_io_cache_in_0 = cache_reg_0; // @[cache_err.scala 271:26]
  assign rules_17_io_cache_in_1 = cache_reg_1; // @[cache_err.scala 271:26]
  always @(posedge clock) begin
    if (reset) begin // @[cache_err.scala 208:29]
      channel1_reg_0 <= 3'h0; // @[cache_err.scala 208:29]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel1_reg_0 <= rules_17_io_channel1_out_0; // @[cache_err.scala 274:20]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel1_reg_0 <= rules_16_io_channel1_out_0; // @[cache_err.scala 274:20]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel1_reg_0 <= rules_15_io_channel1_out_0; // @[cache_err.scala 274:20]
    end else begin
      channel1_reg_0 <= _GEN_210;
    end
    if (reset) begin // @[cache_err.scala 208:29]
      channel1_reg_1 <= 3'h0; // @[cache_err.scala 208:29]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel1_reg_1 <= rules_17_io_channel1_out_1; // @[cache_err.scala 274:20]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel1_reg_1 <= rules_16_io_channel1_out_1; // @[cache_err.scala 274:20]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel1_reg_1 <= rules_15_io_channel1_out_1; // @[cache_err.scala 274:20]
    end else begin
      channel1_reg_1 <= _GEN_211;
    end
    if (reset) begin // @[cache_err.scala 211:31]
      channel2_4_reg_0 <= 3'h0; // @[cache_err.scala 211:31]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel2_4_reg_0 <= rules_17_io_channel2_4_out_0; // @[cache_err.scala 275:22]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel2_4_reg_0 <= rules_16_io_channel2_4_out_0; // @[cache_err.scala 275:22]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel2_4_reg_0 <= rules_15_io_channel2_4_out_0; // @[cache_err.scala 275:22]
    end else begin
      channel2_4_reg_0 <= _GEN_212;
    end
    if (reset) begin // @[cache_err.scala 211:31]
      channel2_4_reg_1 <= 3'h0; // @[cache_err.scala 211:31]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel2_4_reg_1 <= rules_17_io_channel2_4_out_1; // @[cache_err.scala 275:22]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel2_4_reg_1 <= rules_16_io_channel2_4_out_1; // @[cache_err.scala 275:22]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel2_4_reg_1 <= rules_15_io_channel2_4_out_1; // @[cache_err.scala 275:22]
    end else begin
      channel2_4_reg_1 <= _GEN_213;
    end
    if (reset) begin // @[cache_err.scala 214:29]
      channel3_reg_0 <= 3'h0; // @[cache_err.scala 214:29]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel3_reg_0 <= rules_17_io_channel3_out_0; // @[cache_err.scala 276:20]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel3_reg_0 <= rules_16_io_channel3_out_0; // @[cache_err.scala 276:20]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel3_reg_0 <= rules_15_io_channel3_out_0; // @[cache_err.scala 276:20]
    end else begin
      channel3_reg_0 <= _GEN_214;
    end
    if (reset) begin // @[cache_err.scala 214:29]
      channel3_reg_1 <= 3'h0; // @[cache_err.scala 214:29]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      channel3_reg_1 <= rules_17_io_channel3_out_1; // @[cache_err.scala 276:20]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      channel3_reg_1 <= rules_16_io_channel3_out_1; // @[cache_err.scala 276:20]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      channel3_reg_1 <= rules_15_io_channel3_out_1; // @[cache_err.scala 276:20]
    end else begin
      channel3_reg_1 <= _GEN_215;
    end
    if (reset) begin // @[cache_err.scala 217:37]
      home_sharer_list_reg_0 <= 1'h0; // @[cache_err.scala 217:37]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_0 <= rules_17_io_home_sharer_list_out_0; // @[cache_err.scala 277:28]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_0 <= rules_16_io_home_sharer_list_out_0; // @[cache_err.scala 277:28]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_0 <= rules_15_io_home_sharer_list_out_0; // @[cache_err.scala 277:28]
    end else begin
      home_sharer_list_reg_0 <= _GEN_216;
    end
    if (reset) begin // @[cache_err.scala 217:37]
      home_sharer_list_reg_1 <= 1'h0; // @[cache_err.scala 217:37]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_1 <= rules_17_io_home_sharer_list_out_1; // @[cache_err.scala 277:28]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_1 <= rules_16_io_home_sharer_list_out_1; // @[cache_err.scala 277:28]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_sharer_list_reg_1 <= rules_15_io_home_sharer_list_out_1; // @[cache_err.scala 277:28]
    end else begin
      home_sharer_list_reg_1 <= _GEN_217;
    end
    if (reset) begin // @[cache_err.scala 220:41]
      home_invalidate_list_reg_0 <= 1'h0; // @[cache_err.scala 220:41]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_0 <= rules_17_io_home_invalidate_list_out_0; // @[cache_err.scala 278:32]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_0 <= rules_16_io_home_invalidate_list_out_0; // @[cache_err.scala 278:32]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_0 <= rules_15_io_home_invalidate_list_out_0; // @[cache_err.scala 278:32]
    end else begin
      home_invalidate_list_reg_0 <= _GEN_218;
    end
    if (reset) begin // @[cache_err.scala 220:41]
      home_invalidate_list_reg_1 <= 1'h0; // @[cache_err.scala 220:41]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_1 <= rules_17_io_home_invalidate_list_out_1; // @[cache_err.scala 278:32]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_1 <= rules_16_io_home_invalidate_list_out_1; // @[cache_err.scala 278:32]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_invalidate_list_reg_1 <= rules_15_io_home_invalidate_list_out_1; // @[cache_err.scala 278:32]
    end else begin
      home_invalidate_list_reg_1 <= _GEN_219;
    end
    if (reset) begin // @[cache_err.scala 223:43]
      home_exclusive_granted_reg <= 1'h0; // @[cache_err.scala 223:43]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_exclusive_granted_reg <= rules_17_io_home_exclusive_granted_out; // @[cache_err.scala 279:34]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_exclusive_granted_reg <= rules_16_io_home_exclusive_granted_out; // @[cache_err.scala 279:34]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_exclusive_granted_reg <= rules_15_io_home_exclusive_granted_out; // @[cache_err.scala 279:34]
    end else begin
      home_exclusive_granted_reg <= _GEN_220;
    end
    if (reset) begin // @[cache_err.scala 226:41]
      home_current_command_reg <= 3'h0; // @[cache_err.scala 226:41]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_current_command_reg <= rules_17_io_home_current_command_out; // @[cache_err.scala 280:32]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_current_command_reg <= rules_16_io_home_current_command_out; // @[cache_err.scala 280:32]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_current_command_reg <= rules_15_io_home_current_command_out; // @[cache_err.scala 280:32]
    end else begin
      home_current_command_reg <= _GEN_221;
    end
    if (reset) begin // @[cache_err.scala 229:40]
      home_current_client_reg <= 1'h0; // @[cache_err.scala 229:40]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      home_current_client_reg <= rules_17_io_home_current_client_out; // @[cache_err.scala 281:31]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      home_current_client_reg <= rules_16_io_home_current_client_out; // @[cache_err.scala 281:31]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      home_current_client_reg <= rules_15_io_home_current_client_out; // @[cache_err.scala 281:31]
    end else begin
      home_current_client_reg <= _GEN_222;
    end
    if (reset) begin // @[cache_err.scala 232:26]
      cache_reg_0 <= 2'h0; // @[cache_err.scala 232:26]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      cache_reg_0 <= rules_17_io_cache_out_0; // @[cache_err.scala 282:17]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      cache_reg_0 <= rules_16_io_cache_out_0; // @[cache_err.scala 282:17]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      cache_reg_0 <= rules_15_io_cache_out_0; // @[cache_err.scala 282:17]
    end else begin
      cache_reg_0 <= _GEN_223;
    end
    if (reset) begin // @[cache_err.scala 232:26]
      cache_reg_1 <= 2'h0; // @[cache_err.scala 232:26]
    end else if (_T_34) begin // @[cache_err.scala 273:29]
      cache_reg_1 <= rules_17_io_cache_out_1; // @[cache_err.scala 282:17]
    end else if (_T_32) begin // @[cache_err.scala 273:29]
      cache_reg_1 <= rules_16_io_cache_out_1; // @[cache_err.scala 282:17]
    end else if (_T_30) begin // @[cache_err.scala 273:29]
      cache_reg_1 <= rules_15_io_cache_out_1; // @[cache_err.scala 282:17]
    end else begin
      cache_reg_1 <= _GEN_224;
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
                assume(reset==1);
            end

            endmodule
