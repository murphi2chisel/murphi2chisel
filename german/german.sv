module rule_Store(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_0_State == 2'h2 ? 1'h0 : io_Cache_in_0_Data; // @[german.scala 45:15 64:41 65:28]
  wire  _GEN_1 = io_Cache_in_0_State == 2'h2 ? 1'h0 : io_AuxData_in; // @[german.scala 55:17 64:41 66:22]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_en_r ? _GEN_0 : io_Cache_in_0_Data; // @[german.scala 45:15 62:16]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[german.scala 62:16 55:17]
endmodule
module rule_Store_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_0_State == 2'h2 | io_Cache_in_0_Data; // @[german.scala 45:15 64:41 65:28]
  wire  _GEN_1 = io_Cache_in_0_State == 2'h2 | io_AuxData_in; // @[german.scala 55:17 64:41 66:22]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_en_r ? _GEN_0 : io_Cache_in_0_Data; // @[german.scala 45:15 62:16]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[german.scala 62:16 55:17]
endmodule
module rule_Store_2(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_1_State == 2'h2 ? 1'h0 : io_Cache_in_1_Data; // @[german.scala 45:15 64:41 65:28]
  wire  _GEN_1 = io_Cache_in_1_State == 2'h2 ? 1'h0 : io_AuxData_in; // @[german.scala 55:17 64:41 66:22]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_0 : io_Cache_in_1_Data; // @[german.scala 45:15 62:16]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[german.scala 62:16 55:17]
endmodule
module rule_Store_3(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_1_State == 2'h2 | io_Cache_in_1_Data; // @[german.scala 45:15 64:41 65:28]
  wire  _GEN_1 = io_Cache_in_1_State == 2'h2 | io_AuxData_in; // @[german.scala 55:17 64:41 66:22]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_0 : io_Cache_in_1_Data; // @[german.scala 45:15 62:16]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[german.scala 62:16 55:17]
endmodule
module rule_SendReqS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_0_Cmd == 3'h0 & io_Cache_in_0_State == 2'h0 ? 3'h1 : io_Chan1_in_0_Cmd; // @[german.scala 46:15 77:79 78:27]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_0_Cmd; // @[german.scala 46:15 75:16]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendReqS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_1_Cmd == 3'h0 & io_Cache_in_1_State == 2'h0 ? 3'h1 : io_Chan1_in_1_Cmd; // @[german.scala 46:15 77:79 78:27]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_1_Cmd; // @[german.scala 46:15 75:16]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendReqE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_0_Cmd == 3'h0 & (io_Cache_in_0_State == 2'h0 | io_Cache_in_0_State == 2'h1) ? 3'h2 :
    io_Chan1_in_0_Cmd; // @[german.scala 89:115 46:15 90:27]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_0_Cmd; // @[german.scala 46:15 87:16]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendReqE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_1_Cmd == 3'h0 & (io_Cache_in_1_State == 2'h0 | io_Cache_in_1_State == 2'h1) ? 3'h2 :
    io_Chan1_in_1_Cmd; // @[german.scala 89:115 46:15 90:27]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_1_Cmd; // @[german.scala 46:15 87:16]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvReqS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h1 ? 3'h1 : io_CurCmd_in; // @[german.scala 101:74 102:21 52:16]
  wire  _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h1 ? 1'h0 : io_CurPtr_in; // @[german.scala 101:74 103:21 53:16]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h1 ? 3'h0 : io_Chan1_in_0_Cmd; // @[german.scala 101:74 104:27 46:15]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h1 ? io_ShrSet_out_0 : io_InvSet_in_0; // @[german.scala 101:74 106:26 49:16]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h1 ? io_ShrSet_out_1 : io_InvSet_in_1; // @[german.scala 101:74 106:26 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_0_Cmd; // @[german.scala 46:15 99:16]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_en_r ? _GEN_3 : io_InvSet_in_0; // @[german.scala 49:16 99:16]
  assign io_InvSet_out_1 = io_en_r ? _GEN_4 : io_InvSet_in_1; // @[german.scala 49:16 99:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[german.scala 52:16 99:16]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[german.scala 53:16 99:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvReqS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? 3'h1 : io_CurCmd_in; // @[german.scala 101:74 102:21 52:16]
  wire  _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 | io_CurPtr_in; // @[german.scala 101:74 103:21 53:16]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? 3'h0 : io_Chan1_in_1_Cmd; // @[german.scala 101:74 104:27 46:15]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? io_ShrSet_out_0 : io_InvSet_in_0; // @[german.scala 101:74 106:26 49:16]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? io_ShrSet_out_1 : io_InvSet_in_1; // @[german.scala 101:74 106:26 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_1_Cmd; // @[german.scala 46:15 99:16]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_en_r ? _GEN_3 : io_InvSet_in_0; // @[german.scala 49:16 99:16]
  assign io_InvSet_out_1 = io_en_r ? _GEN_4 : io_InvSet_in_1; // @[german.scala 49:16 99:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[german.scala 52:16 99:16]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[german.scala 53:16 99:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvReqE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h2 ? 3'h2 : io_CurCmd_in; // @[german.scala 118:74 119:21 52:16]
  wire  _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h2 ? 1'h0 : io_CurPtr_in; // @[german.scala 118:74 120:21 53:16]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h2 ? 3'h0 : io_Chan1_in_0_Cmd; // @[german.scala 118:74 121:27 46:15]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h2 ? io_ShrSet_out_0 : io_InvSet_in_0; // @[german.scala 118:74 123:26 49:16]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_0_Cmd == 3'h2 ? io_ShrSet_out_1 : io_InvSet_in_1; // @[german.scala 118:74 123:26 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_0_Cmd; // @[german.scala 116:16 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_en_r ? _GEN_3 : io_InvSet_in_0; // @[german.scala 116:16 49:16]
  assign io_InvSet_out_1 = io_en_r ? _GEN_4 : io_InvSet_in_1; // @[german.scala 116:16 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[german.scala 116:16 52:16]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[german.scala 116:16 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvReqE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? 3'h2 : io_CurCmd_in; // @[german.scala 118:74 119:21 52:16]
  wire  _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 | io_CurPtr_in; // @[german.scala 118:74 120:21 53:16]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? 3'h0 : io_Chan1_in_1_Cmd; // @[german.scala 118:74 121:27 46:15]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? io_ShrSet_out_0 : io_InvSet_in_0; // @[german.scala 118:74 123:26 49:16]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? io_ShrSet_out_1 : io_InvSet_in_1; // @[german.scala 118:74 123:26 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_1_Cmd; // @[german.scala 116:16 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_en_r ? _GEN_3 : io_InvSet_in_0; // @[german.scala 116:16 49:16]
  assign io_InvSet_out_1 = io_en_r ? _GEN_4 : io_InvSet_in_1; // @[german.scala 116:16 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[german.scala 116:16 52:16]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[german.scala 116:16 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendInv(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan2_in_0_Cmd == 3'h0 & (io_InvSet_in_0 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 3'h3 : io_Chan2_in_0_Cmd; // @[german.scala 135:170 136:27 47:15]
  wire  _GEN_1 = io_Chan2_in_0_Cmd == 3'h0 & (io_InvSet_in_0 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 1'h0 : io_InvSet_in_0; // @[german.scala 135:170 137:24 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_0_Cmd; // @[german.scala 133:16 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_en_r ? _GEN_1 : io_InvSet_in_0; // @[german.scala 133:16 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendInv_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h0 & (io_InvSet_in_1 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 3'h3 : io_Chan2_in_1_Cmd; // @[german.scala 135:170 136:27 47:15]
  wire  _GEN_1 = io_Chan2_in_1_Cmd == 3'h0 & (io_InvSet_in_1 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 1'h0 : io_InvSet_in_1; // @[german.scala 135:170 137:24 49:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_1_Cmd; // @[german.scala 133:16 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_en_r ? _GEN_1 : io_InvSet_in_1; // @[german.scala 133:16 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendGntS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h1 & (~io_CurPtr_in & (io_Chan2_in_0_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h5 :
    io_Chan2_in_0_Cmd; // @[german.scala 148:134 149:27 47:15]
  wire  _GEN_1 = io_CurCmd_in == 3'h1 & (~io_CurPtr_in & (io_Chan2_in_0_Cmd == 3'h0 & ~io_ExGntd_in)) ? io_MemData_out
     : io_Chan2_in_0_Data; // @[german.scala 148:134 150:28 47:15]
  wire  _GEN_2 = io_CurCmd_in == 3'h1 & (~io_CurPtr_in & (io_Chan2_in_0_Cmd == 3'h0 & ~io_ExGntd_in)) | io_ShrSet_in_0; // @[german.scala 148:134 151:24 50:16]
  wire [2:0] _GEN_3 = io_CurCmd_in == 3'h1 & (~io_CurPtr_in & (io_Chan2_in_0_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h0 :
    io_CurCmd_in; // @[german.scala 148:134 152:21 52:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_0_Cmd; // @[german.scala 146:16 47:15]
  assign io_Chan2_out_0_Data = io_en_r ? _GEN_1 : io_Chan2_in_0_Data; // @[german.scala 146:16 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_en_r ? _GEN_2 : io_ShrSet_in_0; // @[german.scala 146:16 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_3 : io_CurCmd_in; // @[german.scala 146:16 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendGntS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h1 & (io_CurPtr_in & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h5 :
    io_Chan2_in_1_Cmd; // @[german.scala 148:134 149:27 47:15]
  wire  _GEN_1 = io_CurCmd_in == 3'h1 & (io_CurPtr_in & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ? io_MemData_out :
    io_Chan2_in_1_Data; // @[german.scala 148:134 150:28 47:15]
  wire  _GEN_2 = io_CurCmd_in == 3'h1 & (io_CurPtr_in & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) | io_ShrSet_in_1; // @[german.scala 148:134 151:24 50:16]
  wire [2:0] _GEN_3 = io_CurCmd_in == 3'h1 & (io_CurPtr_in & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h0 :
    io_CurCmd_in; // @[german.scala 148:134 152:21 52:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_1_Cmd; // @[german.scala 146:16 47:15]
  assign io_Chan2_out_1_Data = io_en_r ? _GEN_1 : io_Chan2_in_1_Data; // @[german.scala 146:16 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_en_r ? _GEN_2 : io_ShrSet_in_1; // @[german.scala 146:16 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_en_r ? _GEN_3 : io_CurCmd_in; // @[german.scala 146:16 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendGntE(
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 161:16 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 161:16 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 161:16 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 161:16 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 161:16 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendGntE_1(
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 161:16 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 161:16 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 161:16 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 161:16 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 161:16 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvGntS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_0_Cmd == 3'h5 ? 2'h1 : io_Cache_in_0_State; // @[german.scala 185:42 186:29 45:15]
  wire  _GEN_1 = io_Chan2_in_0_Cmd == 3'h5 ? io_Chan2_out_0_Data : io_Cache_in_0_Data; // @[german.scala 185:42 187:28 45:15]
  wire [2:0] _GEN_2 = io_Chan2_in_0_Cmd == 3'h5 ? 3'h0 : io_Chan2_in_0_Cmd; // @[german.scala 185:42 188:27 47:15]
  assign io_Cache_out_0_State = io_en_r ? _GEN_0 : io_Cache_in_0_State; // @[german.scala 183:16 45:15]
  assign io_Cache_out_0_Data = io_en_r ? _GEN_1 : io_Cache_in_0_Data; // @[german.scala 183:16 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_0_Cmd; // @[german.scala 183:16 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvGntS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h5 ? 2'h1 : io_Cache_in_1_State; // @[german.scala 185:42 186:29 45:15]
  wire  _GEN_1 = io_Chan2_in_1_Cmd == 3'h5 ? io_Chan2_out_1_Data : io_Cache_in_1_Data; // @[german.scala 185:42 187:28 45:15]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h5 ? 3'h0 : io_Chan2_in_1_Cmd; // @[german.scala 185:42 188:27 47:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_en_r ? _GEN_0 : io_Cache_in_1_State; // @[german.scala 183:16 45:15]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_1 : io_Cache_in_1_Data; // @[german.scala 183:16 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_1_Cmd; // @[german.scala 183:16 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvGntE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_0_Cmd == 3'h6 ? 2'h2 : io_Cache_in_0_State; // @[german.scala 199:42 200:29 45:15]
  wire  _GEN_1 = io_Chan2_in_0_Cmd == 3'h6 ? io_Chan2_out_0_Data : io_Cache_in_0_Data; // @[german.scala 199:42 201:28 45:15]
  wire [2:0] _GEN_2 = io_Chan2_in_0_Cmd == 3'h6 ? 3'h0 : io_Chan2_in_0_Cmd; // @[german.scala 199:42 202:27 47:15]
  assign io_Cache_out_0_State = io_en_r ? _GEN_0 : io_Cache_in_0_State; // @[german.scala 197:16 45:15]
  assign io_Cache_out_0_Data = io_en_r ? _GEN_1 : io_Cache_in_0_Data; // @[german.scala 197:16 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_0_Cmd; // @[german.scala 197:16 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvGntE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h6 ? 2'h2 : io_Cache_in_1_State; // @[german.scala 199:42 200:29 45:15]
  wire  _GEN_1 = io_Chan2_in_1_Cmd == 3'h6 ? io_Chan2_out_1_Data : io_Cache_in_1_Data; // @[german.scala 199:42 201:28 45:15]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h6 ? 3'h0 : io_Chan2_in_1_Cmd; // @[german.scala 199:42 202:27 47:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_en_r ? _GEN_0 : io_Cache_in_1_State; // @[german.scala 197:16 45:15]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_1 : io_Cache_in_1_Data; // @[german.scala 197:16 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_1_Cmd; // @[german.scala 197:16 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendInvAck(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_0_State == 2'h2 ? io_Cache_out_0_Data : io_Chan3_in_0_Data; // @[german.scala 216:43 217:30 48:15]
  wire [2:0] _GEN_1 = io_Chan2_in_0_Cmd == 3'h3 & io_Chan3_in_0_Cmd == 3'h0 ? 3'h0 : io_Chan2_in_0_Cmd; // @[german.scala 213:79 214:27 47:15]
  wire [2:0] _GEN_2 = io_Chan2_in_0_Cmd == 3'h3 & io_Chan3_in_0_Cmd == 3'h0 ? 3'h4 : io_Chan3_in_0_Cmd; // @[german.scala 213:79 215:27 48:15]
  wire  _GEN_3 = io_Chan2_in_0_Cmd == 3'h3 & io_Chan3_in_0_Cmd == 3'h0 ? _GEN_0 : io_Chan3_in_0_Data; // @[german.scala 213:79 48:15]
  wire [1:0] _GEN_4 = io_Chan2_in_0_Cmd == 3'h3 & io_Chan3_in_0_Cmd == 3'h0 ? 2'h0 : io_Cache_in_0_State; // @[german.scala 213:79 219:29 45:15]
  assign io_Cache_out_0_State = io_en_r ? _GEN_4 : io_Cache_in_0_State; // @[german.scala 211:16 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_en_r ? _GEN_1 : io_Chan2_in_0_Cmd; // @[german.scala 211:16 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_0_Cmd; // @[german.scala 211:16 48:15]
  assign io_Chan3_out_0_Data = io_en_r ? _GEN_3 : io_Chan3_in_0_Data; // @[german.scala 211:16 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_SendInvAck_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_Cache_in_1_State == 2'h2 ? io_Cache_out_1_Data : io_Chan3_in_1_Data; // @[german.scala 216:43 217:30 48:15]
  wire [2:0] _GEN_1 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 3'h0 : io_Chan2_in_1_Cmd; // @[german.scala 213:79 214:27 47:15]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 3'h4 : io_Chan3_in_1_Cmd; // @[german.scala 213:79 215:27 48:15]
  wire  _GEN_3 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? _GEN_0 : io_Chan3_in_1_Data; // @[german.scala 213:79 48:15]
  wire [1:0] _GEN_4 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 2'h0 : io_Cache_in_1_State; // @[german.scala 213:79 219:29 45:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_en_r ? _GEN_4 : io_Cache_in_1_State; // @[german.scala 211:16 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_1 : io_Chan2_in_1_Cmd; // @[german.scala 211:16 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_1_Cmd; // @[german.scala 211:16 48:15]
  assign io_Chan3_out_1_Data = io_en_r ? _GEN_3 : io_Chan3_in_1_Data; // @[german.scala 211:16 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_ExGntd_in; // @[german.scala 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_MemData_in; // @[german.scala 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvInvAck(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_ExGntd_in ? 1'h0 : io_ExGntd_in; // @[german.scala 233:38 234:23 51:16]
  wire  _GEN_1 = io_ExGntd_in ? io_Chan3_out_0_Data : io_MemData_in; // @[german.scala 233:38 235:24 54:17]
  wire [2:0] _GEN_2 = io_Chan3_in_0_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 3'h0 : io_Chan3_in_0_Cmd; // @[german.scala 230:76 231:27 48:15]
  wire  _GEN_3 = io_Chan3_in_0_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 1'h0 : io_ShrSet_in_0; // @[german.scala 230:76 232:24 50:16]
  wire  _GEN_4 = io_Chan3_in_0_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_0 : io_ExGntd_in; // @[german.scala 230:76 51:16]
  wire  _GEN_5 = io_Chan3_in_0_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_1 : io_MemData_in; // @[german.scala 230:76 54:17]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_0_Cmd; // @[german.scala 228:16 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_en_r ? _GEN_3 : io_ShrSet_in_0; // @[german.scala 228:16 50:16]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[german.scala 50:16]
  assign io_ExGntd_out = io_en_r ? _GEN_4 : io_ExGntd_in; // @[german.scala 228:16 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_en_r ? _GEN_5 : io_MemData_in; // @[german.scala 228:16 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module rule_RecvInvAck_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input        io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input        io_Cache_in_1_Data,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input        io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input        io_Chan1_in_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input        io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input        io_Chan2_in_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input        io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input        io_Chan3_in_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input        io_CurPtr_in,
  output       io_CurPtr_out,
  input        io_MemData_in,
  output       io_MemData_out,
  input        io_AuxData_in,
  output       io_AuxData_out
);
  wire  _GEN_0 = io_ExGntd_in ? 1'h0 : io_ExGntd_in; // @[german.scala 233:38 234:23 51:16]
  wire  _GEN_1 = io_ExGntd_in ? io_Chan3_out_1_Data : io_MemData_in; // @[german.scala 233:38 235:24 54:17]
  wire [2:0] _GEN_2 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 3'h0 : io_Chan3_in_1_Cmd; // @[german.scala 230:76 231:27 48:15]
  wire  _GEN_3 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 1'h0 : io_ShrSet_in_1; // @[german.scala 230:76 232:24 50:16]
  wire  _GEN_4 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_0 : io_ExGntd_in; // @[german.scala 230:76 51:16]
  wire  _GEN_5 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_1 : io_MemData_in; // @[german.scala 230:76 54:17]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[german.scala 45:15]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[german.scala 45:15]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[german.scala 45:15]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[german.scala 45:15]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[german.scala 46:15]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[german.scala 46:15]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[german.scala 46:15]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[german.scala 47:15]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[german.scala 47:15]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[german.scala 47:15]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[german.scala 48:15]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[german.scala 48:15]
  assign io_Chan3_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_1_Cmd; // @[german.scala 228:16 48:15]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[german.scala 48:15]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[german.scala 49:16]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[german.scala 49:16]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[german.scala 50:16]
  assign io_ShrSet_out_1 = io_en_r ? _GEN_3 : io_ShrSet_in_1; // @[german.scala 228:16 50:16]
  assign io_ExGntd_out = io_en_r ? _GEN_4 : io_ExGntd_in; // @[german.scala 228:16 51:16]
  assign io_CurCmd_out = io_CurCmd_in; // @[german.scala 52:16]
  assign io_CurPtr_out = io_CurPtr_in; // @[german.scala 53:16]
  assign io_MemData_out = io_en_r ? _GEN_5 : io_MemData_in; // @[german.scala 228:16 54:17]
  assign io_AuxData_out = io_AuxData_in; // @[german.scala 55:17]
endmodule
module german(
  input        clock,
  input        reset,
  input  [4:0] io_en_a,
  output [1:0] io_Cache_out_0_State,
  output       io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output       io_Cache_out_1_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output       io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output       io_Chan1_out_1_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output       io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output       io_Chan2_out_1_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output       io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output       io_Chan3_out_1_Data,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ExGntd_out,
  output [2:0] io_CurCmd_out,
  output       io_CurPtr_out,
  output       io_MemData_out,
  output       io_AuxData_out
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
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[german.scala 320:22]
  wire [1:0] rules_0_io_Cache_in_0_State; // @[german.scala 320:22]
  wire  rules_0_io_Cache_in_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_0_io_Cache_in_1_State; // @[german.scala 320:22]
  wire  rules_0_io_Cache_in_1_Data; // @[german.scala 320:22]
  wire [1:0] rules_0_io_Cache_out_0_State; // @[german.scala 320:22]
  wire  rules_0_io_Cache_out_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_0_io_Cache_out_1_State; // @[german.scala 320:22]
  wire  rules_0_io_Cache_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan1_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan1_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan1_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan1_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan1_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan1_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan1_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan1_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan2_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan2_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan2_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan2_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan2_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan2_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan2_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan2_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan3_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan3_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan3_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan3_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan3_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan3_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_0_io_Chan3_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_0_io_Chan3_out_1_Data; // @[german.scala 320:22]
  wire  rules_0_io_InvSet_in_0; // @[german.scala 320:22]
  wire  rules_0_io_InvSet_in_1; // @[german.scala 320:22]
  wire  rules_0_io_InvSet_out_0; // @[german.scala 320:22]
  wire  rules_0_io_InvSet_out_1; // @[german.scala 320:22]
  wire  rules_0_io_ShrSet_in_0; // @[german.scala 320:22]
  wire  rules_0_io_ShrSet_in_1; // @[german.scala 320:22]
  wire  rules_0_io_ShrSet_out_0; // @[german.scala 320:22]
  wire  rules_0_io_ShrSet_out_1; // @[german.scala 320:22]
  wire  rules_0_io_ExGntd_in; // @[german.scala 320:22]
  wire  rules_0_io_ExGntd_out; // @[german.scala 320:22]
  wire [2:0] rules_0_io_CurCmd_in; // @[german.scala 320:22]
  wire [2:0] rules_0_io_CurCmd_out; // @[german.scala 320:22]
  wire  rules_0_io_CurPtr_in; // @[german.scala 320:22]
  wire  rules_0_io_CurPtr_out; // @[german.scala 320:22]
  wire  rules_0_io_MemData_in; // @[german.scala 320:22]
  wire  rules_0_io_MemData_out; // @[german.scala 320:22]
  wire  rules_0_io_AuxData_in; // @[german.scala 320:22]
  wire  rules_0_io_AuxData_out; // @[german.scala 320:22]
  wire  rules_1_io_en_r; // @[german.scala 320:22]
  wire [1:0] rules_1_io_Cache_in_0_State; // @[german.scala 320:22]
  wire  rules_1_io_Cache_in_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_1_io_Cache_in_1_State; // @[german.scala 320:22]
  wire  rules_1_io_Cache_in_1_Data; // @[german.scala 320:22]
  wire [1:0] rules_1_io_Cache_out_0_State; // @[german.scala 320:22]
  wire  rules_1_io_Cache_out_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_1_io_Cache_out_1_State; // @[german.scala 320:22]
  wire  rules_1_io_Cache_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan1_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan1_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan1_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan1_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan1_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan1_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan1_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan1_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan2_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan2_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan2_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan2_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan2_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan2_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan2_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan2_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan3_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan3_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan3_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan3_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan3_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan3_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_1_io_Chan3_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_1_io_Chan3_out_1_Data; // @[german.scala 320:22]
  wire  rules_1_io_InvSet_in_0; // @[german.scala 320:22]
  wire  rules_1_io_InvSet_in_1; // @[german.scala 320:22]
  wire  rules_1_io_InvSet_out_0; // @[german.scala 320:22]
  wire  rules_1_io_InvSet_out_1; // @[german.scala 320:22]
  wire  rules_1_io_ShrSet_in_0; // @[german.scala 320:22]
  wire  rules_1_io_ShrSet_in_1; // @[german.scala 320:22]
  wire  rules_1_io_ShrSet_out_0; // @[german.scala 320:22]
  wire  rules_1_io_ShrSet_out_1; // @[german.scala 320:22]
  wire  rules_1_io_ExGntd_in; // @[german.scala 320:22]
  wire  rules_1_io_ExGntd_out; // @[german.scala 320:22]
  wire [2:0] rules_1_io_CurCmd_in; // @[german.scala 320:22]
  wire [2:0] rules_1_io_CurCmd_out; // @[german.scala 320:22]
  wire  rules_1_io_CurPtr_in; // @[german.scala 320:22]
  wire  rules_1_io_CurPtr_out; // @[german.scala 320:22]
  wire  rules_1_io_MemData_in; // @[german.scala 320:22]
  wire  rules_1_io_MemData_out; // @[german.scala 320:22]
  wire  rules_1_io_AuxData_in; // @[german.scala 320:22]
  wire  rules_1_io_AuxData_out; // @[german.scala 320:22]
  wire  rules_2_io_en_r; // @[german.scala 320:22]
  wire [1:0] rules_2_io_Cache_in_0_State; // @[german.scala 320:22]
  wire  rules_2_io_Cache_in_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_2_io_Cache_in_1_State; // @[german.scala 320:22]
  wire  rules_2_io_Cache_in_1_Data; // @[german.scala 320:22]
  wire [1:0] rules_2_io_Cache_out_0_State; // @[german.scala 320:22]
  wire  rules_2_io_Cache_out_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_2_io_Cache_out_1_State; // @[german.scala 320:22]
  wire  rules_2_io_Cache_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan1_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan1_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan1_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan1_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan1_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan1_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan1_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan1_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan2_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan2_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan2_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan2_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan2_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan2_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan2_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan2_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan3_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan3_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan3_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan3_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan3_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan3_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_2_io_Chan3_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_2_io_Chan3_out_1_Data; // @[german.scala 320:22]
  wire  rules_2_io_InvSet_in_0; // @[german.scala 320:22]
  wire  rules_2_io_InvSet_in_1; // @[german.scala 320:22]
  wire  rules_2_io_InvSet_out_0; // @[german.scala 320:22]
  wire  rules_2_io_InvSet_out_1; // @[german.scala 320:22]
  wire  rules_2_io_ShrSet_in_0; // @[german.scala 320:22]
  wire  rules_2_io_ShrSet_in_1; // @[german.scala 320:22]
  wire  rules_2_io_ShrSet_out_0; // @[german.scala 320:22]
  wire  rules_2_io_ShrSet_out_1; // @[german.scala 320:22]
  wire  rules_2_io_ExGntd_in; // @[german.scala 320:22]
  wire  rules_2_io_ExGntd_out; // @[german.scala 320:22]
  wire [2:0] rules_2_io_CurCmd_in; // @[german.scala 320:22]
  wire [2:0] rules_2_io_CurCmd_out; // @[german.scala 320:22]
  wire  rules_2_io_CurPtr_in; // @[german.scala 320:22]
  wire  rules_2_io_CurPtr_out; // @[german.scala 320:22]
  wire  rules_2_io_MemData_in; // @[german.scala 320:22]
  wire  rules_2_io_MemData_out; // @[german.scala 320:22]
  wire  rules_2_io_AuxData_in; // @[german.scala 320:22]
  wire  rules_2_io_AuxData_out; // @[german.scala 320:22]
  wire  rules_3_io_en_r; // @[german.scala 320:22]
  wire [1:0] rules_3_io_Cache_in_0_State; // @[german.scala 320:22]
  wire  rules_3_io_Cache_in_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_3_io_Cache_in_1_State; // @[german.scala 320:22]
  wire  rules_3_io_Cache_in_1_Data; // @[german.scala 320:22]
  wire [1:0] rules_3_io_Cache_out_0_State; // @[german.scala 320:22]
  wire  rules_3_io_Cache_out_0_Data; // @[german.scala 320:22]
  wire [1:0] rules_3_io_Cache_out_1_State; // @[german.scala 320:22]
  wire  rules_3_io_Cache_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan1_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan1_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan1_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan1_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan1_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan1_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan1_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan1_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan2_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan2_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan2_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan2_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan2_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan2_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan2_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan2_out_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan3_in_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan3_in_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan3_in_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan3_in_1_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan3_out_0_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan3_out_0_Data; // @[german.scala 320:22]
  wire [2:0] rules_3_io_Chan3_out_1_Cmd; // @[german.scala 320:22]
  wire  rules_3_io_Chan3_out_1_Data; // @[german.scala 320:22]
  wire  rules_3_io_InvSet_in_0; // @[german.scala 320:22]
  wire  rules_3_io_InvSet_in_1; // @[german.scala 320:22]
  wire  rules_3_io_InvSet_out_0; // @[german.scala 320:22]
  wire  rules_3_io_InvSet_out_1; // @[german.scala 320:22]
  wire  rules_3_io_ShrSet_in_0; // @[german.scala 320:22]
  wire  rules_3_io_ShrSet_in_1; // @[german.scala 320:22]
  wire  rules_3_io_ShrSet_out_0; // @[german.scala 320:22]
  wire  rules_3_io_ShrSet_out_1; // @[german.scala 320:22]
  wire  rules_3_io_ExGntd_in; // @[german.scala 320:22]
  wire  rules_3_io_ExGntd_out; // @[german.scala 320:22]
  wire [2:0] rules_3_io_CurCmd_in; // @[german.scala 320:22]
  wire [2:0] rules_3_io_CurCmd_out; // @[german.scala 320:22]
  wire  rules_3_io_CurPtr_in; // @[german.scala 320:22]
  wire  rules_3_io_CurPtr_out; // @[german.scala 320:22]
  wire  rules_3_io_MemData_in; // @[german.scala 320:22]
  wire  rules_3_io_MemData_out; // @[german.scala 320:22]
  wire  rules_3_io_AuxData_in; // @[german.scala 320:22]
  wire  rules_3_io_AuxData_out; // @[german.scala 320:22]
  wire  rules_4_io_en_r; // @[german.scala 325:20]
  wire [1:0] rules_4_io_Cache_in_0_State; // @[german.scala 325:20]
  wire  rules_4_io_Cache_in_0_Data; // @[german.scala 325:20]
  wire [1:0] rules_4_io_Cache_in_1_State; // @[german.scala 325:20]
  wire  rules_4_io_Cache_in_1_Data; // @[german.scala 325:20]
  wire [1:0] rules_4_io_Cache_out_0_State; // @[german.scala 325:20]
  wire  rules_4_io_Cache_out_0_Data; // @[german.scala 325:20]
  wire [1:0] rules_4_io_Cache_out_1_State; // @[german.scala 325:20]
  wire  rules_4_io_Cache_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan1_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan1_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan1_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan1_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan1_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan1_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan1_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan1_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan2_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan2_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan2_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan2_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan2_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan2_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan2_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan2_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan3_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan3_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan3_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan3_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan3_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan3_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_4_io_Chan3_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_4_io_Chan3_out_1_Data; // @[german.scala 325:20]
  wire  rules_4_io_InvSet_in_0; // @[german.scala 325:20]
  wire  rules_4_io_InvSet_in_1; // @[german.scala 325:20]
  wire  rules_4_io_InvSet_out_0; // @[german.scala 325:20]
  wire  rules_4_io_InvSet_out_1; // @[german.scala 325:20]
  wire  rules_4_io_ShrSet_in_0; // @[german.scala 325:20]
  wire  rules_4_io_ShrSet_in_1; // @[german.scala 325:20]
  wire  rules_4_io_ShrSet_out_0; // @[german.scala 325:20]
  wire  rules_4_io_ShrSet_out_1; // @[german.scala 325:20]
  wire  rules_4_io_ExGntd_in; // @[german.scala 325:20]
  wire  rules_4_io_ExGntd_out; // @[german.scala 325:20]
  wire [2:0] rules_4_io_CurCmd_in; // @[german.scala 325:20]
  wire [2:0] rules_4_io_CurCmd_out; // @[german.scala 325:20]
  wire  rules_4_io_CurPtr_in; // @[german.scala 325:20]
  wire  rules_4_io_CurPtr_out; // @[german.scala 325:20]
  wire  rules_4_io_MemData_in; // @[german.scala 325:20]
  wire  rules_4_io_MemData_out; // @[german.scala 325:20]
  wire  rules_4_io_AuxData_in; // @[german.scala 325:20]
  wire  rules_4_io_AuxData_out; // @[german.scala 325:20]
  wire  rules_5_io_en_r; // @[german.scala 325:20]
  wire [1:0] rules_5_io_Cache_in_0_State; // @[german.scala 325:20]
  wire  rules_5_io_Cache_in_0_Data; // @[german.scala 325:20]
  wire [1:0] rules_5_io_Cache_in_1_State; // @[german.scala 325:20]
  wire  rules_5_io_Cache_in_1_Data; // @[german.scala 325:20]
  wire [1:0] rules_5_io_Cache_out_0_State; // @[german.scala 325:20]
  wire  rules_5_io_Cache_out_0_Data; // @[german.scala 325:20]
  wire [1:0] rules_5_io_Cache_out_1_State; // @[german.scala 325:20]
  wire  rules_5_io_Cache_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan1_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan1_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan1_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan1_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan1_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan1_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan1_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan1_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan2_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan2_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan2_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan2_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan2_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan2_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan2_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan2_out_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan3_in_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan3_in_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan3_in_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan3_in_1_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan3_out_0_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan3_out_0_Data; // @[german.scala 325:20]
  wire [2:0] rules_5_io_Chan3_out_1_Cmd; // @[german.scala 325:20]
  wire  rules_5_io_Chan3_out_1_Data; // @[german.scala 325:20]
  wire  rules_5_io_InvSet_in_0; // @[german.scala 325:20]
  wire  rules_5_io_InvSet_in_1; // @[german.scala 325:20]
  wire  rules_5_io_InvSet_out_0; // @[german.scala 325:20]
  wire  rules_5_io_InvSet_out_1; // @[german.scala 325:20]
  wire  rules_5_io_ShrSet_in_0; // @[german.scala 325:20]
  wire  rules_5_io_ShrSet_in_1; // @[german.scala 325:20]
  wire  rules_5_io_ShrSet_out_0; // @[german.scala 325:20]
  wire  rules_5_io_ShrSet_out_1; // @[german.scala 325:20]
  wire  rules_5_io_ExGntd_in; // @[german.scala 325:20]
  wire  rules_5_io_ExGntd_out; // @[german.scala 325:20]
  wire [2:0] rules_5_io_CurCmd_in; // @[german.scala 325:20]
  wire [2:0] rules_5_io_CurCmd_out; // @[german.scala 325:20]
  wire  rules_5_io_CurPtr_in; // @[german.scala 325:20]
  wire  rules_5_io_CurPtr_out; // @[german.scala 325:20]
  wire  rules_5_io_MemData_in; // @[german.scala 325:20]
  wire  rules_5_io_MemData_out; // @[german.scala 325:20]
  wire  rules_5_io_AuxData_in; // @[german.scala 325:20]
  wire  rules_5_io_AuxData_out; // @[german.scala 325:20]
  wire  rules_6_io_en_r; // @[german.scala 329:20]
  wire [1:0] rules_6_io_Cache_in_0_State; // @[german.scala 329:20]
  wire  rules_6_io_Cache_in_0_Data; // @[german.scala 329:20]
  wire [1:0] rules_6_io_Cache_in_1_State; // @[german.scala 329:20]
  wire  rules_6_io_Cache_in_1_Data; // @[german.scala 329:20]
  wire [1:0] rules_6_io_Cache_out_0_State; // @[german.scala 329:20]
  wire  rules_6_io_Cache_out_0_Data; // @[german.scala 329:20]
  wire [1:0] rules_6_io_Cache_out_1_State; // @[german.scala 329:20]
  wire  rules_6_io_Cache_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan1_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan1_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan1_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan1_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan1_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan1_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan1_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan1_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan2_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan2_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan2_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan2_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan2_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan2_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan2_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan2_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan3_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan3_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan3_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan3_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan3_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan3_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_6_io_Chan3_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_6_io_Chan3_out_1_Data; // @[german.scala 329:20]
  wire  rules_6_io_InvSet_in_0; // @[german.scala 329:20]
  wire  rules_6_io_InvSet_in_1; // @[german.scala 329:20]
  wire  rules_6_io_InvSet_out_0; // @[german.scala 329:20]
  wire  rules_6_io_InvSet_out_1; // @[german.scala 329:20]
  wire  rules_6_io_ShrSet_in_0; // @[german.scala 329:20]
  wire  rules_6_io_ShrSet_in_1; // @[german.scala 329:20]
  wire  rules_6_io_ShrSet_out_0; // @[german.scala 329:20]
  wire  rules_6_io_ShrSet_out_1; // @[german.scala 329:20]
  wire  rules_6_io_ExGntd_in; // @[german.scala 329:20]
  wire  rules_6_io_ExGntd_out; // @[german.scala 329:20]
  wire [2:0] rules_6_io_CurCmd_in; // @[german.scala 329:20]
  wire [2:0] rules_6_io_CurCmd_out; // @[german.scala 329:20]
  wire  rules_6_io_CurPtr_in; // @[german.scala 329:20]
  wire  rules_6_io_CurPtr_out; // @[german.scala 329:20]
  wire  rules_6_io_MemData_in; // @[german.scala 329:20]
  wire  rules_6_io_MemData_out; // @[german.scala 329:20]
  wire  rules_6_io_AuxData_in; // @[german.scala 329:20]
  wire  rules_6_io_AuxData_out; // @[german.scala 329:20]
  wire  rules_7_io_en_r; // @[german.scala 329:20]
  wire [1:0] rules_7_io_Cache_in_0_State; // @[german.scala 329:20]
  wire  rules_7_io_Cache_in_0_Data; // @[german.scala 329:20]
  wire [1:0] rules_7_io_Cache_in_1_State; // @[german.scala 329:20]
  wire  rules_7_io_Cache_in_1_Data; // @[german.scala 329:20]
  wire [1:0] rules_7_io_Cache_out_0_State; // @[german.scala 329:20]
  wire  rules_7_io_Cache_out_0_Data; // @[german.scala 329:20]
  wire [1:0] rules_7_io_Cache_out_1_State; // @[german.scala 329:20]
  wire  rules_7_io_Cache_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan1_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan1_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan1_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan1_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan1_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan1_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan1_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan1_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan2_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan2_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan2_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan2_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan2_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan2_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan2_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan2_out_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan3_in_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan3_in_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan3_in_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan3_in_1_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan3_out_0_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan3_out_0_Data; // @[german.scala 329:20]
  wire [2:0] rules_7_io_Chan3_out_1_Cmd; // @[german.scala 329:20]
  wire  rules_7_io_Chan3_out_1_Data; // @[german.scala 329:20]
  wire  rules_7_io_InvSet_in_0; // @[german.scala 329:20]
  wire  rules_7_io_InvSet_in_1; // @[german.scala 329:20]
  wire  rules_7_io_InvSet_out_0; // @[german.scala 329:20]
  wire  rules_7_io_InvSet_out_1; // @[german.scala 329:20]
  wire  rules_7_io_ShrSet_in_0; // @[german.scala 329:20]
  wire  rules_7_io_ShrSet_in_1; // @[german.scala 329:20]
  wire  rules_7_io_ShrSet_out_0; // @[german.scala 329:20]
  wire  rules_7_io_ShrSet_out_1; // @[german.scala 329:20]
  wire  rules_7_io_ExGntd_in; // @[german.scala 329:20]
  wire  rules_7_io_ExGntd_out; // @[german.scala 329:20]
  wire [2:0] rules_7_io_CurCmd_in; // @[german.scala 329:20]
  wire [2:0] rules_7_io_CurCmd_out; // @[german.scala 329:20]
  wire  rules_7_io_CurPtr_in; // @[german.scala 329:20]
  wire  rules_7_io_CurPtr_out; // @[german.scala 329:20]
  wire  rules_7_io_MemData_in; // @[german.scala 329:20]
  wire  rules_7_io_MemData_out; // @[german.scala 329:20]
  wire  rules_7_io_AuxData_in; // @[german.scala 329:20]
  wire  rules_7_io_AuxData_out; // @[german.scala 329:20]
  wire  rules_8_io_en_r; // @[german.scala 333:20]
  wire [1:0] rules_8_io_Cache_in_0_State; // @[german.scala 333:20]
  wire  rules_8_io_Cache_in_0_Data; // @[german.scala 333:20]
  wire [1:0] rules_8_io_Cache_in_1_State; // @[german.scala 333:20]
  wire  rules_8_io_Cache_in_1_Data; // @[german.scala 333:20]
  wire [1:0] rules_8_io_Cache_out_0_State; // @[german.scala 333:20]
  wire  rules_8_io_Cache_out_0_Data; // @[german.scala 333:20]
  wire [1:0] rules_8_io_Cache_out_1_State; // @[german.scala 333:20]
  wire  rules_8_io_Cache_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan1_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan1_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan1_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan1_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan1_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan1_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan1_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan1_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan2_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan2_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan2_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan2_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan2_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan2_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan2_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan2_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan3_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan3_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan3_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan3_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan3_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan3_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_8_io_Chan3_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_8_io_Chan3_out_1_Data; // @[german.scala 333:20]
  wire  rules_8_io_InvSet_in_0; // @[german.scala 333:20]
  wire  rules_8_io_InvSet_in_1; // @[german.scala 333:20]
  wire  rules_8_io_InvSet_out_0; // @[german.scala 333:20]
  wire  rules_8_io_InvSet_out_1; // @[german.scala 333:20]
  wire  rules_8_io_ShrSet_in_0; // @[german.scala 333:20]
  wire  rules_8_io_ShrSet_in_1; // @[german.scala 333:20]
  wire  rules_8_io_ShrSet_out_0; // @[german.scala 333:20]
  wire  rules_8_io_ShrSet_out_1; // @[german.scala 333:20]
  wire  rules_8_io_ExGntd_in; // @[german.scala 333:20]
  wire  rules_8_io_ExGntd_out; // @[german.scala 333:20]
  wire [2:0] rules_8_io_CurCmd_in; // @[german.scala 333:20]
  wire [2:0] rules_8_io_CurCmd_out; // @[german.scala 333:20]
  wire  rules_8_io_CurPtr_in; // @[german.scala 333:20]
  wire  rules_8_io_CurPtr_out; // @[german.scala 333:20]
  wire  rules_8_io_MemData_in; // @[german.scala 333:20]
  wire  rules_8_io_MemData_out; // @[german.scala 333:20]
  wire  rules_8_io_AuxData_in; // @[german.scala 333:20]
  wire  rules_8_io_AuxData_out; // @[german.scala 333:20]
  wire  rules_9_io_en_r; // @[german.scala 333:20]
  wire [1:0] rules_9_io_Cache_in_0_State; // @[german.scala 333:20]
  wire  rules_9_io_Cache_in_0_Data; // @[german.scala 333:20]
  wire [1:0] rules_9_io_Cache_in_1_State; // @[german.scala 333:20]
  wire  rules_9_io_Cache_in_1_Data; // @[german.scala 333:20]
  wire [1:0] rules_9_io_Cache_out_0_State; // @[german.scala 333:20]
  wire  rules_9_io_Cache_out_0_Data; // @[german.scala 333:20]
  wire [1:0] rules_9_io_Cache_out_1_State; // @[german.scala 333:20]
  wire  rules_9_io_Cache_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan1_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan1_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan1_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan1_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan1_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan1_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan1_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan1_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan2_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan2_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan2_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan2_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan2_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan2_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan2_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan2_out_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan3_in_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan3_in_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan3_in_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan3_in_1_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan3_out_0_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan3_out_0_Data; // @[german.scala 333:20]
  wire [2:0] rules_9_io_Chan3_out_1_Cmd; // @[german.scala 333:20]
  wire  rules_9_io_Chan3_out_1_Data; // @[german.scala 333:20]
  wire  rules_9_io_InvSet_in_0; // @[german.scala 333:20]
  wire  rules_9_io_InvSet_in_1; // @[german.scala 333:20]
  wire  rules_9_io_InvSet_out_0; // @[german.scala 333:20]
  wire  rules_9_io_InvSet_out_1; // @[german.scala 333:20]
  wire  rules_9_io_ShrSet_in_0; // @[german.scala 333:20]
  wire  rules_9_io_ShrSet_in_1; // @[german.scala 333:20]
  wire  rules_9_io_ShrSet_out_0; // @[german.scala 333:20]
  wire  rules_9_io_ShrSet_out_1; // @[german.scala 333:20]
  wire  rules_9_io_ExGntd_in; // @[german.scala 333:20]
  wire  rules_9_io_ExGntd_out; // @[german.scala 333:20]
  wire [2:0] rules_9_io_CurCmd_in; // @[german.scala 333:20]
  wire [2:0] rules_9_io_CurCmd_out; // @[german.scala 333:20]
  wire  rules_9_io_CurPtr_in; // @[german.scala 333:20]
  wire  rules_9_io_CurPtr_out; // @[german.scala 333:20]
  wire  rules_9_io_MemData_in; // @[german.scala 333:20]
  wire  rules_9_io_MemData_out; // @[german.scala 333:20]
  wire  rules_9_io_AuxData_in; // @[german.scala 333:20]
  wire  rules_9_io_AuxData_out; // @[german.scala 333:20]
  wire  rules_10_io_en_r; // @[german.scala 337:20]
  wire [1:0] rules_10_io_Cache_in_0_State; // @[german.scala 337:20]
  wire  rules_10_io_Cache_in_0_Data; // @[german.scala 337:20]
  wire [1:0] rules_10_io_Cache_in_1_State; // @[german.scala 337:20]
  wire  rules_10_io_Cache_in_1_Data; // @[german.scala 337:20]
  wire [1:0] rules_10_io_Cache_out_0_State; // @[german.scala 337:20]
  wire  rules_10_io_Cache_out_0_Data; // @[german.scala 337:20]
  wire [1:0] rules_10_io_Cache_out_1_State; // @[german.scala 337:20]
  wire  rules_10_io_Cache_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan1_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan1_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan1_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan1_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan1_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan1_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan1_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan1_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan2_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan2_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan2_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan2_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan2_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan2_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan2_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan2_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan3_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan3_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan3_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan3_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan3_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan3_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_10_io_Chan3_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_10_io_Chan3_out_1_Data; // @[german.scala 337:20]
  wire  rules_10_io_InvSet_in_0; // @[german.scala 337:20]
  wire  rules_10_io_InvSet_in_1; // @[german.scala 337:20]
  wire  rules_10_io_InvSet_out_0; // @[german.scala 337:20]
  wire  rules_10_io_InvSet_out_1; // @[german.scala 337:20]
  wire  rules_10_io_ShrSet_in_0; // @[german.scala 337:20]
  wire  rules_10_io_ShrSet_in_1; // @[german.scala 337:20]
  wire  rules_10_io_ShrSet_out_0; // @[german.scala 337:20]
  wire  rules_10_io_ShrSet_out_1; // @[german.scala 337:20]
  wire  rules_10_io_ExGntd_in; // @[german.scala 337:20]
  wire  rules_10_io_ExGntd_out; // @[german.scala 337:20]
  wire [2:0] rules_10_io_CurCmd_in; // @[german.scala 337:20]
  wire [2:0] rules_10_io_CurCmd_out; // @[german.scala 337:20]
  wire  rules_10_io_CurPtr_in; // @[german.scala 337:20]
  wire  rules_10_io_CurPtr_out; // @[german.scala 337:20]
  wire  rules_10_io_MemData_in; // @[german.scala 337:20]
  wire  rules_10_io_MemData_out; // @[german.scala 337:20]
  wire  rules_10_io_AuxData_in; // @[german.scala 337:20]
  wire  rules_10_io_AuxData_out; // @[german.scala 337:20]
  wire  rules_11_io_en_r; // @[german.scala 337:20]
  wire [1:0] rules_11_io_Cache_in_0_State; // @[german.scala 337:20]
  wire  rules_11_io_Cache_in_0_Data; // @[german.scala 337:20]
  wire [1:0] rules_11_io_Cache_in_1_State; // @[german.scala 337:20]
  wire  rules_11_io_Cache_in_1_Data; // @[german.scala 337:20]
  wire [1:0] rules_11_io_Cache_out_0_State; // @[german.scala 337:20]
  wire  rules_11_io_Cache_out_0_Data; // @[german.scala 337:20]
  wire [1:0] rules_11_io_Cache_out_1_State; // @[german.scala 337:20]
  wire  rules_11_io_Cache_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan1_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan1_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan1_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan1_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan1_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan1_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan1_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan1_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan2_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan2_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan2_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan2_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan2_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan2_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan2_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan2_out_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan3_in_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan3_in_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan3_in_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan3_in_1_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan3_out_0_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan3_out_0_Data; // @[german.scala 337:20]
  wire [2:0] rules_11_io_Chan3_out_1_Cmd; // @[german.scala 337:20]
  wire  rules_11_io_Chan3_out_1_Data; // @[german.scala 337:20]
  wire  rules_11_io_InvSet_in_0; // @[german.scala 337:20]
  wire  rules_11_io_InvSet_in_1; // @[german.scala 337:20]
  wire  rules_11_io_InvSet_out_0; // @[german.scala 337:20]
  wire  rules_11_io_InvSet_out_1; // @[german.scala 337:20]
  wire  rules_11_io_ShrSet_in_0; // @[german.scala 337:20]
  wire  rules_11_io_ShrSet_in_1; // @[german.scala 337:20]
  wire  rules_11_io_ShrSet_out_0; // @[german.scala 337:20]
  wire  rules_11_io_ShrSet_out_1; // @[german.scala 337:20]
  wire  rules_11_io_ExGntd_in; // @[german.scala 337:20]
  wire  rules_11_io_ExGntd_out; // @[german.scala 337:20]
  wire [2:0] rules_11_io_CurCmd_in; // @[german.scala 337:20]
  wire [2:0] rules_11_io_CurCmd_out; // @[german.scala 337:20]
  wire  rules_11_io_CurPtr_in; // @[german.scala 337:20]
  wire  rules_11_io_CurPtr_out; // @[german.scala 337:20]
  wire  rules_11_io_MemData_in; // @[german.scala 337:20]
  wire  rules_11_io_MemData_out; // @[german.scala 337:20]
  wire  rules_11_io_AuxData_in; // @[german.scala 337:20]
  wire  rules_11_io_AuxData_out; // @[german.scala 337:20]
  wire  rules_12_io_en_r; // @[german.scala 341:20]
  wire [1:0] rules_12_io_Cache_in_0_State; // @[german.scala 341:20]
  wire  rules_12_io_Cache_in_0_Data; // @[german.scala 341:20]
  wire [1:0] rules_12_io_Cache_in_1_State; // @[german.scala 341:20]
  wire  rules_12_io_Cache_in_1_Data; // @[german.scala 341:20]
  wire [1:0] rules_12_io_Cache_out_0_State; // @[german.scala 341:20]
  wire  rules_12_io_Cache_out_0_Data; // @[german.scala 341:20]
  wire [1:0] rules_12_io_Cache_out_1_State; // @[german.scala 341:20]
  wire  rules_12_io_Cache_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan1_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan1_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan1_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan1_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan1_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan1_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan1_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan1_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan2_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan2_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan2_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan2_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan2_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan2_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan2_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan2_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan3_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan3_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan3_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan3_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan3_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan3_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_12_io_Chan3_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_12_io_Chan3_out_1_Data; // @[german.scala 341:20]
  wire  rules_12_io_InvSet_in_0; // @[german.scala 341:20]
  wire  rules_12_io_InvSet_in_1; // @[german.scala 341:20]
  wire  rules_12_io_InvSet_out_0; // @[german.scala 341:20]
  wire  rules_12_io_InvSet_out_1; // @[german.scala 341:20]
  wire  rules_12_io_ShrSet_in_0; // @[german.scala 341:20]
  wire  rules_12_io_ShrSet_in_1; // @[german.scala 341:20]
  wire  rules_12_io_ShrSet_out_0; // @[german.scala 341:20]
  wire  rules_12_io_ShrSet_out_1; // @[german.scala 341:20]
  wire  rules_12_io_ExGntd_in; // @[german.scala 341:20]
  wire  rules_12_io_ExGntd_out; // @[german.scala 341:20]
  wire [2:0] rules_12_io_CurCmd_in; // @[german.scala 341:20]
  wire [2:0] rules_12_io_CurCmd_out; // @[german.scala 341:20]
  wire  rules_12_io_CurPtr_in; // @[german.scala 341:20]
  wire  rules_12_io_CurPtr_out; // @[german.scala 341:20]
  wire  rules_12_io_MemData_in; // @[german.scala 341:20]
  wire  rules_12_io_MemData_out; // @[german.scala 341:20]
  wire  rules_12_io_AuxData_in; // @[german.scala 341:20]
  wire  rules_12_io_AuxData_out; // @[german.scala 341:20]
  wire  rules_13_io_en_r; // @[german.scala 341:20]
  wire [1:0] rules_13_io_Cache_in_0_State; // @[german.scala 341:20]
  wire  rules_13_io_Cache_in_0_Data; // @[german.scala 341:20]
  wire [1:0] rules_13_io_Cache_in_1_State; // @[german.scala 341:20]
  wire  rules_13_io_Cache_in_1_Data; // @[german.scala 341:20]
  wire [1:0] rules_13_io_Cache_out_0_State; // @[german.scala 341:20]
  wire  rules_13_io_Cache_out_0_Data; // @[german.scala 341:20]
  wire [1:0] rules_13_io_Cache_out_1_State; // @[german.scala 341:20]
  wire  rules_13_io_Cache_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan1_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan1_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan1_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan1_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan1_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan1_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan1_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan1_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan2_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan2_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan2_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan2_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan2_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan2_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan2_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan2_out_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan3_in_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan3_in_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan3_in_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan3_in_1_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan3_out_0_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan3_out_0_Data; // @[german.scala 341:20]
  wire [2:0] rules_13_io_Chan3_out_1_Cmd; // @[german.scala 341:20]
  wire  rules_13_io_Chan3_out_1_Data; // @[german.scala 341:20]
  wire  rules_13_io_InvSet_in_0; // @[german.scala 341:20]
  wire  rules_13_io_InvSet_in_1; // @[german.scala 341:20]
  wire  rules_13_io_InvSet_out_0; // @[german.scala 341:20]
  wire  rules_13_io_InvSet_out_1; // @[german.scala 341:20]
  wire  rules_13_io_ShrSet_in_0; // @[german.scala 341:20]
  wire  rules_13_io_ShrSet_in_1; // @[german.scala 341:20]
  wire  rules_13_io_ShrSet_out_0; // @[german.scala 341:20]
  wire  rules_13_io_ShrSet_out_1; // @[german.scala 341:20]
  wire  rules_13_io_ExGntd_in; // @[german.scala 341:20]
  wire  rules_13_io_ExGntd_out; // @[german.scala 341:20]
  wire [2:0] rules_13_io_CurCmd_in; // @[german.scala 341:20]
  wire [2:0] rules_13_io_CurCmd_out; // @[german.scala 341:20]
  wire  rules_13_io_CurPtr_in; // @[german.scala 341:20]
  wire  rules_13_io_CurPtr_out; // @[german.scala 341:20]
  wire  rules_13_io_MemData_in; // @[german.scala 341:20]
  wire  rules_13_io_MemData_out; // @[german.scala 341:20]
  wire  rules_13_io_AuxData_in; // @[german.scala 341:20]
  wire  rules_13_io_AuxData_out; // @[german.scala 341:20]
  wire  rules_14_io_en_r; // @[german.scala 345:20]
  wire [1:0] rules_14_io_Cache_in_0_State; // @[german.scala 345:20]
  wire  rules_14_io_Cache_in_0_Data; // @[german.scala 345:20]
  wire [1:0] rules_14_io_Cache_in_1_State; // @[german.scala 345:20]
  wire  rules_14_io_Cache_in_1_Data; // @[german.scala 345:20]
  wire [1:0] rules_14_io_Cache_out_0_State; // @[german.scala 345:20]
  wire  rules_14_io_Cache_out_0_Data; // @[german.scala 345:20]
  wire [1:0] rules_14_io_Cache_out_1_State; // @[german.scala 345:20]
  wire  rules_14_io_Cache_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan1_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan1_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan1_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan1_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan1_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan1_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan1_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan1_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan2_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan2_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan2_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan2_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan2_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan2_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan2_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan2_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan3_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan3_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan3_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan3_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan3_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan3_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_14_io_Chan3_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_14_io_Chan3_out_1_Data; // @[german.scala 345:20]
  wire  rules_14_io_InvSet_in_0; // @[german.scala 345:20]
  wire  rules_14_io_InvSet_in_1; // @[german.scala 345:20]
  wire  rules_14_io_InvSet_out_0; // @[german.scala 345:20]
  wire  rules_14_io_InvSet_out_1; // @[german.scala 345:20]
  wire  rules_14_io_ShrSet_in_0; // @[german.scala 345:20]
  wire  rules_14_io_ShrSet_in_1; // @[german.scala 345:20]
  wire  rules_14_io_ShrSet_out_0; // @[german.scala 345:20]
  wire  rules_14_io_ShrSet_out_1; // @[german.scala 345:20]
  wire  rules_14_io_ExGntd_in; // @[german.scala 345:20]
  wire  rules_14_io_ExGntd_out; // @[german.scala 345:20]
  wire [2:0] rules_14_io_CurCmd_in; // @[german.scala 345:20]
  wire [2:0] rules_14_io_CurCmd_out; // @[german.scala 345:20]
  wire  rules_14_io_CurPtr_in; // @[german.scala 345:20]
  wire  rules_14_io_CurPtr_out; // @[german.scala 345:20]
  wire  rules_14_io_MemData_in; // @[german.scala 345:20]
  wire  rules_14_io_MemData_out; // @[german.scala 345:20]
  wire  rules_14_io_AuxData_in; // @[german.scala 345:20]
  wire  rules_14_io_AuxData_out; // @[german.scala 345:20]
  wire  rules_15_io_en_r; // @[german.scala 345:20]
  wire [1:0] rules_15_io_Cache_in_0_State; // @[german.scala 345:20]
  wire  rules_15_io_Cache_in_0_Data; // @[german.scala 345:20]
  wire [1:0] rules_15_io_Cache_in_1_State; // @[german.scala 345:20]
  wire  rules_15_io_Cache_in_1_Data; // @[german.scala 345:20]
  wire [1:0] rules_15_io_Cache_out_0_State; // @[german.scala 345:20]
  wire  rules_15_io_Cache_out_0_Data; // @[german.scala 345:20]
  wire [1:0] rules_15_io_Cache_out_1_State; // @[german.scala 345:20]
  wire  rules_15_io_Cache_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan1_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan1_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan1_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan1_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan1_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan1_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan1_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan1_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan2_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan2_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan2_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan2_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan2_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan2_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan2_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan2_out_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan3_in_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan3_in_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan3_in_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan3_in_1_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan3_out_0_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan3_out_0_Data; // @[german.scala 345:20]
  wire [2:0] rules_15_io_Chan3_out_1_Cmd; // @[german.scala 345:20]
  wire  rules_15_io_Chan3_out_1_Data; // @[german.scala 345:20]
  wire  rules_15_io_InvSet_in_0; // @[german.scala 345:20]
  wire  rules_15_io_InvSet_in_1; // @[german.scala 345:20]
  wire  rules_15_io_InvSet_out_0; // @[german.scala 345:20]
  wire  rules_15_io_InvSet_out_1; // @[german.scala 345:20]
  wire  rules_15_io_ShrSet_in_0; // @[german.scala 345:20]
  wire  rules_15_io_ShrSet_in_1; // @[german.scala 345:20]
  wire  rules_15_io_ShrSet_out_0; // @[german.scala 345:20]
  wire  rules_15_io_ShrSet_out_1; // @[german.scala 345:20]
  wire  rules_15_io_ExGntd_in; // @[german.scala 345:20]
  wire  rules_15_io_ExGntd_out; // @[german.scala 345:20]
  wire [2:0] rules_15_io_CurCmd_in; // @[german.scala 345:20]
  wire [2:0] rules_15_io_CurCmd_out; // @[german.scala 345:20]
  wire  rules_15_io_CurPtr_in; // @[german.scala 345:20]
  wire  rules_15_io_CurPtr_out; // @[german.scala 345:20]
  wire  rules_15_io_MemData_in; // @[german.scala 345:20]
  wire  rules_15_io_MemData_out; // @[german.scala 345:20]
  wire  rules_15_io_AuxData_in; // @[german.scala 345:20]
  wire  rules_15_io_AuxData_out; // @[german.scala 345:20]
  wire [1:0] rules_16_io_Cache_in_0_State; // @[german.scala 349:20]
  wire  rules_16_io_Cache_in_0_Data; // @[german.scala 349:20]
  wire [1:0] rules_16_io_Cache_in_1_State; // @[german.scala 349:20]
  wire  rules_16_io_Cache_in_1_Data; // @[german.scala 349:20]
  wire [1:0] rules_16_io_Cache_out_0_State; // @[german.scala 349:20]
  wire  rules_16_io_Cache_out_0_Data; // @[german.scala 349:20]
  wire [1:0] rules_16_io_Cache_out_1_State; // @[german.scala 349:20]
  wire  rules_16_io_Cache_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan1_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan1_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan1_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan1_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan1_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan1_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan1_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan1_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan2_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan2_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan2_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan2_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan2_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan2_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan2_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan2_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan3_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan3_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan3_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan3_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan3_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan3_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_16_io_Chan3_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_16_io_Chan3_out_1_Data; // @[german.scala 349:20]
  wire  rules_16_io_InvSet_in_0; // @[german.scala 349:20]
  wire  rules_16_io_InvSet_in_1; // @[german.scala 349:20]
  wire  rules_16_io_InvSet_out_0; // @[german.scala 349:20]
  wire  rules_16_io_InvSet_out_1; // @[german.scala 349:20]
  wire  rules_16_io_ShrSet_in_0; // @[german.scala 349:20]
  wire  rules_16_io_ShrSet_in_1; // @[german.scala 349:20]
  wire  rules_16_io_ShrSet_out_0; // @[german.scala 349:20]
  wire  rules_16_io_ShrSet_out_1; // @[german.scala 349:20]
  wire  rules_16_io_ExGntd_in; // @[german.scala 349:20]
  wire  rules_16_io_ExGntd_out; // @[german.scala 349:20]
  wire [2:0] rules_16_io_CurCmd_in; // @[german.scala 349:20]
  wire [2:0] rules_16_io_CurCmd_out; // @[german.scala 349:20]
  wire  rules_16_io_CurPtr_in; // @[german.scala 349:20]
  wire  rules_16_io_CurPtr_out; // @[german.scala 349:20]
  wire  rules_16_io_MemData_in; // @[german.scala 349:20]
  wire  rules_16_io_MemData_out; // @[german.scala 349:20]
  wire  rules_16_io_AuxData_in; // @[german.scala 349:20]
  wire  rules_16_io_AuxData_out; // @[german.scala 349:20]
  wire [1:0] rules_17_io_Cache_in_0_State; // @[german.scala 349:20]
  wire  rules_17_io_Cache_in_0_Data; // @[german.scala 349:20]
  wire [1:0] rules_17_io_Cache_in_1_State; // @[german.scala 349:20]
  wire  rules_17_io_Cache_in_1_Data; // @[german.scala 349:20]
  wire [1:0] rules_17_io_Cache_out_0_State; // @[german.scala 349:20]
  wire  rules_17_io_Cache_out_0_Data; // @[german.scala 349:20]
  wire [1:0] rules_17_io_Cache_out_1_State; // @[german.scala 349:20]
  wire  rules_17_io_Cache_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan1_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan1_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan1_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan1_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan1_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan1_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan1_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan1_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan2_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan2_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan2_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan2_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan2_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan2_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan2_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan2_out_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan3_in_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan3_in_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan3_in_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan3_in_1_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan3_out_0_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan3_out_0_Data; // @[german.scala 349:20]
  wire [2:0] rules_17_io_Chan3_out_1_Cmd; // @[german.scala 349:20]
  wire  rules_17_io_Chan3_out_1_Data; // @[german.scala 349:20]
  wire  rules_17_io_InvSet_in_0; // @[german.scala 349:20]
  wire  rules_17_io_InvSet_in_1; // @[german.scala 349:20]
  wire  rules_17_io_InvSet_out_0; // @[german.scala 349:20]
  wire  rules_17_io_InvSet_out_1; // @[german.scala 349:20]
  wire  rules_17_io_ShrSet_in_0; // @[german.scala 349:20]
  wire  rules_17_io_ShrSet_in_1; // @[german.scala 349:20]
  wire  rules_17_io_ShrSet_out_0; // @[german.scala 349:20]
  wire  rules_17_io_ShrSet_out_1; // @[german.scala 349:20]
  wire  rules_17_io_ExGntd_in; // @[german.scala 349:20]
  wire  rules_17_io_ExGntd_out; // @[german.scala 349:20]
  wire [2:0] rules_17_io_CurCmd_in; // @[german.scala 349:20]
  wire [2:0] rules_17_io_CurCmd_out; // @[german.scala 349:20]
  wire  rules_17_io_CurPtr_in; // @[german.scala 349:20]
  wire  rules_17_io_CurPtr_out; // @[german.scala 349:20]
  wire  rules_17_io_MemData_in; // @[german.scala 349:20]
  wire  rules_17_io_MemData_out; // @[german.scala 349:20]
  wire  rules_17_io_AuxData_in; // @[german.scala 349:20]
  wire  rules_17_io_AuxData_out; // @[german.scala 349:20]
  wire  rules_18_io_en_r; // @[german.scala 353:20]
  wire [1:0] rules_18_io_Cache_in_0_State; // @[german.scala 353:20]
  wire  rules_18_io_Cache_in_0_Data; // @[german.scala 353:20]
  wire [1:0] rules_18_io_Cache_in_1_State; // @[german.scala 353:20]
  wire  rules_18_io_Cache_in_1_Data; // @[german.scala 353:20]
  wire [1:0] rules_18_io_Cache_out_0_State; // @[german.scala 353:20]
  wire  rules_18_io_Cache_out_0_Data; // @[german.scala 353:20]
  wire [1:0] rules_18_io_Cache_out_1_State; // @[german.scala 353:20]
  wire  rules_18_io_Cache_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan1_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan1_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan1_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan1_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan1_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan1_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan1_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan1_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan2_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan2_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan2_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan2_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan2_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan2_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan2_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan2_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan3_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan3_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan3_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan3_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan3_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan3_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_18_io_Chan3_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_18_io_Chan3_out_1_Data; // @[german.scala 353:20]
  wire  rules_18_io_InvSet_in_0; // @[german.scala 353:20]
  wire  rules_18_io_InvSet_in_1; // @[german.scala 353:20]
  wire  rules_18_io_InvSet_out_0; // @[german.scala 353:20]
  wire  rules_18_io_InvSet_out_1; // @[german.scala 353:20]
  wire  rules_18_io_ShrSet_in_0; // @[german.scala 353:20]
  wire  rules_18_io_ShrSet_in_1; // @[german.scala 353:20]
  wire  rules_18_io_ShrSet_out_0; // @[german.scala 353:20]
  wire  rules_18_io_ShrSet_out_1; // @[german.scala 353:20]
  wire  rules_18_io_ExGntd_in; // @[german.scala 353:20]
  wire  rules_18_io_ExGntd_out; // @[german.scala 353:20]
  wire [2:0] rules_18_io_CurCmd_in; // @[german.scala 353:20]
  wire [2:0] rules_18_io_CurCmd_out; // @[german.scala 353:20]
  wire  rules_18_io_CurPtr_in; // @[german.scala 353:20]
  wire  rules_18_io_CurPtr_out; // @[german.scala 353:20]
  wire  rules_18_io_MemData_in; // @[german.scala 353:20]
  wire  rules_18_io_MemData_out; // @[german.scala 353:20]
  wire  rules_18_io_AuxData_in; // @[german.scala 353:20]
  wire  rules_18_io_AuxData_out; // @[german.scala 353:20]
  wire  rules_19_io_en_r; // @[german.scala 353:20]
  wire [1:0] rules_19_io_Cache_in_0_State; // @[german.scala 353:20]
  wire  rules_19_io_Cache_in_0_Data; // @[german.scala 353:20]
  wire [1:0] rules_19_io_Cache_in_1_State; // @[german.scala 353:20]
  wire  rules_19_io_Cache_in_1_Data; // @[german.scala 353:20]
  wire [1:0] rules_19_io_Cache_out_0_State; // @[german.scala 353:20]
  wire  rules_19_io_Cache_out_0_Data; // @[german.scala 353:20]
  wire [1:0] rules_19_io_Cache_out_1_State; // @[german.scala 353:20]
  wire  rules_19_io_Cache_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan1_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan1_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan1_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan1_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan1_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan1_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan1_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan1_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan2_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan2_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan2_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan2_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan2_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan2_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan2_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan2_out_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan3_in_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan3_in_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan3_in_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan3_in_1_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan3_out_0_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan3_out_0_Data; // @[german.scala 353:20]
  wire [2:0] rules_19_io_Chan3_out_1_Cmd; // @[german.scala 353:20]
  wire  rules_19_io_Chan3_out_1_Data; // @[german.scala 353:20]
  wire  rules_19_io_InvSet_in_0; // @[german.scala 353:20]
  wire  rules_19_io_InvSet_in_1; // @[german.scala 353:20]
  wire  rules_19_io_InvSet_out_0; // @[german.scala 353:20]
  wire  rules_19_io_InvSet_out_1; // @[german.scala 353:20]
  wire  rules_19_io_ShrSet_in_0; // @[german.scala 353:20]
  wire  rules_19_io_ShrSet_in_1; // @[german.scala 353:20]
  wire  rules_19_io_ShrSet_out_0; // @[german.scala 353:20]
  wire  rules_19_io_ShrSet_out_1; // @[german.scala 353:20]
  wire  rules_19_io_ExGntd_in; // @[german.scala 353:20]
  wire  rules_19_io_ExGntd_out; // @[german.scala 353:20]
  wire [2:0] rules_19_io_CurCmd_in; // @[german.scala 353:20]
  wire [2:0] rules_19_io_CurCmd_out; // @[german.scala 353:20]
  wire  rules_19_io_CurPtr_in; // @[german.scala 353:20]
  wire  rules_19_io_CurPtr_out; // @[german.scala 353:20]
  wire  rules_19_io_MemData_in; // @[german.scala 353:20]
  wire  rules_19_io_MemData_out; // @[german.scala 353:20]
  wire  rules_19_io_AuxData_in; // @[german.scala 353:20]
  wire  rules_19_io_AuxData_out; // @[german.scala 353:20]
  wire  rules_20_io_en_r; // @[german.scala 357:20]
  wire [1:0] rules_20_io_Cache_in_0_State; // @[german.scala 357:20]
  wire  rules_20_io_Cache_in_0_Data; // @[german.scala 357:20]
  wire [1:0] rules_20_io_Cache_in_1_State; // @[german.scala 357:20]
  wire  rules_20_io_Cache_in_1_Data; // @[german.scala 357:20]
  wire [1:0] rules_20_io_Cache_out_0_State; // @[german.scala 357:20]
  wire  rules_20_io_Cache_out_0_Data; // @[german.scala 357:20]
  wire [1:0] rules_20_io_Cache_out_1_State; // @[german.scala 357:20]
  wire  rules_20_io_Cache_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan1_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan1_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan1_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan1_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan1_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan1_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan1_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan1_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan2_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan2_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan2_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan2_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan2_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan2_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan2_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan2_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan3_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan3_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan3_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan3_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan3_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan3_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_20_io_Chan3_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_20_io_Chan3_out_1_Data; // @[german.scala 357:20]
  wire  rules_20_io_InvSet_in_0; // @[german.scala 357:20]
  wire  rules_20_io_InvSet_in_1; // @[german.scala 357:20]
  wire  rules_20_io_InvSet_out_0; // @[german.scala 357:20]
  wire  rules_20_io_InvSet_out_1; // @[german.scala 357:20]
  wire  rules_20_io_ShrSet_in_0; // @[german.scala 357:20]
  wire  rules_20_io_ShrSet_in_1; // @[german.scala 357:20]
  wire  rules_20_io_ShrSet_out_0; // @[german.scala 357:20]
  wire  rules_20_io_ShrSet_out_1; // @[german.scala 357:20]
  wire  rules_20_io_ExGntd_in; // @[german.scala 357:20]
  wire  rules_20_io_ExGntd_out; // @[german.scala 357:20]
  wire [2:0] rules_20_io_CurCmd_in; // @[german.scala 357:20]
  wire [2:0] rules_20_io_CurCmd_out; // @[german.scala 357:20]
  wire  rules_20_io_CurPtr_in; // @[german.scala 357:20]
  wire  rules_20_io_CurPtr_out; // @[german.scala 357:20]
  wire  rules_20_io_MemData_in; // @[german.scala 357:20]
  wire  rules_20_io_MemData_out; // @[german.scala 357:20]
  wire  rules_20_io_AuxData_in; // @[german.scala 357:20]
  wire  rules_20_io_AuxData_out; // @[german.scala 357:20]
  wire  rules_21_io_en_r; // @[german.scala 357:20]
  wire [1:0] rules_21_io_Cache_in_0_State; // @[german.scala 357:20]
  wire  rules_21_io_Cache_in_0_Data; // @[german.scala 357:20]
  wire [1:0] rules_21_io_Cache_in_1_State; // @[german.scala 357:20]
  wire  rules_21_io_Cache_in_1_Data; // @[german.scala 357:20]
  wire [1:0] rules_21_io_Cache_out_0_State; // @[german.scala 357:20]
  wire  rules_21_io_Cache_out_0_Data; // @[german.scala 357:20]
  wire [1:0] rules_21_io_Cache_out_1_State; // @[german.scala 357:20]
  wire  rules_21_io_Cache_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan1_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan1_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan1_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan1_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan1_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan1_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan1_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan1_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan2_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan2_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan2_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan2_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan2_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan2_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan2_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan2_out_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan3_in_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan3_in_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan3_in_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan3_in_1_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan3_out_0_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan3_out_0_Data; // @[german.scala 357:20]
  wire [2:0] rules_21_io_Chan3_out_1_Cmd; // @[german.scala 357:20]
  wire  rules_21_io_Chan3_out_1_Data; // @[german.scala 357:20]
  wire  rules_21_io_InvSet_in_0; // @[german.scala 357:20]
  wire  rules_21_io_InvSet_in_1; // @[german.scala 357:20]
  wire  rules_21_io_InvSet_out_0; // @[german.scala 357:20]
  wire  rules_21_io_InvSet_out_1; // @[german.scala 357:20]
  wire  rules_21_io_ShrSet_in_0; // @[german.scala 357:20]
  wire  rules_21_io_ShrSet_in_1; // @[german.scala 357:20]
  wire  rules_21_io_ShrSet_out_0; // @[german.scala 357:20]
  wire  rules_21_io_ShrSet_out_1; // @[german.scala 357:20]
  wire  rules_21_io_ExGntd_in; // @[german.scala 357:20]
  wire  rules_21_io_ExGntd_out; // @[german.scala 357:20]
  wire [2:0] rules_21_io_CurCmd_in; // @[german.scala 357:20]
  wire [2:0] rules_21_io_CurCmd_out; // @[german.scala 357:20]
  wire  rules_21_io_CurPtr_in; // @[german.scala 357:20]
  wire  rules_21_io_CurPtr_out; // @[german.scala 357:20]
  wire  rules_21_io_MemData_in; // @[german.scala 357:20]
  wire  rules_21_io_MemData_out; // @[german.scala 357:20]
  wire  rules_21_io_AuxData_in; // @[german.scala 357:20]
  wire  rules_21_io_AuxData_out; // @[german.scala 357:20]
  wire  rules_22_io_en_r; // @[german.scala 361:20]
  wire [1:0] rules_22_io_Cache_in_0_State; // @[german.scala 361:20]
  wire  rules_22_io_Cache_in_0_Data; // @[german.scala 361:20]
  wire [1:0] rules_22_io_Cache_in_1_State; // @[german.scala 361:20]
  wire  rules_22_io_Cache_in_1_Data; // @[german.scala 361:20]
  wire [1:0] rules_22_io_Cache_out_0_State; // @[german.scala 361:20]
  wire  rules_22_io_Cache_out_0_Data; // @[german.scala 361:20]
  wire [1:0] rules_22_io_Cache_out_1_State; // @[german.scala 361:20]
  wire  rules_22_io_Cache_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan1_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan1_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan1_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan1_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan1_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan1_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan1_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan1_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan2_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan2_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan2_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan2_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan2_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan2_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan2_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan2_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan3_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan3_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan3_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan3_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan3_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan3_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_22_io_Chan3_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_22_io_Chan3_out_1_Data; // @[german.scala 361:20]
  wire  rules_22_io_InvSet_in_0; // @[german.scala 361:20]
  wire  rules_22_io_InvSet_in_1; // @[german.scala 361:20]
  wire  rules_22_io_InvSet_out_0; // @[german.scala 361:20]
  wire  rules_22_io_InvSet_out_1; // @[german.scala 361:20]
  wire  rules_22_io_ShrSet_in_0; // @[german.scala 361:20]
  wire  rules_22_io_ShrSet_in_1; // @[german.scala 361:20]
  wire  rules_22_io_ShrSet_out_0; // @[german.scala 361:20]
  wire  rules_22_io_ShrSet_out_1; // @[german.scala 361:20]
  wire  rules_22_io_ExGntd_in; // @[german.scala 361:20]
  wire  rules_22_io_ExGntd_out; // @[german.scala 361:20]
  wire [2:0] rules_22_io_CurCmd_in; // @[german.scala 361:20]
  wire [2:0] rules_22_io_CurCmd_out; // @[german.scala 361:20]
  wire  rules_22_io_CurPtr_in; // @[german.scala 361:20]
  wire  rules_22_io_CurPtr_out; // @[german.scala 361:20]
  wire  rules_22_io_MemData_in; // @[german.scala 361:20]
  wire  rules_22_io_MemData_out; // @[german.scala 361:20]
  wire  rules_22_io_AuxData_in; // @[german.scala 361:20]
  wire  rules_22_io_AuxData_out; // @[german.scala 361:20]
  wire  rules_23_io_en_r; // @[german.scala 361:20]
  wire [1:0] rules_23_io_Cache_in_0_State; // @[german.scala 361:20]
  wire  rules_23_io_Cache_in_0_Data; // @[german.scala 361:20]
  wire [1:0] rules_23_io_Cache_in_1_State; // @[german.scala 361:20]
  wire  rules_23_io_Cache_in_1_Data; // @[german.scala 361:20]
  wire [1:0] rules_23_io_Cache_out_0_State; // @[german.scala 361:20]
  wire  rules_23_io_Cache_out_0_Data; // @[german.scala 361:20]
  wire [1:0] rules_23_io_Cache_out_1_State; // @[german.scala 361:20]
  wire  rules_23_io_Cache_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan1_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan1_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan1_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan1_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan1_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan1_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan1_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan1_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan2_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan2_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan2_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan2_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan2_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan2_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan2_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan2_out_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan3_in_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan3_in_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan3_in_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan3_in_1_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan3_out_0_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan3_out_0_Data; // @[german.scala 361:20]
  wire [2:0] rules_23_io_Chan3_out_1_Cmd; // @[german.scala 361:20]
  wire  rules_23_io_Chan3_out_1_Data; // @[german.scala 361:20]
  wire  rules_23_io_InvSet_in_0; // @[german.scala 361:20]
  wire  rules_23_io_InvSet_in_1; // @[german.scala 361:20]
  wire  rules_23_io_InvSet_out_0; // @[german.scala 361:20]
  wire  rules_23_io_InvSet_out_1; // @[german.scala 361:20]
  wire  rules_23_io_ShrSet_in_0; // @[german.scala 361:20]
  wire  rules_23_io_ShrSet_in_1; // @[german.scala 361:20]
  wire  rules_23_io_ShrSet_out_0; // @[german.scala 361:20]
  wire  rules_23_io_ShrSet_out_1; // @[german.scala 361:20]
  wire  rules_23_io_ExGntd_in; // @[german.scala 361:20]
  wire  rules_23_io_ExGntd_out; // @[german.scala 361:20]
  wire [2:0] rules_23_io_CurCmd_in; // @[german.scala 361:20]
  wire [2:0] rules_23_io_CurCmd_out; // @[german.scala 361:20]
  wire  rules_23_io_CurPtr_in; // @[german.scala 361:20]
  wire  rules_23_io_CurPtr_out; // @[german.scala 361:20]
  wire  rules_23_io_MemData_in; // @[german.scala 361:20]
  wire  rules_23_io_MemData_out; // @[german.scala 361:20]
  wire  rules_23_io_AuxData_in; // @[german.scala 361:20]
  wire  rules_23_io_AuxData_out; // @[german.scala 361:20]
  wire  rules_24_io_en_r; // @[german.scala 365:20]
  wire [1:0] rules_24_io_Cache_in_0_State; // @[german.scala 365:20]
  wire  rules_24_io_Cache_in_0_Data; // @[german.scala 365:20]
  wire [1:0] rules_24_io_Cache_in_1_State; // @[german.scala 365:20]
  wire  rules_24_io_Cache_in_1_Data; // @[german.scala 365:20]
  wire [1:0] rules_24_io_Cache_out_0_State; // @[german.scala 365:20]
  wire  rules_24_io_Cache_out_0_Data; // @[german.scala 365:20]
  wire [1:0] rules_24_io_Cache_out_1_State; // @[german.scala 365:20]
  wire  rules_24_io_Cache_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan1_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan1_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan1_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan1_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan1_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan1_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan1_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan1_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan2_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan2_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan2_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan2_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan2_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan2_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan2_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan2_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan3_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan3_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan3_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan3_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan3_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan3_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_24_io_Chan3_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_24_io_Chan3_out_1_Data; // @[german.scala 365:20]
  wire  rules_24_io_InvSet_in_0; // @[german.scala 365:20]
  wire  rules_24_io_InvSet_in_1; // @[german.scala 365:20]
  wire  rules_24_io_InvSet_out_0; // @[german.scala 365:20]
  wire  rules_24_io_InvSet_out_1; // @[german.scala 365:20]
  wire  rules_24_io_ShrSet_in_0; // @[german.scala 365:20]
  wire  rules_24_io_ShrSet_in_1; // @[german.scala 365:20]
  wire  rules_24_io_ShrSet_out_0; // @[german.scala 365:20]
  wire  rules_24_io_ShrSet_out_1; // @[german.scala 365:20]
  wire  rules_24_io_ExGntd_in; // @[german.scala 365:20]
  wire  rules_24_io_ExGntd_out; // @[german.scala 365:20]
  wire [2:0] rules_24_io_CurCmd_in; // @[german.scala 365:20]
  wire [2:0] rules_24_io_CurCmd_out; // @[german.scala 365:20]
  wire  rules_24_io_CurPtr_in; // @[german.scala 365:20]
  wire  rules_24_io_CurPtr_out; // @[german.scala 365:20]
  wire  rules_24_io_MemData_in; // @[german.scala 365:20]
  wire  rules_24_io_MemData_out; // @[german.scala 365:20]
  wire  rules_24_io_AuxData_in; // @[german.scala 365:20]
  wire  rules_24_io_AuxData_out; // @[german.scala 365:20]
  wire  rules_25_io_en_r; // @[german.scala 365:20]
  wire [1:0] rules_25_io_Cache_in_0_State; // @[german.scala 365:20]
  wire  rules_25_io_Cache_in_0_Data; // @[german.scala 365:20]
  wire [1:0] rules_25_io_Cache_in_1_State; // @[german.scala 365:20]
  wire  rules_25_io_Cache_in_1_Data; // @[german.scala 365:20]
  wire [1:0] rules_25_io_Cache_out_0_State; // @[german.scala 365:20]
  wire  rules_25_io_Cache_out_0_Data; // @[german.scala 365:20]
  wire [1:0] rules_25_io_Cache_out_1_State; // @[german.scala 365:20]
  wire  rules_25_io_Cache_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan1_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan1_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan1_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan1_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan1_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan1_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan1_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan1_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan2_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan2_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan2_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan2_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan2_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan2_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan2_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan2_out_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan3_in_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan3_in_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan3_in_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan3_in_1_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan3_out_0_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan3_out_0_Data; // @[german.scala 365:20]
  wire [2:0] rules_25_io_Chan3_out_1_Cmd; // @[german.scala 365:20]
  wire  rules_25_io_Chan3_out_1_Data; // @[german.scala 365:20]
  wire  rules_25_io_InvSet_in_0; // @[german.scala 365:20]
  wire  rules_25_io_InvSet_in_1; // @[german.scala 365:20]
  wire  rules_25_io_InvSet_out_0; // @[german.scala 365:20]
  wire  rules_25_io_InvSet_out_1; // @[german.scala 365:20]
  wire  rules_25_io_ShrSet_in_0; // @[german.scala 365:20]
  wire  rules_25_io_ShrSet_in_1; // @[german.scala 365:20]
  wire  rules_25_io_ShrSet_out_0; // @[german.scala 365:20]
  wire  rules_25_io_ShrSet_out_1; // @[german.scala 365:20]
  wire  rules_25_io_ExGntd_in; // @[german.scala 365:20]
  wire  rules_25_io_ExGntd_out; // @[german.scala 365:20]
  wire [2:0] rules_25_io_CurCmd_in; // @[german.scala 365:20]
  wire [2:0] rules_25_io_CurCmd_out; // @[german.scala 365:20]
  wire  rules_25_io_CurPtr_in; // @[german.scala 365:20]
  wire  rules_25_io_CurPtr_out; // @[german.scala 365:20]
  wire  rules_25_io_MemData_in; // @[german.scala 365:20]
  wire  rules_25_io_MemData_out; // @[german.scala 365:20]
  wire  rules_25_io_AuxData_in; // @[german.scala 365:20]
  wire  rules_25_io_AuxData_out; // @[german.scala 365:20]
  reg [1:0] Cache_reg_0_State; // @[german.scala 263:26]
  reg  Cache_reg_0_Data; // @[german.scala 263:26]
  reg [1:0] Cache_reg_1_State; // @[german.scala 263:26]
  reg  Cache_reg_1_Data; // @[german.scala 263:26]
  reg [2:0] Chan1_reg_0_Cmd; // @[german.scala 266:26]
  reg  Chan1_reg_0_Data; // @[german.scala 266:26]
  reg [2:0] Chan1_reg_1_Cmd; // @[german.scala 266:26]
  reg  Chan1_reg_1_Data; // @[german.scala 266:26]
  reg [2:0] Chan2_reg_0_Cmd; // @[german.scala 269:26]
  reg  Chan2_reg_0_Data; // @[german.scala 269:26]
  reg [2:0] Chan2_reg_1_Cmd; // @[german.scala 269:26]
  reg  Chan2_reg_1_Data; // @[german.scala 269:26]
  reg [2:0] Chan3_reg_0_Cmd; // @[german.scala 272:26]
  reg  Chan3_reg_0_Data; // @[german.scala 272:26]
  reg [2:0] Chan3_reg_1_Cmd; // @[german.scala 272:26]
  reg  Chan3_reg_1_Data; // @[german.scala 272:26]
  reg  InvSet_reg_0; // @[german.scala 275:27]
  reg  InvSet_reg_1; // @[german.scala 275:27]
  reg  ShrSet_reg_0; // @[german.scala 278:27]
  reg  ShrSet_reg_1; // @[german.scala 278:27]
  reg  ExGntd_reg; // @[german.scala 281:27]
  reg [2:0] CurCmd_reg; // @[german.scala 284:27]
  reg  CurPtr_reg; // @[german.scala 287:27]
  reg  MemData_reg; // @[german.scala 290:28]
  reg  AuxData_reg; // @[german.scala 293:28]
  wire  _T = io_en_a == 5'h0; // @[german.scala 380:31]
  wire [1:0] _GEN_0 = _T ? rules_0_io_Cache_out_0_State : Cache_reg_0_State; // @[german.scala 381:29 382:17 263:26]
  wire  _GEN_1 = _T ? rules_0_io_Cache_out_0_Data : Cache_reg_0_Data; // @[german.scala 381:29 382:17 263:26]
  wire [1:0] _GEN_2 = _T ? rules_0_io_Cache_out_1_State : Cache_reg_1_State; // @[german.scala 381:29 382:17 263:26]
  wire  _GEN_3 = _T ? rules_0_io_Cache_out_1_Data : Cache_reg_1_Data; // @[german.scala 381:29 382:17 263:26]
  wire [2:0] _GEN_4 = _T ? rules_0_io_Chan1_out_0_Cmd : Chan1_reg_0_Cmd; // @[german.scala 381:29 383:17 266:26]
  wire  _GEN_5 = _T ? rules_0_io_Chan1_out_0_Data : Chan1_reg_0_Data; // @[german.scala 381:29 383:17 266:26]
  wire [2:0] _GEN_6 = _T ? rules_0_io_Chan1_out_1_Cmd : Chan1_reg_1_Cmd; // @[german.scala 381:29 383:17 266:26]
  wire  _GEN_7 = _T ? rules_0_io_Chan1_out_1_Data : Chan1_reg_1_Data; // @[german.scala 381:29 383:17 266:26]
  wire [2:0] _GEN_8 = _T ? rules_0_io_Chan2_out_0_Cmd : Chan2_reg_0_Cmd; // @[german.scala 381:29 384:17 269:26]
  wire  _GEN_9 = _T ? rules_0_io_Chan2_out_0_Data : Chan2_reg_0_Data; // @[german.scala 381:29 384:17 269:26]
  wire [2:0] _GEN_10 = _T ? rules_0_io_Chan2_out_1_Cmd : Chan2_reg_1_Cmd; // @[german.scala 381:29 384:17 269:26]
  wire  _GEN_11 = _T ? rules_0_io_Chan2_out_1_Data : Chan2_reg_1_Data; // @[german.scala 381:29 384:17 269:26]
  wire [2:0] _GEN_12 = _T ? rules_0_io_Chan3_out_0_Cmd : Chan3_reg_0_Cmd; // @[german.scala 381:29 385:17 272:26]
  wire  _GEN_13 = _T ? rules_0_io_Chan3_out_0_Data : Chan3_reg_0_Data; // @[german.scala 381:29 385:17 272:26]
  wire [2:0] _GEN_14 = _T ? rules_0_io_Chan3_out_1_Cmd : Chan3_reg_1_Cmd; // @[german.scala 381:29 385:17 272:26]
  wire  _GEN_15 = _T ? rules_0_io_Chan3_out_1_Data : Chan3_reg_1_Data; // @[german.scala 381:29 385:17 272:26]
  wire  _GEN_16 = _T ? rules_0_io_InvSet_out_0 : InvSet_reg_0; // @[german.scala 381:29 386:18 275:27]
  wire  _GEN_17 = _T ? rules_0_io_InvSet_out_1 : InvSet_reg_1; // @[german.scala 381:29 386:18 275:27]
  wire  _GEN_18 = _T ? rules_0_io_ShrSet_out_0 : ShrSet_reg_0; // @[german.scala 381:29 387:18 278:27]
  wire  _GEN_19 = _T ? rules_0_io_ShrSet_out_1 : ShrSet_reg_1; // @[german.scala 381:29 387:18 278:27]
  wire  _GEN_20 = _T ? rules_0_io_ExGntd_out : ExGntd_reg; // @[german.scala 381:29 388:18 281:27]
  wire [2:0] _GEN_21 = _T ? rules_0_io_CurCmd_out : CurCmd_reg; // @[german.scala 381:29 389:18 284:27]
  wire  _GEN_22 = _T ? rules_0_io_CurPtr_out : CurPtr_reg; // @[german.scala 381:29 390:18 287:27]
  wire  _GEN_23 = _T ? rules_0_io_MemData_out : MemData_reg; // @[german.scala 381:29 391:19 290:28]
  wire  _GEN_24 = _T ? rules_0_io_AuxData_out : AuxData_reg; // @[german.scala 381:29 392:19 293:28]
  wire  _T_2 = io_en_a == 5'h1; // @[german.scala 380:31]
  wire [1:0] _GEN_25 = _T_2 ? rules_1_io_Cache_out_0_State : _GEN_0; // @[german.scala 381:29 382:17]
  wire  _GEN_26 = _T_2 ? rules_1_io_Cache_out_0_Data : _GEN_1; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_27 = _T_2 ? rules_1_io_Cache_out_1_State : _GEN_2; // @[german.scala 381:29 382:17]
  wire  _GEN_28 = _T_2 ? rules_1_io_Cache_out_1_Data : _GEN_3; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_29 = _T_2 ? rules_1_io_Chan1_out_0_Cmd : _GEN_4; // @[german.scala 381:29 383:17]
  wire  _GEN_30 = _T_2 ? rules_1_io_Chan1_out_0_Data : _GEN_5; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_31 = _T_2 ? rules_1_io_Chan1_out_1_Cmd : _GEN_6; // @[german.scala 381:29 383:17]
  wire  _GEN_32 = _T_2 ? rules_1_io_Chan1_out_1_Data : _GEN_7; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_33 = _T_2 ? rules_1_io_Chan2_out_0_Cmd : _GEN_8; // @[german.scala 381:29 384:17]
  wire  _GEN_34 = _T_2 ? rules_1_io_Chan2_out_0_Data : _GEN_9; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_35 = _T_2 ? rules_1_io_Chan2_out_1_Cmd : _GEN_10; // @[german.scala 381:29 384:17]
  wire  _GEN_36 = _T_2 ? rules_1_io_Chan2_out_1_Data : _GEN_11; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_37 = _T_2 ? rules_1_io_Chan3_out_0_Cmd : _GEN_12; // @[german.scala 381:29 385:17]
  wire  _GEN_38 = _T_2 ? rules_1_io_Chan3_out_0_Data : _GEN_13; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_39 = _T_2 ? rules_1_io_Chan3_out_1_Cmd : _GEN_14; // @[german.scala 381:29 385:17]
  wire  _GEN_40 = _T_2 ? rules_1_io_Chan3_out_1_Data : _GEN_15; // @[german.scala 381:29 385:17]
  wire  _GEN_41 = _T_2 ? rules_1_io_InvSet_out_0 : _GEN_16; // @[german.scala 381:29 386:18]
  wire  _GEN_42 = _T_2 ? rules_1_io_InvSet_out_1 : _GEN_17; // @[german.scala 381:29 386:18]
  wire  _GEN_43 = _T_2 ? rules_1_io_ShrSet_out_0 : _GEN_18; // @[german.scala 381:29 387:18]
  wire  _GEN_44 = _T_2 ? rules_1_io_ShrSet_out_1 : _GEN_19; // @[german.scala 381:29 387:18]
  wire  _GEN_45 = _T_2 ? rules_1_io_ExGntd_out : _GEN_20; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_46 = _T_2 ? rules_1_io_CurCmd_out : _GEN_21; // @[german.scala 381:29 389:18]
  wire  _GEN_47 = _T_2 ? rules_1_io_CurPtr_out : _GEN_22; // @[german.scala 381:29 390:18]
  wire  _GEN_48 = _T_2 ? rules_1_io_MemData_out : _GEN_23; // @[german.scala 381:29 391:19]
  wire  _GEN_49 = _T_2 ? rules_1_io_AuxData_out : _GEN_24; // @[german.scala 381:29 392:19]
  wire  _T_4 = io_en_a == 5'h2; // @[german.scala 380:31]
  wire [1:0] _GEN_50 = _T_4 ? rules_2_io_Cache_out_0_State : _GEN_25; // @[german.scala 381:29 382:17]
  wire  _GEN_51 = _T_4 ? rules_2_io_Cache_out_0_Data : _GEN_26; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_52 = _T_4 ? rules_2_io_Cache_out_1_State : _GEN_27; // @[german.scala 381:29 382:17]
  wire  _GEN_53 = _T_4 ? rules_2_io_Cache_out_1_Data : _GEN_28; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_54 = _T_4 ? rules_2_io_Chan1_out_0_Cmd : _GEN_29; // @[german.scala 381:29 383:17]
  wire  _GEN_55 = _T_4 ? rules_2_io_Chan1_out_0_Data : _GEN_30; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_56 = _T_4 ? rules_2_io_Chan1_out_1_Cmd : _GEN_31; // @[german.scala 381:29 383:17]
  wire  _GEN_57 = _T_4 ? rules_2_io_Chan1_out_1_Data : _GEN_32; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_58 = _T_4 ? rules_2_io_Chan2_out_0_Cmd : _GEN_33; // @[german.scala 381:29 384:17]
  wire  _GEN_59 = _T_4 ? rules_2_io_Chan2_out_0_Data : _GEN_34; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_60 = _T_4 ? rules_2_io_Chan2_out_1_Cmd : _GEN_35; // @[german.scala 381:29 384:17]
  wire  _GEN_61 = _T_4 ? rules_2_io_Chan2_out_1_Data : _GEN_36; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_62 = _T_4 ? rules_2_io_Chan3_out_0_Cmd : _GEN_37; // @[german.scala 381:29 385:17]
  wire  _GEN_63 = _T_4 ? rules_2_io_Chan3_out_0_Data : _GEN_38; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_64 = _T_4 ? rules_2_io_Chan3_out_1_Cmd : _GEN_39; // @[german.scala 381:29 385:17]
  wire  _GEN_65 = _T_4 ? rules_2_io_Chan3_out_1_Data : _GEN_40; // @[german.scala 381:29 385:17]
  wire  _GEN_66 = _T_4 ? rules_2_io_InvSet_out_0 : _GEN_41; // @[german.scala 381:29 386:18]
  wire  _GEN_67 = _T_4 ? rules_2_io_InvSet_out_1 : _GEN_42; // @[german.scala 381:29 386:18]
  wire  _GEN_68 = _T_4 ? rules_2_io_ShrSet_out_0 : _GEN_43; // @[german.scala 381:29 387:18]
  wire  _GEN_69 = _T_4 ? rules_2_io_ShrSet_out_1 : _GEN_44; // @[german.scala 381:29 387:18]
  wire  _GEN_70 = _T_4 ? rules_2_io_ExGntd_out : _GEN_45; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_71 = _T_4 ? rules_2_io_CurCmd_out : _GEN_46; // @[german.scala 381:29 389:18]
  wire  _GEN_72 = _T_4 ? rules_2_io_CurPtr_out : _GEN_47; // @[german.scala 381:29 390:18]
  wire  _GEN_73 = _T_4 ? rules_2_io_MemData_out : _GEN_48; // @[german.scala 381:29 391:19]
  wire  _GEN_74 = _T_4 ? rules_2_io_AuxData_out : _GEN_49; // @[german.scala 381:29 392:19]
  wire  _T_6 = io_en_a == 5'h3; // @[german.scala 380:31]
  wire [1:0] _GEN_75 = _T_6 ? rules_3_io_Cache_out_0_State : _GEN_50; // @[german.scala 381:29 382:17]
  wire  _GEN_76 = _T_6 ? rules_3_io_Cache_out_0_Data : _GEN_51; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_77 = _T_6 ? rules_3_io_Cache_out_1_State : _GEN_52; // @[german.scala 381:29 382:17]
  wire  _GEN_78 = _T_6 ? rules_3_io_Cache_out_1_Data : _GEN_53; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_79 = _T_6 ? rules_3_io_Chan1_out_0_Cmd : _GEN_54; // @[german.scala 381:29 383:17]
  wire  _GEN_80 = _T_6 ? rules_3_io_Chan1_out_0_Data : _GEN_55; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_81 = _T_6 ? rules_3_io_Chan1_out_1_Cmd : _GEN_56; // @[german.scala 381:29 383:17]
  wire  _GEN_82 = _T_6 ? rules_3_io_Chan1_out_1_Data : _GEN_57; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_83 = _T_6 ? rules_3_io_Chan2_out_0_Cmd : _GEN_58; // @[german.scala 381:29 384:17]
  wire  _GEN_84 = _T_6 ? rules_3_io_Chan2_out_0_Data : _GEN_59; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_85 = _T_6 ? rules_3_io_Chan2_out_1_Cmd : _GEN_60; // @[german.scala 381:29 384:17]
  wire  _GEN_86 = _T_6 ? rules_3_io_Chan2_out_1_Data : _GEN_61; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_87 = _T_6 ? rules_3_io_Chan3_out_0_Cmd : _GEN_62; // @[german.scala 381:29 385:17]
  wire  _GEN_88 = _T_6 ? rules_3_io_Chan3_out_0_Data : _GEN_63; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_89 = _T_6 ? rules_3_io_Chan3_out_1_Cmd : _GEN_64; // @[german.scala 381:29 385:17]
  wire  _GEN_90 = _T_6 ? rules_3_io_Chan3_out_1_Data : _GEN_65; // @[german.scala 381:29 385:17]
  wire  _GEN_91 = _T_6 ? rules_3_io_InvSet_out_0 : _GEN_66; // @[german.scala 381:29 386:18]
  wire  _GEN_92 = _T_6 ? rules_3_io_InvSet_out_1 : _GEN_67; // @[german.scala 381:29 386:18]
  wire  _GEN_93 = _T_6 ? rules_3_io_ShrSet_out_0 : _GEN_68; // @[german.scala 381:29 387:18]
  wire  _GEN_94 = _T_6 ? rules_3_io_ShrSet_out_1 : _GEN_69; // @[german.scala 381:29 387:18]
  wire  _GEN_95 = _T_6 ? rules_3_io_ExGntd_out : _GEN_70; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_96 = _T_6 ? rules_3_io_CurCmd_out : _GEN_71; // @[german.scala 381:29 389:18]
  wire  _GEN_97 = _T_6 ? rules_3_io_CurPtr_out : _GEN_72; // @[german.scala 381:29 390:18]
  wire  _GEN_98 = _T_6 ? rules_3_io_MemData_out : _GEN_73; // @[german.scala 381:29 391:19]
  wire  _GEN_99 = _T_6 ? rules_3_io_AuxData_out : _GEN_74; // @[german.scala 381:29 392:19]
  wire  _T_8 = io_en_a == 5'h4; // @[german.scala 380:31]
  wire [1:0] _GEN_100 = _T_8 ? rules_4_io_Cache_out_0_State : _GEN_75; // @[german.scala 381:29 382:17]
  wire  _GEN_101 = _T_8 ? rules_4_io_Cache_out_0_Data : _GEN_76; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_102 = _T_8 ? rules_4_io_Cache_out_1_State : _GEN_77; // @[german.scala 381:29 382:17]
  wire  _GEN_103 = _T_8 ? rules_4_io_Cache_out_1_Data : _GEN_78; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_104 = _T_8 ? rules_4_io_Chan1_out_0_Cmd : _GEN_79; // @[german.scala 381:29 383:17]
  wire  _GEN_105 = _T_8 ? rules_4_io_Chan1_out_0_Data : _GEN_80; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_106 = _T_8 ? rules_4_io_Chan1_out_1_Cmd : _GEN_81; // @[german.scala 381:29 383:17]
  wire  _GEN_107 = _T_8 ? rules_4_io_Chan1_out_1_Data : _GEN_82; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_108 = _T_8 ? rules_4_io_Chan2_out_0_Cmd : _GEN_83; // @[german.scala 381:29 384:17]
  wire  _GEN_109 = _T_8 ? rules_4_io_Chan2_out_0_Data : _GEN_84; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_110 = _T_8 ? rules_4_io_Chan2_out_1_Cmd : _GEN_85; // @[german.scala 381:29 384:17]
  wire  _GEN_111 = _T_8 ? rules_4_io_Chan2_out_1_Data : _GEN_86; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_112 = _T_8 ? rules_4_io_Chan3_out_0_Cmd : _GEN_87; // @[german.scala 381:29 385:17]
  wire  _GEN_113 = _T_8 ? rules_4_io_Chan3_out_0_Data : _GEN_88; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_114 = _T_8 ? rules_4_io_Chan3_out_1_Cmd : _GEN_89; // @[german.scala 381:29 385:17]
  wire  _GEN_115 = _T_8 ? rules_4_io_Chan3_out_1_Data : _GEN_90; // @[german.scala 381:29 385:17]
  wire  _GEN_116 = _T_8 ? rules_4_io_InvSet_out_0 : _GEN_91; // @[german.scala 381:29 386:18]
  wire  _GEN_117 = _T_8 ? rules_4_io_InvSet_out_1 : _GEN_92; // @[german.scala 381:29 386:18]
  wire  _GEN_118 = _T_8 ? rules_4_io_ShrSet_out_0 : _GEN_93; // @[german.scala 381:29 387:18]
  wire  _GEN_119 = _T_8 ? rules_4_io_ShrSet_out_1 : _GEN_94; // @[german.scala 381:29 387:18]
  wire  _GEN_120 = _T_8 ? rules_4_io_ExGntd_out : _GEN_95; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_121 = _T_8 ? rules_4_io_CurCmd_out : _GEN_96; // @[german.scala 381:29 389:18]
  wire  _GEN_122 = _T_8 ? rules_4_io_CurPtr_out : _GEN_97; // @[german.scala 381:29 390:18]
  wire  _GEN_123 = _T_8 ? rules_4_io_MemData_out : _GEN_98; // @[german.scala 381:29 391:19]
  wire  _GEN_124 = _T_8 ? rules_4_io_AuxData_out : _GEN_99; // @[german.scala 381:29 392:19]
  wire  _T_10 = io_en_a == 5'h5; // @[german.scala 380:31]
  wire [1:0] _GEN_125 = _T_10 ? rules_5_io_Cache_out_0_State : _GEN_100; // @[german.scala 381:29 382:17]
  wire  _GEN_126 = _T_10 ? rules_5_io_Cache_out_0_Data : _GEN_101; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_127 = _T_10 ? rules_5_io_Cache_out_1_State : _GEN_102; // @[german.scala 381:29 382:17]
  wire  _GEN_128 = _T_10 ? rules_5_io_Cache_out_1_Data : _GEN_103; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_129 = _T_10 ? rules_5_io_Chan1_out_0_Cmd : _GEN_104; // @[german.scala 381:29 383:17]
  wire  _GEN_130 = _T_10 ? rules_5_io_Chan1_out_0_Data : _GEN_105; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_131 = _T_10 ? rules_5_io_Chan1_out_1_Cmd : _GEN_106; // @[german.scala 381:29 383:17]
  wire  _GEN_132 = _T_10 ? rules_5_io_Chan1_out_1_Data : _GEN_107; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_133 = _T_10 ? rules_5_io_Chan2_out_0_Cmd : _GEN_108; // @[german.scala 381:29 384:17]
  wire  _GEN_134 = _T_10 ? rules_5_io_Chan2_out_0_Data : _GEN_109; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_135 = _T_10 ? rules_5_io_Chan2_out_1_Cmd : _GEN_110; // @[german.scala 381:29 384:17]
  wire  _GEN_136 = _T_10 ? rules_5_io_Chan2_out_1_Data : _GEN_111; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_137 = _T_10 ? rules_5_io_Chan3_out_0_Cmd : _GEN_112; // @[german.scala 381:29 385:17]
  wire  _GEN_138 = _T_10 ? rules_5_io_Chan3_out_0_Data : _GEN_113; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_139 = _T_10 ? rules_5_io_Chan3_out_1_Cmd : _GEN_114; // @[german.scala 381:29 385:17]
  wire  _GEN_140 = _T_10 ? rules_5_io_Chan3_out_1_Data : _GEN_115; // @[german.scala 381:29 385:17]
  wire  _GEN_141 = _T_10 ? rules_5_io_InvSet_out_0 : _GEN_116; // @[german.scala 381:29 386:18]
  wire  _GEN_142 = _T_10 ? rules_5_io_InvSet_out_1 : _GEN_117; // @[german.scala 381:29 386:18]
  wire  _GEN_143 = _T_10 ? rules_5_io_ShrSet_out_0 : _GEN_118; // @[german.scala 381:29 387:18]
  wire  _GEN_144 = _T_10 ? rules_5_io_ShrSet_out_1 : _GEN_119; // @[german.scala 381:29 387:18]
  wire  _GEN_145 = _T_10 ? rules_5_io_ExGntd_out : _GEN_120; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_146 = _T_10 ? rules_5_io_CurCmd_out : _GEN_121; // @[german.scala 381:29 389:18]
  wire  _GEN_147 = _T_10 ? rules_5_io_CurPtr_out : _GEN_122; // @[german.scala 381:29 390:18]
  wire  _GEN_148 = _T_10 ? rules_5_io_MemData_out : _GEN_123; // @[german.scala 381:29 391:19]
  wire  _GEN_149 = _T_10 ? rules_5_io_AuxData_out : _GEN_124; // @[german.scala 381:29 392:19]
  wire  _T_12 = io_en_a == 5'h6; // @[german.scala 380:31]
  wire [1:0] _GEN_150 = _T_12 ? rules_6_io_Cache_out_0_State : _GEN_125; // @[german.scala 381:29 382:17]
  wire  _GEN_151 = _T_12 ? rules_6_io_Cache_out_0_Data : _GEN_126; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_152 = _T_12 ? rules_6_io_Cache_out_1_State : _GEN_127; // @[german.scala 381:29 382:17]
  wire  _GEN_153 = _T_12 ? rules_6_io_Cache_out_1_Data : _GEN_128; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_154 = _T_12 ? rules_6_io_Chan1_out_0_Cmd : _GEN_129; // @[german.scala 381:29 383:17]
  wire  _GEN_155 = _T_12 ? rules_6_io_Chan1_out_0_Data : _GEN_130; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_156 = _T_12 ? rules_6_io_Chan1_out_1_Cmd : _GEN_131; // @[german.scala 381:29 383:17]
  wire  _GEN_157 = _T_12 ? rules_6_io_Chan1_out_1_Data : _GEN_132; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_158 = _T_12 ? rules_6_io_Chan2_out_0_Cmd : _GEN_133; // @[german.scala 381:29 384:17]
  wire  _GEN_159 = _T_12 ? rules_6_io_Chan2_out_0_Data : _GEN_134; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_160 = _T_12 ? rules_6_io_Chan2_out_1_Cmd : _GEN_135; // @[german.scala 381:29 384:17]
  wire  _GEN_161 = _T_12 ? rules_6_io_Chan2_out_1_Data : _GEN_136; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_162 = _T_12 ? rules_6_io_Chan3_out_0_Cmd : _GEN_137; // @[german.scala 381:29 385:17]
  wire  _GEN_163 = _T_12 ? rules_6_io_Chan3_out_0_Data : _GEN_138; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_164 = _T_12 ? rules_6_io_Chan3_out_1_Cmd : _GEN_139; // @[german.scala 381:29 385:17]
  wire  _GEN_165 = _T_12 ? rules_6_io_Chan3_out_1_Data : _GEN_140; // @[german.scala 381:29 385:17]
  wire  _GEN_166 = _T_12 ? rules_6_io_InvSet_out_0 : _GEN_141; // @[german.scala 381:29 386:18]
  wire  _GEN_167 = _T_12 ? rules_6_io_InvSet_out_1 : _GEN_142; // @[german.scala 381:29 386:18]
  wire  _GEN_168 = _T_12 ? rules_6_io_ShrSet_out_0 : _GEN_143; // @[german.scala 381:29 387:18]
  wire  _GEN_169 = _T_12 ? rules_6_io_ShrSet_out_1 : _GEN_144; // @[german.scala 381:29 387:18]
  wire  _GEN_170 = _T_12 ? rules_6_io_ExGntd_out : _GEN_145; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_171 = _T_12 ? rules_6_io_CurCmd_out : _GEN_146; // @[german.scala 381:29 389:18]
  wire  _GEN_172 = _T_12 ? rules_6_io_CurPtr_out : _GEN_147; // @[german.scala 381:29 390:18]
  wire  _GEN_173 = _T_12 ? rules_6_io_MemData_out : _GEN_148; // @[german.scala 381:29 391:19]
  wire  _GEN_174 = _T_12 ? rules_6_io_AuxData_out : _GEN_149; // @[german.scala 381:29 392:19]
  wire  _T_14 = io_en_a == 5'h7; // @[german.scala 380:31]
  wire [1:0] _GEN_175 = _T_14 ? rules_7_io_Cache_out_0_State : _GEN_150; // @[german.scala 381:29 382:17]
  wire  _GEN_176 = _T_14 ? rules_7_io_Cache_out_0_Data : _GEN_151; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_177 = _T_14 ? rules_7_io_Cache_out_1_State : _GEN_152; // @[german.scala 381:29 382:17]
  wire  _GEN_178 = _T_14 ? rules_7_io_Cache_out_1_Data : _GEN_153; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_179 = _T_14 ? rules_7_io_Chan1_out_0_Cmd : _GEN_154; // @[german.scala 381:29 383:17]
  wire  _GEN_180 = _T_14 ? rules_7_io_Chan1_out_0_Data : _GEN_155; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_181 = _T_14 ? rules_7_io_Chan1_out_1_Cmd : _GEN_156; // @[german.scala 381:29 383:17]
  wire  _GEN_182 = _T_14 ? rules_7_io_Chan1_out_1_Data : _GEN_157; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_183 = _T_14 ? rules_7_io_Chan2_out_0_Cmd : _GEN_158; // @[german.scala 381:29 384:17]
  wire  _GEN_184 = _T_14 ? rules_7_io_Chan2_out_0_Data : _GEN_159; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_185 = _T_14 ? rules_7_io_Chan2_out_1_Cmd : _GEN_160; // @[german.scala 381:29 384:17]
  wire  _GEN_186 = _T_14 ? rules_7_io_Chan2_out_1_Data : _GEN_161; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_187 = _T_14 ? rules_7_io_Chan3_out_0_Cmd : _GEN_162; // @[german.scala 381:29 385:17]
  wire  _GEN_188 = _T_14 ? rules_7_io_Chan3_out_0_Data : _GEN_163; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_189 = _T_14 ? rules_7_io_Chan3_out_1_Cmd : _GEN_164; // @[german.scala 381:29 385:17]
  wire  _GEN_190 = _T_14 ? rules_7_io_Chan3_out_1_Data : _GEN_165; // @[german.scala 381:29 385:17]
  wire  _GEN_191 = _T_14 ? rules_7_io_InvSet_out_0 : _GEN_166; // @[german.scala 381:29 386:18]
  wire  _GEN_192 = _T_14 ? rules_7_io_InvSet_out_1 : _GEN_167; // @[german.scala 381:29 386:18]
  wire  _GEN_193 = _T_14 ? rules_7_io_ShrSet_out_0 : _GEN_168; // @[german.scala 381:29 387:18]
  wire  _GEN_194 = _T_14 ? rules_7_io_ShrSet_out_1 : _GEN_169; // @[german.scala 381:29 387:18]
  wire  _GEN_195 = _T_14 ? rules_7_io_ExGntd_out : _GEN_170; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_196 = _T_14 ? rules_7_io_CurCmd_out : _GEN_171; // @[german.scala 381:29 389:18]
  wire  _GEN_197 = _T_14 ? rules_7_io_CurPtr_out : _GEN_172; // @[german.scala 381:29 390:18]
  wire  _GEN_198 = _T_14 ? rules_7_io_MemData_out : _GEN_173; // @[german.scala 381:29 391:19]
  wire  _GEN_199 = _T_14 ? rules_7_io_AuxData_out : _GEN_174; // @[german.scala 381:29 392:19]
  wire  _T_16 = io_en_a == 5'h8; // @[german.scala 380:31]
  wire [1:0] _GEN_200 = _T_16 ? rules_8_io_Cache_out_0_State : _GEN_175; // @[german.scala 381:29 382:17]
  wire  _GEN_201 = _T_16 ? rules_8_io_Cache_out_0_Data : _GEN_176; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_202 = _T_16 ? rules_8_io_Cache_out_1_State : _GEN_177; // @[german.scala 381:29 382:17]
  wire  _GEN_203 = _T_16 ? rules_8_io_Cache_out_1_Data : _GEN_178; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_204 = _T_16 ? rules_8_io_Chan1_out_0_Cmd : _GEN_179; // @[german.scala 381:29 383:17]
  wire  _GEN_205 = _T_16 ? rules_8_io_Chan1_out_0_Data : _GEN_180; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_206 = _T_16 ? rules_8_io_Chan1_out_1_Cmd : _GEN_181; // @[german.scala 381:29 383:17]
  wire  _GEN_207 = _T_16 ? rules_8_io_Chan1_out_1_Data : _GEN_182; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_208 = _T_16 ? rules_8_io_Chan2_out_0_Cmd : _GEN_183; // @[german.scala 381:29 384:17]
  wire  _GEN_209 = _T_16 ? rules_8_io_Chan2_out_0_Data : _GEN_184; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_210 = _T_16 ? rules_8_io_Chan2_out_1_Cmd : _GEN_185; // @[german.scala 381:29 384:17]
  wire  _GEN_211 = _T_16 ? rules_8_io_Chan2_out_1_Data : _GEN_186; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_212 = _T_16 ? rules_8_io_Chan3_out_0_Cmd : _GEN_187; // @[german.scala 381:29 385:17]
  wire  _GEN_213 = _T_16 ? rules_8_io_Chan3_out_0_Data : _GEN_188; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_214 = _T_16 ? rules_8_io_Chan3_out_1_Cmd : _GEN_189; // @[german.scala 381:29 385:17]
  wire  _GEN_215 = _T_16 ? rules_8_io_Chan3_out_1_Data : _GEN_190; // @[german.scala 381:29 385:17]
  wire  _GEN_216 = _T_16 ? rules_8_io_InvSet_out_0 : _GEN_191; // @[german.scala 381:29 386:18]
  wire  _GEN_217 = _T_16 ? rules_8_io_InvSet_out_1 : _GEN_192; // @[german.scala 381:29 386:18]
  wire  _GEN_218 = _T_16 ? rules_8_io_ShrSet_out_0 : _GEN_193; // @[german.scala 381:29 387:18]
  wire  _GEN_219 = _T_16 ? rules_8_io_ShrSet_out_1 : _GEN_194; // @[german.scala 381:29 387:18]
  wire  _GEN_220 = _T_16 ? rules_8_io_ExGntd_out : _GEN_195; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_221 = _T_16 ? rules_8_io_CurCmd_out : _GEN_196; // @[german.scala 381:29 389:18]
  wire  _GEN_222 = _T_16 ? rules_8_io_CurPtr_out : _GEN_197; // @[german.scala 381:29 390:18]
  wire  _GEN_223 = _T_16 ? rules_8_io_MemData_out : _GEN_198; // @[german.scala 381:29 391:19]
  wire  _GEN_224 = _T_16 ? rules_8_io_AuxData_out : _GEN_199; // @[german.scala 381:29 392:19]
  wire  _T_18 = io_en_a == 5'h9; // @[german.scala 380:31]
  wire [1:0] _GEN_225 = _T_18 ? rules_9_io_Cache_out_0_State : _GEN_200; // @[german.scala 381:29 382:17]
  wire  _GEN_226 = _T_18 ? rules_9_io_Cache_out_0_Data : _GEN_201; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_227 = _T_18 ? rules_9_io_Cache_out_1_State : _GEN_202; // @[german.scala 381:29 382:17]
  wire  _GEN_228 = _T_18 ? rules_9_io_Cache_out_1_Data : _GEN_203; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_229 = _T_18 ? rules_9_io_Chan1_out_0_Cmd : _GEN_204; // @[german.scala 381:29 383:17]
  wire  _GEN_230 = _T_18 ? rules_9_io_Chan1_out_0_Data : _GEN_205; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_231 = _T_18 ? rules_9_io_Chan1_out_1_Cmd : _GEN_206; // @[german.scala 381:29 383:17]
  wire  _GEN_232 = _T_18 ? rules_9_io_Chan1_out_1_Data : _GEN_207; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_233 = _T_18 ? rules_9_io_Chan2_out_0_Cmd : _GEN_208; // @[german.scala 381:29 384:17]
  wire  _GEN_234 = _T_18 ? rules_9_io_Chan2_out_0_Data : _GEN_209; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_235 = _T_18 ? rules_9_io_Chan2_out_1_Cmd : _GEN_210; // @[german.scala 381:29 384:17]
  wire  _GEN_236 = _T_18 ? rules_9_io_Chan2_out_1_Data : _GEN_211; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_237 = _T_18 ? rules_9_io_Chan3_out_0_Cmd : _GEN_212; // @[german.scala 381:29 385:17]
  wire  _GEN_238 = _T_18 ? rules_9_io_Chan3_out_0_Data : _GEN_213; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_239 = _T_18 ? rules_9_io_Chan3_out_1_Cmd : _GEN_214; // @[german.scala 381:29 385:17]
  wire  _GEN_240 = _T_18 ? rules_9_io_Chan3_out_1_Data : _GEN_215; // @[german.scala 381:29 385:17]
  wire  _GEN_241 = _T_18 ? rules_9_io_InvSet_out_0 : _GEN_216; // @[german.scala 381:29 386:18]
  wire  _GEN_242 = _T_18 ? rules_9_io_InvSet_out_1 : _GEN_217; // @[german.scala 381:29 386:18]
  wire  _GEN_243 = _T_18 ? rules_9_io_ShrSet_out_0 : _GEN_218; // @[german.scala 381:29 387:18]
  wire  _GEN_244 = _T_18 ? rules_9_io_ShrSet_out_1 : _GEN_219; // @[german.scala 381:29 387:18]
  wire  _GEN_245 = _T_18 ? rules_9_io_ExGntd_out : _GEN_220; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_246 = _T_18 ? rules_9_io_CurCmd_out : _GEN_221; // @[german.scala 381:29 389:18]
  wire  _GEN_247 = _T_18 ? rules_9_io_CurPtr_out : _GEN_222; // @[german.scala 381:29 390:18]
  wire  _GEN_248 = _T_18 ? rules_9_io_MemData_out : _GEN_223; // @[german.scala 381:29 391:19]
  wire  _GEN_249 = _T_18 ? rules_9_io_AuxData_out : _GEN_224; // @[german.scala 381:29 392:19]
  wire  _T_20 = io_en_a == 5'ha; // @[german.scala 380:31]
  wire [1:0] _GEN_250 = _T_20 ? rules_10_io_Cache_out_0_State : _GEN_225; // @[german.scala 381:29 382:17]
  wire  _GEN_251 = _T_20 ? rules_10_io_Cache_out_0_Data : _GEN_226; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_252 = _T_20 ? rules_10_io_Cache_out_1_State : _GEN_227; // @[german.scala 381:29 382:17]
  wire  _GEN_253 = _T_20 ? rules_10_io_Cache_out_1_Data : _GEN_228; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_254 = _T_20 ? rules_10_io_Chan1_out_0_Cmd : _GEN_229; // @[german.scala 381:29 383:17]
  wire  _GEN_255 = _T_20 ? rules_10_io_Chan1_out_0_Data : _GEN_230; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_256 = _T_20 ? rules_10_io_Chan1_out_1_Cmd : _GEN_231; // @[german.scala 381:29 383:17]
  wire  _GEN_257 = _T_20 ? rules_10_io_Chan1_out_1_Data : _GEN_232; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_258 = _T_20 ? rules_10_io_Chan2_out_0_Cmd : _GEN_233; // @[german.scala 381:29 384:17]
  wire  _GEN_259 = _T_20 ? rules_10_io_Chan2_out_0_Data : _GEN_234; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_260 = _T_20 ? rules_10_io_Chan2_out_1_Cmd : _GEN_235; // @[german.scala 381:29 384:17]
  wire  _GEN_261 = _T_20 ? rules_10_io_Chan2_out_1_Data : _GEN_236; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_262 = _T_20 ? rules_10_io_Chan3_out_0_Cmd : _GEN_237; // @[german.scala 381:29 385:17]
  wire  _GEN_263 = _T_20 ? rules_10_io_Chan3_out_0_Data : _GEN_238; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_264 = _T_20 ? rules_10_io_Chan3_out_1_Cmd : _GEN_239; // @[german.scala 381:29 385:17]
  wire  _GEN_265 = _T_20 ? rules_10_io_Chan3_out_1_Data : _GEN_240; // @[german.scala 381:29 385:17]
  wire  _GEN_266 = _T_20 ? rules_10_io_InvSet_out_0 : _GEN_241; // @[german.scala 381:29 386:18]
  wire  _GEN_267 = _T_20 ? rules_10_io_InvSet_out_1 : _GEN_242; // @[german.scala 381:29 386:18]
  wire  _GEN_268 = _T_20 ? rules_10_io_ShrSet_out_0 : _GEN_243; // @[german.scala 381:29 387:18]
  wire  _GEN_269 = _T_20 ? rules_10_io_ShrSet_out_1 : _GEN_244; // @[german.scala 381:29 387:18]
  wire  _GEN_270 = _T_20 ? rules_10_io_ExGntd_out : _GEN_245; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_271 = _T_20 ? rules_10_io_CurCmd_out : _GEN_246; // @[german.scala 381:29 389:18]
  wire  _GEN_272 = _T_20 ? rules_10_io_CurPtr_out : _GEN_247; // @[german.scala 381:29 390:18]
  wire  _GEN_273 = _T_20 ? rules_10_io_MemData_out : _GEN_248; // @[german.scala 381:29 391:19]
  wire  _GEN_274 = _T_20 ? rules_10_io_AuxData_out : _GEN_249; // @[german.scala 381:29 392:19]
  wire  _T_22 = io_en_a == 5'hb; // @[german.scala 380:31]
  wire [1:0] _GEN_275 = _T_22 ? rules_11_io_Cache_out_0_State : _GEN_250; // @[german.scala 381:29 382:17]
  wire  _GEN_276 = _T_22 ? rules_11_io_Cache_out_0_Data : _GEN_251; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_277 = _T_22 ? rules_11_io_Cache_out_1_State : _GEN_252; // @[german.scala 381:29 382:17]
  wire  _GEN_278 = _T_22 ? rules_11_io_Cache_out_1_Data : _GEN_253; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_279 = _T_22 ? rules_11_io_Chan1_out_0_Cmd : _GEN_254; // @[german.scala 381:29 383:17]
  wire  _GEN_280 = _T_22 ? rules_11_io_Chan1_out_0_Data : _GEN_255; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_281 = _T_22 ? rules_11_io_Chan1_out_1_Cmd : _GEN_256; // @[german.scala 381:29 383:17]
  wire  _GEN_282 = _T_22 ? rules_11_io_Chan1_out_1_Data : _GEN_257; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_283 = _T_22 ? rules_11_io_Chan2_out_0_Cmd : _GEN_258; // @[german.scala 381:29 384:17]
  wire  _GEN_284 = _T_22 ? rules_11_io_Chan2_out_0_Data : _GEN_259; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_285 = _T_22 ? rules_11_io_Chan2_out_1_Cmd : _GEN_260; // @[german.scala 381:29 384:17]
  wire  _GEN_286 = _T_22 ? rules_11_io_Chan2_out_1_Data : _GEN_261; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_287 = _T_22 ? rules_11_io_Chan3_out_0_Cmd : _GEN_262; // @[german.scala 381:29 385:17]
  wire  _GEN_288 = _T_22 ? rules_11_io_Chan3_out_0_Data : _GEN_263; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_289 = _T_22 ? rules_11_io_Chan3_out_1_Cmd : _GEN_264; // @[german.scala 381:29 385:17]
  wire  _GEN_290 = _T_22 ? rules_11_io_Chan3_out_1_Data : _GEN_265; // @[german.scala 381:29 385:17]
  wire  _GEN_291 = _T_22 ? rules_11_io_InvSet_out_0 : _GEN_266; // @[german.scala 381:29 386:18]
  wire  _GEN_292 = _T_22 ? rules_11_io_InvSet_out_1 : _GEN_267; // @[german.scala 381:29 386:18]
  wire  _GEN_293 = _T_22 ? rules_11_io_ShrSet_out_0 : _GEN_268; // @[german.scala 381:29 387:18]
  wire  _GEN_294 = _T_22 ? rules_11_io_ShrSet_out_1 : _GEN_269; // @[german.scala 381:29 387:18]
  wire  _GEN_295 = _T_22 ? rules_11_io_ExGntd_out : _GEN_270; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_296 = _T_22 ? rules_11_io_CurCmd_out : _GEN_271; // @[german.scala 381:29 389:18]
  wire  _GEN_297 = _T_22 ? rules_11_io_CurPtr_out : _GEN_272; // @[german.scala 381:29 390:18]
  wire  _GEN_298 = _T_22 ? rules_11_io_MemData_out : _GEN_273; // @[german.scala 381:29 391:19]
  wire  _GEN_299 = _T_22 ? rules_11_io_AuxData_out : _GEN_274; // @[german.scala 381:29 392:19]
  wire  _T_24 = io_en_a == 5'hc; // @[german.scala 380:31]
  wire [1:0] _GEN_300 = _T_24 ? rules_12_io_Cache_out_0_State : _GEN_275; // @[german.scala 381:29 382:17]
  wire  _GEN_301 = _T_24 ? rules_12_io_Cache_out_0_Data : _GEN_276; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_302 = _T_24 ? rules_12_io_Cache_out_1_State : _GEN_277; // @[german.scala 381:29 382:17]
  wire  _GEN_303 = _T_24 ? rules_12_io_Cache_out_1_Data : _GEN_278; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_304 = _T_24 ? rules_12_io_Chan1_out_0_Cmd : _GEN_279; // @[german.scala 381:29 383:17]
  wire  _GEN_305 = _T_24 ? rules_12_io_Chan1_out_0_Data : _GEN_280; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_306 = _T_24 ? rules_12_io_Chan1_out_1_Cmd : _GEN_281; // @[german.scala 381:29 383:17]
  wire  _GEN_307 = _T_24 ? rules_12_io_Chan1_out_1_Data : _GEN_282; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_308 = _T_24 ? rules_12_io_Chan2_out_0_Cmd : _GEN_283; // @[german.scala 381:29 384:17]
  wire  _GEN_309 = _T_24 ? rules_12_io_Chan2_out_0_Data : _GEN_284; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_310 = _T_24 ? rules_12_io_Chan2_out_1_Cmd : _GEN_285; // @[german.scala 381:29 384:17]
  wire  _GEN_311 = _T_24 ? rules_12_io_Chan2_out_1_Data : _GEN_286; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_312 = _T_24 ? rules_12_io_Chan3_out_0_Cmd : _GEN_287; // @[german.scala 381:29 385:17]
  wire  _GEN_313 = _T_24 ? rules_12_io_Chan3_out_0_Data : _GEN_288; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_314 = _T_24 ? rules_12_io_Chan3_out_1_Cmd : _GEN_289; // @[german.scala 381:29 385:17]
  wire  _GEN_315 = _T_24 ? rules_12_io_Chan3_out_1_Data : _GEN_290; // @[german.scala 381:29 385:17]
  wire  _GEN_316 = _T_24 ? rules_12_io_InvSet_out_0 : _GEN_291; // @[german.scala 381:29 386:18]
  wire  _GEN_317 = _T_24 ? rules_12_io_InvSet_out_1 : _GEN_292; // @[german.scala 381:29 386:18]
  wire  _GEN_318 = _T_24 ? rules_12_io_ShrSet_out_0 : _GEN_293; // @[german.scala 381:29 387:18]
  wire  _GEN_319 = _T_24 ? rules_12_io_ShrSet_out_1 : _GEN_294; // @[german.scala 381:29 387:18]
  wire  _GEN_320 = _T_24 ? rules_12_io_ExGntd_out : _GEN_295; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_321 = _T_24 ? rules_12_io_CurCmd_out : _GEN_296; // @[german.scala 381:29 389:18]
  wire  _GEN_322 = _T_24 ? rules_12_io_CurPtr_out : _GEN_297; // @[german.scala 381:29 390:18]
  wire  _GEN_323 = _T_24 ? rules_12_io_MemData_out : _GEN_298; // @[german.scala 381:29 391:19]
  wire  _GEN_324 = _T_24 ? rules_12_io_AuxData_out : _GEN_299; // @[german.scala 381:29 392:19]
  wire  _T_26 = io_en_a == 5'hd; // @[german.scala 380:31]
  wire [1:0] _GEN_325 = _T_26 ? rules_13_io_Cache_out_0_State : _GEN_300; // @[german.scala 381:29 382:17]
  wire  _GEN_326 = _T_26 ? rules_13_io_Cache_out_0_Data : _GEN_301; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_327 = _T_26 ? rules_13_io_Cache_out_1_State : _GEN_302; // @[german.scala 381:29 382:17]
  wire  _GEN_328 = _T_26 ? rules_13_io_Cache_out_1_Data : _GEN_303; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_329 = _T_26 ? rules_13_io_Chan1_out_0_Cmd : _GEN_304; // @[german.scala 381:29 383:17]
  wire  _GEN_330 = _T_26 ? rules_13_io_Chan1_out_0_Data : _GEN_305; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_331 = _T_26 ? rules_13_io_Chan1_out_1_Cmd : _GEN_306; // @[german.scala 381:29 383:17]
  wire  _GEN_332 = _T_26 ? rules_13_io_Chan1_out_1_Data : _GEN_307; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_333 = _T_26 ? rules_13_io_Chan2_out_0_Cmd : _GEN_308; // @[german.scala 381:29 384:17]
  wire  _GEN_334 = _T_26 ? rules_13_io_Chan2_out_0_Data : _GEN_309; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_335 = _T_26 ? rules_13_io_Chan2_out_1_Cmd : _GEN_310; // @[german.scala 381:29 384:17]
  wire  _GEN_336 = _T_26 ? rules_13_io_Chan2_out_1_Data : _GEN_311; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_337 = _T_26 ? rules_13_io_Chan3_out_0_Cmd : _GEN_312; // @[german.scala 381:29 385:17]
  wire  _GEN_338 = _T_26 ? rules_13_io_Chan3_out_0_Data : _GEN_313; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_339 = _T_26 ? rules_13_io_Chan3_out_1_Cmd : _GEN_314; // @[german.scala 381:29 385:17]
  wire  _GEN_340 = _T_26 ? rules_13_io_Chan3_out_1_Data : _GEN_315; // @[german.scala 381:29 385:17]
  wire  _GEN_341 = _T_26 ? rules_13_io_InvSet_out_0 : _GEN_316; // @[german.scala 381:29 386:18]
  wire  _GEN_342 = _T_26 ? rules_13_io_InvSet_out_1 : _GEN_317; // @[german.scala 381:29 386:18]
  wire  _GEN_343 = _T_26 ? rules_13_io_ShrSet_out_0 : _GEN_318; // @[german.scala 381:29 387:18]
  wire  _GEN_344 = _T_26 ? rules_13_io_ShrSet_out_1 : _GEN_319; // @[german.scala 381:29 387:18]
  wire  _GEN_345 = _T_26 ? rules_13_io_ExGntd_out : _GEN_320; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_346 = _T_26 ? rules_13_io_CurCmd_out : _GEN_321; // @[german.scala 381:29 389:18]
  wire  _GEN_347 = _T_26 ? rules_13_io_CurPtr_out : _GEN_322; // @[german.scala 381:29 390:18]
  wire  _GEN_348 = _T_26 ? rules_13_io_MemData_out : _GEN_323; // @[german.scala 381:29 391:19]
  wire  _GEN_349 = _T_26 ? rules_13_io_AuxData_out : _GEN_324; // @[german.scala 381:29 392:19]
  wire  _T_28 = io_en_a == 5'he; // @[german.scala 380:31]
  wire [1:0] _GEN_350 = _T_28 ? rules_14_io_Cache_out_0_State : _GEN_325; // @[german.scala 381:29 382:17]
  wire  _GEN_351 = _T_28 ? rules_14_io_Cache_out_0_Data : _GEN_326; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_352 = _T_28 ? rules_14_io_Cache_out_1_State : _GEN_327; // @[german.scala 381:29 382:17]
  wire  _GEN_353 = _T_28 ? rules_14_io_Cache_out_1_Data : _GEN_328; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_354 = _T_28 ? rules_14_io_Chan1_out_0_Cmd : _GEN_329; // @[german.scala 381:29 383:17]
  wire  _GEN_355 = _T_28 ? rules_14_io_Chan1_out_0_Data : _GEN_330; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_356 = _T_28 ? rules_14_io_Chan1_out_1_Cmd : _GEN_331; // @[german.scala 381:29 383:17]
  wire  _GEN_357 = _T_28 ? rules_14_io_Chan1_out_1_Data : _GEN_332; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_358 = _T_28 ? rules_14_io_Chan2_out_0_Cmd : _GEN_333; // @[german.scala 381:29 384:17]
  wire  _GEN_359 = _T_28 ? rules_14_io_Chan2_out_0_Data : _GEN_334; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_360 = _T_28 ? rules_14_io_Chan2_out_1_Cmd : _GEN_335; // @[german.scala 381:29 384:17]
  wire  _GEN_361 = _T_28 ? rules_14_io_Chan2_out_1_Data : _GEN_336; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_362 = _T_28 ? rules_14_io_Chan3_out_0_Cmd : _GEN_337; // @[german.scala 381:29 385:17]
  wire  _GEN_363 = _T_28 ? rules_14_io_Chan3_out_0_Data : _GEN_338; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_364 = _T_28 ? rules_14_io_Chan3_out_1_Cmd : _GEN_339; // @[german.scala 381:29 385:17]
  wire  _GEN_365 = _T_28 ? rules_14_io_Chan3_out_1_Data : _GEN_340; // @[german.scala 381:29 385:17]
  wire  _GEN_366 = _T_28 ? rules_14_io_InvSet_out_0 : _GEN_341; // @[german.scala 381:29 386:18]
  wire  _GEN_367 = _T_28 ? rules_14_io_InvSet_out_1 : _GEN_342; // @[german.scala 381:29 386:18]
  wire  _GEN_368 = _T_28 ? rules_14_io_ShrSet_out_0 : _GEN_343; // @[german.scala 381:29 387:18]
  wire  _GEN_369 = _T_28 ? rules_14_io_ShrSet_out_1 : _GEN_344; // @[german.scala 381:29 387:18]
  wire  _GEN_370 = _T_28 ? rules_14_io_ExGntd_out : _GEN_345; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_371 = _T_28 ? rules_14_io_CurCmd_out : _GEN_346; // @[german.scala 381:29 389:18]
  wire  _GEN_372 = _T_28 ? rules_14_io_CurPtr_out : _GEN_347; // @[german.scala 381:29 390:18]
  wire  _GEN_373 = _T_28 ? rules_14_io_MemData_out : _GEN_348; // @[german.scala 381:29 391:19]
  wire  _GEN_374 = _T_28 ? rules_14_io_AuxData_out : _GEN_349; // @[german.scala 381:29 392:19]
  wire  _T_30 = io_en_a == 5'hf; // @[german.scala 380:31]
  wire [1:0] _GEN_375 = _T_30 ? rules_15_io_Cache_out_0_State : _GEN_350; // @[german.scala 381:29 382:17]
  wire  _GEN_376 = _T_30 ? rules_15_io_Cache_out_0_Data : _GEN_351; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_377 = _T_30 ? rules_15_io_Cache_out_1_State : _GEN_352; // @[german.scala 381:29 382:17]
  wire  _GEN_378 = _T_30 ? rules_15_io_Cache_out_1_Data : _GEN_353; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_379 = _T_30 ? rules_15_io_Chan1_out_0_Cmd : _GEN_354; // @[german.scala 381:29 383:17]
  wire  _GEN_380 = _T_30 ? rules_15_io_Chan1_out_0_Data : _GEN_355; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_381 = _T_30 ? rules_15_io_Chan1_out_1_Cmd : _GEN_356; // @[german.scala 381:29 383:17]
  wire  _GEN_382 = _T_30 ? rules_15_io_Chan1_out_1_Data : _GEN_357; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_383 = _T_30 ? rules_15_io_Chan2_out_0_Cmd : _GEN_358; // @[german.scala 381:29 384:17]
  wire  _GEN_384 = _T_30 ? rules_15_io_Chan2_out_0_Data : _GEN_359; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_385 = _T_30 ? rules_15_io_Chan2_out_1_Cmd : _GEN_360; // @[german.scala 381:29 384:17]
  wire  _GEN_386 = _T_30 ? rules_15_io_Chan2_out_1_Data : _GEN_361; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_387 = _T_30 ? rules_15_io_Chan3_out_0_Cmd : _GEN_362; // @[german.scala 381:29 385:17]
  wire  _GEN_388 = _T_30 ? rules_15_io_Chan3_out_0_Data : _GEN_363; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_389 = _T_30 ? rules_15_io_Chan3_out_1_Cmd : _GEN_364; // @[german.scala 381:29 385:17]
  wire  _GEN_390 = _T_30 ? rules_15_io_Chan3_out_1_Data : _GEN_365; // @[german.scala 381:29 385:17]
  wire  _GEN_391 = _T_30 ? rules_15_io_InvSet_out_0 : _GEN_366; // @[german.scala 381:29 386:18]
  wire  _GEN_392 = _T_30 ? rules_15_io_InvSet_out_1 : _GEN_367; // @[german.scala 381:29 386:18]
  wire  _GEN_393 = _T_30 ? rules_15_io_ShrSet_out_0 : _GEN_368; // @[german.scala 381:29 387:18]
  wire  _GEN_394 = _T_30 ? rules_15_io_ShrSet_out_1 : _GEN_369; // @[german.scala 381:29 387:18]
  wire  _GEN_395 = _T_30 ? rules_15_io_ExGntd_out : _GEN_370; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_396 = _T_30 ? rules_15_io_CurCmd_out : _GEN_371; // @[german.scala 381:29 389:18]
  wire  _GEN_397 = _T_30 ? rules_15_io_CurPtr_out : _GEN_372; // @[german.scala 381:29 390:18]
  wire  _GEN_398 = _T_30 ? rules_15_io_MemData_out : _GEN_373; // @[german.scala 381:29 391:19]
  wire  _GEN_399 = _T_30 ? rules_15_io_AuxData_out : _GEN_374; // @[german.scala 381:29 392:19]
  wire  _T_32 = io_en_a == 5'h10; // @[german.scala 380:31]
  wire [1:0] _GEN_400 = _T_32 ? rules_16_io_Cache_out_0_State : _GEN_375; // @[german.scala 381:29 382:17]
  wire  _GEN_401 = _T_32 ? rules_16_io_Cache_out_0_Data : _GEN_376; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_402 = _T_32 ? rules_16_io_Cache_out_1_State : _GEN_377; // @[german.scala 381:29 382:17]
  wire  _GEN_403 = _T_32 ? rules_16_io_Cache_out_1_Data : _GEN_378; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_404 = _T_32 ? rules_16_io_Chan1_out_0_Cmd : _GEN_379; // @[german.scala 381:29 383:17]
  wire  _GEN_405 = _T_32 ? rules_16_io_Chan1_out_0_Data : _GEN_380; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_406 = _T_32 ? rules_16_io_Chan1_out_1_Cmd : _GEN_381; // @[german.scala 381:29 383:17]
  wire  _GEN_407 = _T_32 ? rules_16_io_Chan1_out_1_Data : _GEN_382; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_408 = _T_32 ? rules_16_io_Chan2_out_0_Cmd : _GEN_383; // @[german.scala 381:29 384:17]
  wire  _GEN_409 = _T_32 ? rules_16_io_Chan2_out_0_Data : _GEN_384; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_410 = _T_32 ? rules_16_io_Chan2_out_1_Cmd : _GEN_385; // @[german.scala 381:29 384:17]
  wire  _GEN_411 = _T_32 ? rules_16_io_Chan2_out_1_Data : _GEN_386; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_412 = _T_32 ? rules_16_io_Chan3_out_0_Cmd : _GEN_387; // @[german.scala 381:29 385:17]
  wire  _GEN_413 = _T_32 ? rules_16_io_Chan3_out_0_Data : _GEN_388; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_414 = _T_32 ? rules_16_io_Chan3_out_1_Cmd : _GEN_389; // @[german.scala 381:29 385:17]
  wire  _GEN_415 = _T_32 ? rules_16_io_Chan3_out_1_Data : _GEN_390; // @[german.scala 381:29 385:17]
  wire  _GEN_416 = _T_32 ? rules_16_io_InvSet_out_0 : _GEN_391; // @[german.scala 381:29 386:18]
  wire  _GEN_417 = _T_32 ? rules_16_io_InvSet_out_1 : _GEN_392; // @[german.scala 381:29 386:18]
  wire  _GEN_418 = _T_32 ? rules_16_io_ShrSet_out_0 : _GEN_393; // @[german.scala 381:29 387:18]
  wire  _GEN_419 = _T_32 ? rules_16_io_ShrSet_out_1 : _GEN_394; // @[german.scala 381:29 387:18]
  wire  _GEN_420 = _T_32 ? rules_16_io_ExGntd_out : _GEN_395; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_421 = _T_32 ? rules_16_io_CurCmd_out : _GEN_396; // @[german.scala 381:29 389:18]
  wire  _GEN_422 = _T_32 ? rules_16_io_CurPtr_out : _GEN_397; // @[german.scala 381:29 390:18]
  wire  _GEN_423 = _T_32 ? rules_16_io_MemData_out : _GEN_398; // @[german.scala 381:29 391:19]
  wire  _GEN_424 = _T_32 ? rules_16_io_AuxData_out : _GEN_399; // @[german.scala 381:29 392:19]
  wire  _T_34 = io_en_a == 5'h11; // @[german.scala 380:31]
  wire [1:0] _GEN_425 = _T_34 ? rules_17_io_Cache_out_0_State : _GEN_400; // @[german.scala 381:29 382:17]
  wire  _GEN_426 = _T_34 ? rules_17_io_Cache_out_0_Data : _GEN_401; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_427 = _T_34 ? rules_17_io_Cache_out_1_State : _GEN_402; // @[german.scala 381:29 382:17]
  wire  _GEN_428 = _T_34 ? rules_17_io_Cache_out_1_Data : _GEN_403; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_429 = _T_34 ? rules_17_io_Chan1_out_0_Cmd : _GEN_404; // @[german.scala 381:29 383:17]
  wire  _GEN_430 = _T_34 ? rules_17_io_Chan1_out_0_Data : _GEN_405; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_431 = _T_34 ? rules_17_io_Chan1_out_1_Cmd : _GEN_406; // @[german.scala 381:29 383:17]
  wire  _GEN_432 = _T_34 ? rules_17_io_Chan1_out_1_Data : _GEN_407; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_433 = _T_34 ? rules_17_io_Chan2_out_0_Cmd : _GEN_408; // @[german.scala 381:29 384:17]
  wire  _GEN_434 = _T_34 ? rules_17_io_Chan2_out_0_Data : _GEN_409; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_435 = _T_34 ? rules_17_io_Chan2_out_1_Cmd : _GEN_410; // @[german.scala 381:29 384:17]
  wire  _GEN_436 = _T_34 ? rules_17_io_Chan2_out_1_Data : _GEN_411; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_437 = _T_34 ? rules_17_io_Chan3_out_0_Cmd : _GEN_412; // @[german.scala 381:29 385:17]
  wire  _GEN_438 = _T_34 ? rules_17_io_Chan3_out_0_Data : _GEN_413; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_439 = _T_34 ? rules_17_io_Chan3_out_1_Cmd : _GEN_414; // @[german.scala 381:29 385:17]
  wire  _GEN_440 = _T_34 ? rules_17_io_Chan3_out_1_Data : _GEN_415; // @[german.scala 381:29 385:17]
  wire  _GEN_441 = _T_34 ? rules_17_io_InvSet_out_0 : _GEN_416; // @[german.scala 381:29 386:18]
  wire  _GEN_442 = _T_34 ? rules_17_io_InvSet_out_1 : _GEN_417; // @[german.scala 381:29 386:18]
  wire  _GEN_443 = _T_34 ? rules_17_io_ShrSet_out_0 : _GEN_418; // @[german.scala 381:29 387:18]
  wire  _GEN_444 = _T_34 ? rules_17_io_ShrSet_out_1 : _GEN_419; // @[german.scala 381:29 387:18]
  wire  _GEN_445 = _T_34 ? rules_17_io_ExGntd_out : _GEN_420; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_446 = _T_34 ? rules_17_io_CurCmd_out : _GEN_421; // @[german.scala 381:29 389:18]
  wire  _GEN_447 = _T_34 ? rules_17_io_CurPtr_out : _GEN_422; // @[german.scala 381:29 390:18]
  wire  _GEN_448 = _T_34 ? rules_17_io_MemData_out : _GEN_423; // @[german.scala 381:29 391:19]
  wire  _GEN_449 = _T_34 ? rules_17_io_AuxData_out : _GEN_424; // @[german.scala 381:29 392:19]
  wire  _T_36 = io_en_a == 5'h12; // @[german.scala 380:31]
  wire [1:0] _GEN_450 = _T_36 ? rules_18_io_Cache_out_0_State : _GEN_425; // @[german.scala 381:29 382:17]
  wire  _GEN_451 = _T_36 ? rules_18_io_Cache_out_0_Data : _GEN_426; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_452 = _T_36 ? rules_18_io_Cache_out_1_State : _GEN_427; // @[german.scala 381:29 382:17]
  wire  _GEN_453 = _T_36 ? rules_18_io_Cache_out_1_Data : _GEN_428; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_454 = _T_36 ? rules_18_io_Chan1_out_0_Cmd : _GEN_429; // @[german.scala 381:29 383:17]
  wire  _GEN_455 = _T_36 ? rules_18_io_Chan1_out_0_Data : _GEN_430; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_456 = _T_36 ? rules_18_io_Chan1_out_1_Cmd : _GEN_431; // @[german.scala 381:29 383:17]
  wire  _GEN_457 = _T_36 ? rules_18_io_Chan1_out_1_Data : _GEN_432; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_458 = _T_36 ? rules_18_io_Chan2_out_0_Cmd : _GEN_433; // @[german.scala 381:29 384:17]
  wire  _GEN_459 = _T_36 ? rules_18_io_Chan2_out_0_Data : _GEN_434; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_460 = _T_36 ? rules_18_io_Chan2_out_1_Cmd : _GEN_435; // @[german.scala 381:29 384:17]
  wire  _GEN_461 = _T_36 ? rules_18_io_Chan2_out_1_Data : _GEN_436; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_462 = _T_36 ? rules_18_io_Chan3_out_0_Cmd : _GEN_437; // @[german.scala 381:29 385:17]
  wire  _GEN_463 = _T_36 ? rules_18_io_Chan3_out_0_Data : _GEN_438; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_464 = _T_36 ? rules_18_io_Chan3_out_1_Cmd : _GEN_439; // @[german.scala 381:29 385:17]
  wire  _GEN_465 = _T_36 ? rules_18_io_Chan3_out_1_Data : _GEN_440; // @[german.scala 381:29 385:17]
  wire  _GEN_466 = _T_36 ? rules_18_io_InvSet_out_0 : _GEN_441; // @[german.scala 381:29 386:18]
  wire  _GEN_467 = _T_36 ? rules_18_io_InvSet_out_1 : _GEN_442; // @[german.scala 381:29 386:18]
  wire  _GEN_468 = _T_36 ? rules_18_io_ShrSet_out_0 : _GEN_443; // @[german.scala 381:29 387:18]
  wire  _GEN_469 = _T_36 ? rules_18_io_ShrSet_out_1 : _GEN_444; // @[german.scala 381:29 387:18]
  wire  _GEN_470 = _T_36 ? rules_18_io_ExGntd_out : _GEN_445; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_471 = _T_36 ? rules_18_io_CurCmd_out : _GEN_446; // @[german.scala 381:29 389:18]
  wire  _GEN_472 = _T_36 ? rules_18_io_CurPtr_out : _GEN_447; // @[german.scala 381:29 390:18]
  wire  _GEN_473 = _T_36 ? rules_18_io_MemData_out : _GEN_448; // @[german.scala 381:29 391:19]
  wire  _GEN_474 = _T_36 ? rules_18_io_AuxData_out : _GEN_449; // @[german.scala 381:29 392:19]
  wire  _T_38 = io_en_a == 5'h13; // @[german.scala 380:31]
  wire [1:0] _GEN_475 = _T_38 ? rules_19_io_Cache_out_0_State : _GEN_450; // @[german.scala 381:29 382:17]
  wire  _GEN_476 = _T_38 ? rules_19_io_Cache_out_0_Data : _GEN_451; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_477 = _T_38 ? rules_19_io_Cache_out_1_State : _GEN_452; // @[german.scala 381:29 382:17]
  wire  _GEN_478 = _T_38 ? rules_19_io_Cache_out_1_Data : _GEN_453; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_479 = _T_38 ? rules_19_io_Chan1_out_0_Cmd : _GEN_454; // @[german.scala 381:29 383:17]
  wire  _GEN_480 = _T_38 ? rules_19_io_Chan1_out_0_Data : _GEN_455; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_481 = _T_38 ? rules_19_io_Chan1_out_1_Cmd : _GEN_456; // @[german.scala 381:29 383:17]
  wire  _GEN_482 = _T_38 ? rules_19_io_Chan1_out_1_Data : _GEN_457; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_483 = _T_38 ? rules_19_io_Chan2_out_0_Cmd : _GEN_458; // @[german.scala 381:29 384:17]
  wire  _GEN_484 = _T_38 ? rules_19_io_Chan2_out_0_Data : _GEN_459; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_485 = _T_38 ? rules_19_io_Chan2_out_1_Cmd : _GEN_460; // @[german.scala 381:29 384:17]
  wire  _GEN_486 = _T_38 ? rules_19_io_Chan2_out_1_Data : _GEN_461; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_487 = _T_38 ? rules_19_io_Chan3_out_0_Cmd : _GEN_462; // @[german.scala 381:29 385:17]
  wire  _GEN_488 = _T_38 ? rules_19_io_Chan3_out_0_Data : _GEN_463; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_489 = _T_38 ? rules_19_io_Chan3_out_1_Cmd : _GEN_464; // @[german.scala 381:29 385:17]
  wire  _GEN_490 = _T_38 ? rules_19_io_Chan3_out_1_Data : _GEN_465; // @[german.scala 381:29 385:17]
  wire  _GEN_491 = _T_38 ? rules_19_io_InvSet_out_0 : _GEN_466; // @[german.scala 381:29 386:18]
  wire  _GEN_492 = _T_38 ? rules_19_io_InvSet_out_1 : _GEN_467; // @[german.scala 381:29 386:18]
  wire  _GEN_493 = _T_38 ? rules_19_io_ShrSet_out_0 : _GEN_468; // @[german.scala 381:29 387:18]
  wire  _GEN_494 = _T_38 ? rules_19_io_ShrSet_out_1 : _GEN_469; // @[german.scala 381:29 387:18]
  wire  _GEN_495 = _T_38 ? rules_19_io_ExGntd_out : _GEN_470; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_496 = _T_38 ? rules_19_io_CurCmd_out : _GEN_471; // @[german.scala 381:29 389:18]
  wire  _GEN_497 = _T_38 ? rules_19_io_CurPtr_out : _GEN_472; // @[german.scala 381:29 390:18]
  wire  _GEN_498 = _T_38 ? rules_19_io_MemData_out : _GEN_473; // @[german.scala 381:29 391:19]
  wire  _GEN_499 = _T_38 ? rules_19_io_AuxData_out : _GEN_474; // @[german.scala 381:29 392:19]
  wire  _T_40 = io_en_a == 5'h14; // @[german.scala 380:31]
  wire [1:0] _GEN_500 = _T_40 ? rules_20_io_Cache_out_0_State : _GEN_475; // @[german.scala 381:29 382:17]
  wire  _GEN_501 = _T_40 ? rules_20_io_Cache_out_0_Data : _GEN_476; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_502 = _T_40 ? rules_20_io_Cache_out_1_State : _GEN_477; // @[german.scala 381:29 382:17]
  wire  _GEN_503 = _T_40 ? rules_20_io_Cache_out_1_Data : _GEN_478; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_504 = _T_40 ? rules_20_io_Chan1_out_0_Cmd : _GEN_479; // @[german.scala 381:29 383:17]
  wire  _GEN_505 = _T_40 ? rules_20_io_Chan1_out_0_Data : _GEN_480; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_506 = _T_40 ? rules_20_io_Chan1_out_1_Cmd : _GEN_481; // @[german.scala 381:29 383:17]
  wire  _GEN_507 = _T_40 ? rules_20_io_Chan1_out_1_Data : _GEN_482; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_508 = _T_40 ? rules_20_io_Chan2_out_0_Cmd : _GEN_483; // @[german.scala 381:29 384:17]
  wire  _GEN_509 = _T_40 ? rules_20_io_Chan2_out_0_Data : _GEN_484; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_510 = _T_40 ? rules_20_io_Chan2_out_1_Cmd : _GEN_485; // @[german.scala 381:29 384:17]
  wire  _GEN_511 = _T_40 ? rules_20_io_Chan2_out_1_Data : _GEN_486; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_512 = _T_40 ? rules_20_io_Chan3_out_0_Cmd : _GEN_487; // @[german.scala 381:29 385:17]
  wire  _GEN_513 = _T_40 ? rules_20_io_Chan3_out_0_Data : _GEN_488; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_514 = _T_40 ? rules_20_io_Chan3_out_1_Cmd : _GEN_489; // @[german.scala 381:29 385:17]
  wire  _GEN_515 = _T_40 ? rules_20_io_Chan3_out_1_Data : _GEN_490; // @[german.scala 381:29 385:17]
  wire  _GEN_516 = _T_40 ? rules_20_io_InvSet_out_0 : _GEN_491; // @[german.scala 381:29 386:18]
  wire  _GEN_517 = _T_40 ? rules_20_io_InvSet_out_1 : _GEN_492; // @[german.scala 381:29 386:18]
  wire  _GEN_518 = _T_40 ? rules_20_io_ShrSet_out_0 : _GEN_493; // @[german.scala 381:29 387:18]
  wire  _GEN_519 = _T_40 ? rules_20_io_ShrSet_out_1 : _GEN_494; // @[german.scala 381:29 387:18]
  wire  _GEN_520 = _T_40 ? rules_20_io_ExGntd_out : _GEN_495; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_521 = _T_40 ? rules_20_io_CurCmd_out : _GEN_496; // @[german.scala 381:29 389:18]
  wire  _GEN_522 = _T_40 ? rules_20_io_CurPtr_out : _GEN_497; // @[german.scala 381:29 390:18]
  wire  _GEN_523 = _T_40 ? rules_20_io_MemData_out : _GEN_498; // @[german.scala 381:29 391:19]
  wire  _GEN_524 = _T_40 ? rules_20_io_AuxData_out : _GEN_499; // @[german.scala 381:29 392:19]
  wire  _T_42 = io_en_a == 5'h15; // @[german.scala 380:31]
  wire [1:0] _GEN_525 = _T_42 ? rules_21_io_Cache_out_0_State : _GEN_500; // @[german.scala 381:29 382:17]
  wire  _GEN_526 = _T_42 ? rules_21_io_Cache_out_0_Data : _GEN_501; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_527 = _T_42 ? rules_21_io_Cache_out_1_State : _GEN_502; // @[german.scala 381:29 382:17]
  wire  _GEN_528 = _T_42 ? rules_21_io_Cache_out_1_Data : _GEN_503; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_529 = _T_42 ? rules_21_io_Chan1_out_0_Cmd : _GEN_504; // @[german.scala 381:29 383:17]
  wire  _GEN_530 = _T_42 ? rules_21_io_Chan1_out_0_Data : _GEN_505; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_531 = _T_42 ? rules_21_io_Chan1_out_1_Cmd : _GEN_506; // @[german.scala 381:29 383:17]
  wire  _GEN_532 = _T_42 ? rules_21_io_Chan1_out_1_Data : _GEN_507; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_533 = _T_42 ? rules_21_io_Chan2_out_0_Cmd : _GEN_508; // @[german.scala 381:29 384:17]
  wire  _GEN_534 = _T_42 ? rules_21_io_Chan2_out_0_Data : _GEN_509; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_535 = _T_42 ? rules_21_io_Chan2_out_1_Cmd : _GEN_510; // @[german.scala 381:29 384:17]
  wire  _GEN_536 = _T_42 ? rules_21_io_Chan2_out_1_Data : _GEN_511; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_537 = _T_42 ? rules_21_io_Chan3_out_0_Cmd : _GEN_512; // @[german.scala 381:29 385:17]
  wire  _GEN_538 = _T_42 ? rules_21_io_Chan3_out_0_Data : _GEN_513; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_539 = _T_42 ? rules_21_io_Chan3_out_1_Cmd : _GEN_514; // @[german.scala 381:29 385:17]
  wire  _GEN_540 = _T_42 ? rules_21_io_Chan3_out_1_Data : _GEN_515; // @[german.scala 381:29 385:17]
  wire  _GEN_541 = _T_42 ? rules_21_io_InvSet_out_0 : _GEN_516; // @[german.scala 381:29 386:18]
  wire  _GEN_542 = _T_42 ? rules_21_io_InvSet_out_1 : _GEN_517; // @[german.scala 381:29 386:18]
  wire  _GEN_543 = _T_42 ? rules_21_io_ShrSet_out_0 : _GEN_518; // @[german.scala 381:29 387:18]
  wire  _GEN_544 = _T_42 ? rules_21_io_ShrSet_out_1 : _GEN_519; // @[german.scala 381:29 387:18]
  wire  _GEN_545 = _T_42 ? rules_21_io_ExGntd_out : _GEN_520; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_546 = _T_42 ? rules_21_io_CurCmd_out : _GEN_521; // @[german.scala 381:29 389:18]
  wire  _GEN_547 = _T_42 ? rules_21_io_CurPtr_out : _GEN_522; // @[german.scala 381:29 390:18]
  wire  _GEN_548 = _T_42 ? rules_21_io_MemData_out : _GEN_523; // @[german.scala 381:29 391:19]
  wire  _GEN_549 = _T_42 ? rules_21_io_AuxData_out : _GEN_524; // @[german.scala 381:29 392:19]
  wire  _T_44 = io_en_a == 5'h16; // @[german.scala 380:31]
  wire [1:0] _GEN_550 = _T_44 ? rules_22_io_Cache_out_0_State : _GEN_525; // @[german.scala 381:29 382:17]
  wire  _GEN_551 = _T_44 ? rules_22_io_Cache_out_0_Data : _GEN_526; // @[german.scala 381:29 382:17]
  wire [1:0] _GEN_552 = _T_44 ? rules_22_io_Cache_out_1_State : _GEN_527; // @[german.scala 381:29 382:17]
  wire  _GEN_553 = _T_44 ? rules_22_io_Cache_out_1_Data : _GEN_528; // @[german.scala 381:29 382:17]
  wire [2:0] _GEN_554 = _T_44 ? rules_22_io_Chan1_out_0_Cmd : _GEN_529; // @[german.scala 381:29 383:17]
  wire  _GEN_555 = _T_44 ? rules_22_io_Chan1_out_0_Data : _GEN_530; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_556 = _T_44 ? rules_22_io_Chan1_out_1_Cmd : _GEN_531; // @[german.scala 381:29 383:17]
  wire  _GEN_557 = _T_44 ? rules_22_io_Chan1_out_1_Data : _GEN_532; // @[german.scala 381:29 383:17]
  wire [2:0] _GEN_558 = _T_44 ? rules_22_io_Chan2_out_0_Cmd : _GEN_533; // @[german.scala 381:29 384:17]
  wire  _GEN_559 = _T_44 ? rules_22_io_Chan2_out_0_Data : _GEN_534; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_560 = _T_44 ? rules_22_io_Chan2_out_1_Cmd : _GEN_535; // @[german.scala 381:29 384:17]
  wire  _GEN_561 = _T_44 ? rules_22_io_Chan2_out_1_Data : _GEN_536; // @[german.scala 381:29 384:17]
  wire [2:0] _GEN_562 = _T_44 ? rules_22_io_Chan3_out_0_Cmd : _GEN_537; // @[german.scala 381:29 385:17]
  wire  _GEN_563 = _T_44 ? rules_22_io_Chan3_out_0_Data : _GEN_538; // @[german.scala 381:29 385:17]
  wire [2:0] _GEN_564 = _T_44 ? rules_22_io_Chan3_out_1_Cmd : _GEN_539; // @[german.scala 381:29 385:17]
  wire  _GEN_565 = _T_44 ? rules_22_io_Chan3_out_1_Data : _GEN_540; // @[german.scala 381:29 385:17]
  wire  _GEN_566 = _T_44 ? rules_22_io_InvSet_out_0 : _GEN_541; // @[german.scala 381:29 386:18]
  wire  _GEN_567 = _T_44 ? rules_22_io_InvSet_out_1 : _GEN_542; // @[german.scala 381:29 386:18]
  wire  _GEN_568 = _T_44 ? rules_22_io_ShrSet_out_0 : _GEN_543; // @[german.scala 381:29 387:18]
  wire  _GEN_569 = _T_44 ? rules_22_io_ShrSet_out_1 : _GEN_544; // @[german.scala 381:29 387:18]
  wire  _GEN_570 = _T_44 ? rules_22_io_ExGntd_out : _GEN_545; // @[german.scala 381:29 388:18]
  wire [2:0] _GEN_571 = _T_44 ? rules_22_io_CurCmd_out : _GEN_546; // @[german.scala 381:29 389:18]
  wire  _GEN_572 = _T_44 ? rules_22_io_CurPtr_out : _GEN_547; // @[german.scala 381:29 390:18]
  wire  _GEN_573 = _T_44 ? rules_22_io_MemData_out : _GEN_548; // @[german.scala 381:29 391:19]
  wire  _GEN_574 = _T_44 ? rules_22_io_AuxData_out : _GEN_549; // @[german.scala 381:29 392:19]
  wire  _T_46 = io_en_a == 5'h17; // @[german.scala 380:31]
  wire  _T_48 = io_en_a == 5'h18; // @[german.scala 380:31]
  wire  _T_50 = io_en_a == 5'h19; // @[german.scala 380:31]
  wire  _T_67 = ~reset; // @[german.scala 399:13]
  rule_Store rules_0 ( // @[german.scala 320:22]
    .io_en_r(rules_0_io_en_r),
    .io_Cache_in_0_State(rules_0_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_0_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_0_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_0_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_0_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_0_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_0_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_0_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_0_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_0_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_0_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_0_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_0_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_0_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_0_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_0_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_0_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_0_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_0_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_0_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_0_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_0_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_0_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_0_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_0_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_0_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_0_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_0_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_0_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_0_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_0_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_0_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_0_io_InvSet_in_0),
    .io_InvSet_in_1(rules_0_io_InvSet_in_1),
    .io_InvSet_out_0(rules_0_io_InvSet_out_0),
    .io_InvSet_out_1(rules_0_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_0_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_0_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_0_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_0_io_ShrSet_out_1),
    .io_ExGntd_in(rules_0_io_ExGntd_in),
    .io_ExGntd_out(rules_0_io_ExGntd_out),
    .io_CurCmd_in(rules_0_io_CurCmd_in),
    .io_CurCmd_out(rules_0_io_CurCmd_out),
    .io_CurPtr_in(rules_0_io_CurPtr_in),
    .io_CurPtr_out(rules_0_io_CurPtr_out),
    .io_MemData_in(rules_0_io_MemData_in),
    .io_MemData_out(rules_0_io_MemData_out),
    .io_AuxData_in(rules_0_io_AuxData_in),
    .io_AuxData_out(rules_0_io_AuxData_out)
  );
  rule_Store_1 rules_1 ( // @[german.scala 320:22]
    .io_en_r(rules_1_io_en_r),
    .io_Cache_in_0_State(rules_1_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_1_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_1_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_1_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_1_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_1_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_1_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_1_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_1_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_1_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_1_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_1_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_1_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_1_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_1_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_1_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_1_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_1_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_1_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_1_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_1_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_1_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_1_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_1_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_1_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_1_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_1_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_1_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_1_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_1_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_1_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_1_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_1_io_InvSet_in_0),
    .io_InvSet_in_1(rules_1_io_InvSet_in_1),
    .io_InvSet_out_0(rules_1_io_InvSet_out_0),
    .io_InvSet_out_1(rules_1_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_1_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_1_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_1_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_1_io_ShrSet_out_1),
    .io_ExGntd_in(rules_1_io_ExGntd_in),
    .io_ExGntd_out(rules_1_io_ExGntd_out),
    .io_CurCmd_in(rules_1_io_CurCmd_in),
    .io_CurCmd_out(rules_1_io_CurCmd_out),
    .io_CurPtr_in(rules_1_io_CurPtr_in),
    .io_CurPtr_out(rules_1_io_CurPtr_out),
    .io_MemData_in(rules_1_io_MemData_in),
    .io_MemData_out(rules_1_io_MemData_out),
    .io_AuxData_in(rules_1_io_AuxData_in),
    .io_AuxData_out(rules_1_io_AuxData_out)
  );
  rule_Store_2 rules_2 ( // @[german.scala 320:22]
    .io_en_r(rules_2_io_en_r),
    .io_Cache_in_0_State(rules_2_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_2_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_2_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_2_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_2_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_2_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_2_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_2_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_2_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_2_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_2_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_2_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_2_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_2_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_2_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_2_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_2_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_2_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_2_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_2_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_2_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_2_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_2_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_2_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_2_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_2_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_2_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_2_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_2_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_2_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_2_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_2_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_2_io_InvSet_in_0),
    .io_InvSet_in_1(rules_2_io_InvSet_in_1),
    .io_InvSet_out_0(rules_2_io_InvSet_out_0),
    .io_InvSet_out_1(rules_2_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_2_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_2_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_2_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_2_io_ShrSet_out_1),
    .io_ExGntd_in(rules_2_io_ExGntd_in),
    .io_ExGntd_out(rules_2_io_ExGntd_out),
    .io_CurCmd_in(rules_2_io_CurCmd_in),
    .io_CurCmd_out(rules_2_io_CurCmd_out),
    .io_CurPtr_in(rules_2_io_CurPtr_in),
    .io_CurPtr_out(rules_2_io_CurPtr_out),
    .io_MemData_in(rules_2_io_MemData_in),
    .io_MemData_out(rules_2_io_MemData_out),
    .io_AuxData_in(rules_2_io_AuxData_in),
    .io_AuxData_out(rules_2_io_AuxData_out)
  );
  rule_Store_3 rules_3 ( // @[german.scala 320:22]
    .io_en_r(rules_3_io_en_r),
    .io_Cache_in_0_State(rules_3_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_3_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_3_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_3_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_3_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_3_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_3_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_3_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_3_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_3_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_3_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_3_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_3_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_3_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_3_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_3_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_3_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_3_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_3_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_3_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_3_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_3_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_3_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_3_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_3_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_3_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_3_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_3_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_3_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_3_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_3_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_3_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_3_io_InvSet_in_0),
    .io_InvSet_in_1(rules_3_io_InvSet_in_1),
    .io_InvSet_out_0(rules_3_io_InvSet_out_0),
    .io_InvSet_out_1(rules_3_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_3_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_3_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_3_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_3_io_ShrSet_out_1),
    .io_ExGntd_in(rules_3_io_ExGntd_in),
    .io_ExGntd_out(rules_3_io_ExGntd_out),
    .io_CurCmd_in(rules_3_io_CurCmd_in),
    .io_CurCmd_out(rules_3_io_CurCmd_out),
    .io_CurPtr_in(rules_3_io_CurPtr_in),
    .io_CurPtr_out(rules_3_io_CurPtr_out),
    .io_MemData_in(rules_3_io_MemData_in),
    .io_MemData_out(rules_3_io_MemData_out),
    .io_AuxData_in(rules_3_io_AuxData_in),
    .io_AuxData_out(rules_3_io_AuxData_out)
  );
  rule_SendReqS rules_4 ( // @[german.scala 325:20]
    .io_en_r(rules_4_io_en_r),
    .io_Cache_in_0_State(rules_4_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_4_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_4_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_4_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_4_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_4_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_4_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_4_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_4_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_4_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_4_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_4_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_4_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_4_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_4_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_4_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_4_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_4_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_4_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_4_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_4_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_4_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_4_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_4_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_4_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_4_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_4_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_4_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_4_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_4_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_4_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_4_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_4_io_InvSet_in_0),
    .io_InvSet_in_1(rules_4_io_InvSet_in_1),
    .io_InvSet_out_0(rules_4_io_InvSet_out_0),
    .io_InvSet_out_1(rules_4_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_4_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_4_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_4_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_4_io_ShrSet_out_1),
    .io_ExGntd_in(rules_4_io_ExGntd_in),
    .io_ExGntd_out(rules_4_io_ExGntd_out),
    .io_CurCmd_in(rules_4_io_CurCmd_in),
    .io_CurCmd_out(rules_4_io_CurCmd_out),
    .io_CurPtr_in(rules_4_io_CurPtr_in),
    .io_CurPtr_out(rules_4_io_CurPtr_out),
    .io_MemData_in(rules_4_io_MemData_in),
    .io_MemData_out(rules_4_io_MemData_out),
    .io_AuxData_in(rules_4_io_AuxData_in),
    .io_AuxData_out(rules_4_io_AuxData_out)
  );
  rule_SendReqS_1 rules_5 ( // @[german.scala 325:20]
    .io_en_r(rules_5_io_en_r),
    .io_Cache_in_0_State(rules_5_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_5_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_5_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_5_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_5_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_5_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_5_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_5_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_5_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_5_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_5_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_5_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_5_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_5_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_5_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_5_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_5_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_5_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_5_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_5_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_5_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_5_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_5_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_5_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_5_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_5_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_5_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_5_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_5_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_5_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_5_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_5_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_5_io_InvSet_in_0),
    .io_InvSet_in_1(rules_5_io_InvSet_in_1),
    .io_InvSet_out_0(rules_5_io_InvSet_out_0),
    .io_InvSet_out_1(rules_5_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_5_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_5_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_5_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_5_io_ShrSet_out_1),
    .io_ExGntd_in(rules_5_io_ExGntd_in),
    .io_ExGntd_out(rules_5_io_ExGntd_out),
    .io_CurCmd_in(rules_5_io_CurCmd_in),
    .io_CurCmd_out(rules_5_io_CurCmd_out),
    .io_CurPtr_in(rules_5_io_CurPtr_in),
    .io_CurPtr_out(rules_5_io_CurPtr_out),
    .io_MemData_in(rules_5_io_MemData_in),
    .io_MemData_out(rules_5_io_MemData_out),
    .io_AuxData_in(rules_5_io_AuxData_in),
    .io_AuxData_out(rules_5_io_AuxData_out)
  );
  rule_SendReqE rules_6 ( // @[german.scala 329:20]
    .io_en_r(rules_6_io_en_r),
    .io_Cache_in_0_State(rules_6_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_6_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_6_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_6_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_6_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_6_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_6_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_6_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_6_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_6_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_6_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_6_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_6_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_6_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_6_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_6_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_6_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_6_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_6_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_6_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_6_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_6_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_6_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_6_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_6_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_6_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_6_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_6_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_6_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_6_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_6_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_6_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_6_io_InvSet_in_0),
    .io_InvSet_in_1(rules_6_io_InvSet_in_1),
    .io_InvSet_out_0(rules_6_io_InvSet_out_0),
    .io_InvSet_out_1(rules_6_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_6_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_6_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_6_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_6_io_ShrSet_out_1),
    .io_ExGntd_in(rules_6_io_ExGntd_in),
    .io_ExGntd_out(rules_6_io_ExGntd_out),
    .io_CurCmd_in(rules_6_io_CurCmd_in),
    .io_CurCmd_out(rules_6_io_CurCmd_out),
    .io_CurPtr_in(rules_6_io_CurPtr_in),
    .io_CurPtr_out(rules_6_io_CurPtr_out),
    .io_MemData_in(rules_6_io_MemData_in),
    .io_MemData_out(rules_6_io_MemData_out),
    .io_AuxData_in(rules_6_io_AuxData_in),
    .io_AuxData_out(rules_6_io_AuxData_out)
  );
  rule_SendReqE_1 rules_7 ( // @[german.scala 329:20]
    .io_en_r(rules_7_io_en_r),
    .io_Cache_in_0_State(rules_7_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_7_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_7_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_7_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_7_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_7_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_7_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_7_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_7_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_7_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_7_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_7_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_7_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_7_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_7_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_7_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_7_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_7_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_7_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_7_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_7_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_7_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_7_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_7_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_7_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_7_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_7_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_7_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_7_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_7_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_7_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_7_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_7_io_InvSet_in_0),
    .io_InvSet_in_1(rules_7_io_InvSet_in_1),
    .io_InvSet_out_0(rules_7_io_InvSet_out_0),
    .io_InvSet_out_1(rules_7_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_7_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_7_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_7_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_7_io_ShrSet_out_1),
    .io_ExGntd_in(rules_7_io_ExGntd_in),
    .io_ExGntd_out(rules_7_io_ExGntd_out),
    .io_CurCmd_in(rules_7_io_CurCmd_in),
    .io_CurCmd_out(rules_7_io_CurCmd_out),
    .io_CurPtr_in(rules_7_io_CurPtr_in),
    .io_CurPtr_out(rules_7_io_CurPtr_out),
    .io_MemData_in(rules_7_io_MemData_in),
    .io_MemData_out(rules_7_io_MemData_out),
    .io_AuxData_in(rules_7_io_AuxData_in),
    .io_AuxData_out(rules_7_io_AuxData_out)
  );
  rule_RecvReqS rules_8 ( // @[german.scala 333:20]
    .io_en_r(rules_8_io_en_r),
    .io_Cache_in_0_State(rules_8_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_8_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_8_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_8_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_8_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_8_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_8_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_8_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_8_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_8_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_8_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_8_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_8_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_8_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_8_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_8_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_8_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_8_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_8_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_8_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_8_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_8_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_8_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_8_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_8_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_8_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_8_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_8_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_8_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_8_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_8_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_8_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_8_io_InvSet_in_0),
    .io_InvSet_in_1(rules_8_io_InvSet_in_1),
    .io_InvSet_out_0(rules_8_io_InvSet_out_0),
    .io_InvSet_out_1(rules_8_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_8_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_8_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_8_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_8_io_ShrSet_out_1),
    .io_ExGntd_in(rules_8_io_ExGntd_in),
    .io_ExGntd_out(rules_8_io_ExGntd_out),
    .io_CurCmd_in(rules_8_io_CurCmd_in),
    .io_CurCmd_out(rules_8_io_CurCmd_out),
    .io_CurPtr_in(rules_8_io_CurPtr_in),
    .io_CurPtr_out(rules_8_io_CurPtr_out),
    .io_MemData_in(rules_8_io_MemData_in),
    .io_MemData_out(rules_8_io_MemData_out),
    .io_AuxData_in(rules_8_io_AuxData_in),
    .io_AuxData_out(rules_8_io_AuxData_out)
  );
  rule_RecvReqS_1 rules_9 ( // @[german.scala 333:20]
    .io_en_r(rules_9_io_en_r),
    .io_Cache_in_0_State(rules_9_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_9_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_9_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_9_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_9_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_9_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_9_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_9_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_9_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_9_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_9_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_9_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_9_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_9_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_9_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_9_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_9_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_9_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_9_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_9_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_9_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_9_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_9_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_9_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_9_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_9_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_9_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_9_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_9_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_9_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_9_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_9_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_9_io_InvSet_in_0),
    .io_InvSet_in_1(rules_9_io_InvSet_in_1),
    .io_InvSet_out_0(rules_9_io_InvSet_out_0),
    .io_InvSet_out_1(rules_9_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_9_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_9_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_9_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_9_io_ShrSet_out_1),
    .io_ExGntd_in(rules_9_io_ExGntd_in),
    .io_ExGntd_out(rules_9_io_ExGntd_out),
    .io_CurCmd_in(rules_9_io_CurCmd_in),
    .io_CurCmd_out(rules_9_io_CurCmd_out),
    .io_CurPtr_in(rules_9_io_CurPtr_in),
    .io_CurPtr_out(rules_9_io_CurPtr_out),
    .io_MemData_in(rules_9_io_MemData_in),
    .io_MemData_out(rules_9_io_MemData_out),
    .io_AuxData_in(rules_9_io_AuxData_in),
    .io_AuxData_out(rules_9_io_AuxData_out)
  );
  rule_RecvReqE rules_10 ( // @[german.scala 337:20]
    .io_en_r(rules_10_io_en_r),
    .io_Cache_in_0_State(rules_10_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_10_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_10_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_10_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_10_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_10_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_10_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_10_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_10_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_10_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_10_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_10_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_10_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_10_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_10_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_10_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_10_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_10_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_10_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_10_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_10_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_10_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_10_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_10_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_10_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_10_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_10_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_10_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_10_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_10_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_10_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_10_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_10_io_InvSet_in_0),
    .io_InvSet_in_1(rules_10_io_InvSet_in_1),
    .io_InvSet_out_0(rules_10_io_InvSet_out_0),
    .io_InvSet_out_1(rules_10_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_10_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_10_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_10_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_10_io_ShrSet_out_1),
    .io_ExGntd_in(rules_10_io_ExGntd_in),
    .io_ExGntd_out(rules_10_io_ExGntd_out),
    .io_CurCmd_in(rules_10_io_CurCmd_in),
    .io_CurCmd_out(rules_10_io_CurCmd_out),
    .io_CurPtr_in(rules_10_io_CurPtr_in),
    .io_CurPtr_out(rules_10_io_CurPtr_out),
    .io_MemData_in(rules_10_io_MemData_in),
    .io_MemData_out(rules_10_io_MemData_out),
    .io_AuxData_in(rules_10_io_AuxData_in),
    .io_AuxData_out(rules_10_io_AuxData_out)
  );
  rule_RecvReqE_1 rules_11 ( // @[german.scala 337:20]
    .io_en_r(rules_11_io_en_r),
    .io_Cache_in_0_State(rules_11_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_11_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_11_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_11_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_11_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_11_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_11_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_11_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_11_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_11_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_11_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_11_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_11_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_11_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_11_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_11_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_11_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_11_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_11_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_11_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_11_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_11_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_11_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_11_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_11_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_11_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_11_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_11_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_11_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_11_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_11_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_11_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_11_io_InvSet_in_0),
    .io_InvSet_in_1(rules_11_io_InvSet_in_1),
    .io_InvSet_out_0(rules_11_io_InvSet_out_0),
    .io_InvSet_out_1(rules_11_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_11_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_11_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_11_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_11_io_ShrSet_out_1),
    .io_ExGntd_in(rules_11_io_ExGntd_in),
    .io_ExGntd_out(rules_11_io_ExGntd_out),
    .io_CurCmd_in(rules_11_io_CurCmd_in),
    .io_CurCmd_out(rules_11_io_CurCmd_out),
    .io_CurPtr_in(rules_11_io_CurPtr_in),
    .io_CurPtr_out(rules_11_io_CurPtr_out),
    .io_MemData_in(rules_11_io_MemData_in),
    .io_MemData_out(rules_11_io_MemData_out),
    .io_AuxData_in(rules_11_io_AuxData_in),
    .io_AuxData_out(rules_11_io_AuxData_out)
  );
  rule_SendInv rules_12 ( // @[german.scala 341:20]
    .io_en_r(rules_12_io_en_r),
    .io_Cache_in_0_State(rules_12_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_12_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_12_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_12_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_12_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_12_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_12_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_12_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_12_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_12_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_12_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_12_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_12_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_12_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_12_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_12_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_12_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_12_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_12_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_12_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_12_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_12_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_12_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_12_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_12_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_12_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_12_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_12_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_12_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_12_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_12_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_12_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_12_io_InvSet_in_0),
    .io_InvSet_in_1(rules_12_io_InvSet_in_1),
    .io_InvSet_out_0(rules_12_io_InvSet_out_0),
    .io_InvSet_out_1(rules_12_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_12_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_12_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_12_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_12_io_ShrSet_out_1),
    .io_ExGntd_in(rules_12_io_ExGntd_in),
    .io_ExGntd_out(rules_12_io_ExGntd_out),
    .io_CurCmd_in(rules_12_io_CurCmd_in),
    .io_CurCmd_out(rules_12_io_CurCmd_out),
    .io_CurPtr_in(rules_12_io_CurPtr_in),
    .io_CurPtr_out(rules_12_io_CurPtr_out),
    .io_MemData_in(rules_12_io_MemData_in),
    .io_MemData_out(rules_12_io_MemData_out),
    .io_AuxData_in(rules_12_io_AuxData_in),
    .io_AuxData_out(rules_12_io_AuxData_out)
  );
  rule_SendInv_1 rules_13 ( // @[german.scala 341:20]
    .io_en_r(rules_13_io_en_r),
    .io_Cache_in_0_State(rules_13_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_13_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_13_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_13_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_13_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_13_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_13_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_13_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_13_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_13_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_13_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_13_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_13_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_13_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_13_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_13_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_13_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_13_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_13_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_13_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_13_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_13_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_13_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_13_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_13_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_13_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_13_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_13_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_13_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_13_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_13_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_13_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_13_io_InvSet_in_0),
    .io_InvSet_in_1(rules_13_io_InvSet_in_1),
    .io_InvSet_out_0(rules_13_io_InvSet_out_0),
    .io_InvSet_out_1(rules_13_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_13_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_13_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_13_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_13_io_ShrSet_out_1),
    .io_ExGntd_in(rules_13_io_ExGntd_in),
    .io_ExGntd_out(rules_13_io_ExGntd_out),
    .io_CurCmd_in(rules_13_io_CurCmd_in),
    .io_CurCmd_out(rules_13_io_CurCmd_out),
    .io_CurPtr_in(rules_13_io_CurPtr_in),
    .io_CurPtr_out(rules_13_io_CurPtr_out),
    .io_MemData_in(rules_13_io_MemData_in),
    .io_MemData_out(rules_13_io_MemData_out),
    .io_AuxData_in(rules_13_io_AuxData_in),
    .io_AuxData_out(rules_13_io_AuxData_out)
  );
  rule_SendGntS rules_14 ( // @[german.scala 345:20]
    .io_en_r(rules_14_io_en_r),
    .io_Cache_in_0_State(rules_14_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_14_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_14_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_14_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_14_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_14_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_14_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_14_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_14_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_14_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_14_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_14_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_14_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_14_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_14_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_14_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_14_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_14_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_14_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_14_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_14_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_14_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_14_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_14_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_14_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_14_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_14_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_14_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_14_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_14_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_14_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_14_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_14_io_InvSet_in_0),
    .io_InvSet_in_1(rules_14_io_InvSet_in_1),
    .io_InvSet_out_0(rules_14_io_InvSet_out_0),
    .io_InvSet_out_1(rules_14_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_14_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_14_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_14_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_14_io_ShrSet_out_1),
    .io_ExGntd_in(rules_14_io_ExGntd_in),
    .io_ExGntd_out(rules_14_io_ExGntd_out),
    .io_CurCmd_in(rules_14_io_CurCmd_in),
    .io_CurCmd_out(rules_14_io_CurCmd_out),
    .io_CurPtr_in(rules_14_io_CurPtr_in),
    .io_CurPtr_out(rules_14_io_CurPtr_out),
    .io_MemData_in(rules_14_io_MemData_in),
    .io_MemData_out(rules_14_io_MemData_out),
    .io_AuxData_in(rules_14_io_AuxData_in),
    .io_AuxData_out(rules_14_io_AuxData_out)
  );
  rule_SendGntS_1 rules_15 ( // @[german.scala 345:20]
    .io_en_r(rules_15_io_en_r),
    .io_Cache_in_0_State(rules_15_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_15_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_15_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_15_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_15_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_15_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_15_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_15_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_15_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_15_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_15_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_15_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_15_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_15_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_15_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_15_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_15_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_15_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_15_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_15_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_15_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_15_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_15_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_15_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_15_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_15_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_15_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_15_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_15_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_15_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_15_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_15_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_15_io_InvSet_in_0),
    .io_InvSet_in_1(rules_15_io_InvSet_in_1),
    .io_InvSet_out_0(rules_15_io_InvSet_out_0),
    .io_InvSet_out_1(rules_15_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_15_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_15_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_15_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_15_io_ShrSet_out_1),
    .io_ExGntd_in(rules_15_io_ExGntd_in),
    .io_ExGntd_out(rules_15_io_ExGntd_out),
    .io_CurCmd_in(rules_15_io_CurCmd_in),
    .io_CurCmd_out(rules_15_io_CurCmd_out),
    .io_CurPtr_in(rules_15_io_CurPtr_in),
    .io_CurPtr_out(rules_15_io_CurPtr_out),
    .io_MemData_in(rules_15_io_MemData_in),
    .io_MemData_out(rules_15_io_MemData_out),
    .io_AuxData_in(rules_15_io_AuxData_in),
    .io_AuxData_out(rules_15_io_AuxData_out)
  );
  rule_SendGntE rules_16 ( // @[german.scala 349:20]
    .io_Cache_in_0_State(rules_16_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_16_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_16_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_16_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_16_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_16_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_16_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_16_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_16_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_16_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_16_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_16_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_16_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_16_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_16_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_16_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_16_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_16_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_16_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_16_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_16_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_16_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_16_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_16_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_16_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_16_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_16_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_16_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_16_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_16_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_16_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_16_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_16_io_InvSet_in_0),
    .io_InvSet_in_1(rules_16_io_InvSet_in_1),
    .io_InvSet_out_0(rules_16_io_InvSet_out_0),
    .io_InvSet_out_1(rules_16_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_16_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_16_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_16_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_16_io_ShrSet_out_1),
    .io_ExGntd_in(rules_16_io_ExGntd_in),
    .io_ExGntd_out(rules_16_io_ExGntd_out),
    .io_CurCmd_in(rules_16_io_CurCmd_in),
    .io_CurCmd_out(rules_16_io_CurCmd_out),
    .io_CurPtr_in(rules_16_io_CurPtr_in),
    .io_CurPtr_out(rules_16_io_CurPtr_out),
    .io_MemData_in(rules_16_io_MemData_in),
    .io_MemData_out(rules_16_io_MemData_out),
    .io_AuxData_in(rules_16_io_AuxData_in),
    .io_AuxData_out(rules_16_io_AuxData_out)
  );
  rule_SendGntE_1 rules_17 ( // @[german.scala 349:20]
    .io_Cache_in_0_State(rules_17_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_17_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_17_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_17_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_17_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_17_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_17_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_17_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_17_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_17_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_17_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_17_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_17_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_17_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_17_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_17_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_17_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_17_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_17_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_17_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_17_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_17_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_17_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_17_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_17_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_17_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_17_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_17_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_17_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_17_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_17_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_17_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_17_io_InvSet_in_0),
    .io_InvSet_in_1(rules_17_io_InvSet_in_1),
    .io_InvSet_out_0(rules_17_io_InvSet_out_0),
    .io_InvSet_out_1(rules_17_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_17_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_17_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_17_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_17_io_ShrSet_out_1),
    .io_ExGntd_in(rules_17_io_ExGntd_in),
    .io_ExGntd_out(rules_17_io_ExGntd_out),
    .io_CurCmd_in(rules_17_io_CurCmd_in),
    .io_CurCmd_out(rules_17_io_CurCmd_out),
    .io_CurPtr_in(rules_17_io_CurPtr_in),
    .io_CurPtr_out(rules_17_io_CurPtr_out),
    .io_MemData_in(rules_17_io_MemData_in),
    .io_MemData_out(rules_17_io_MemData_out),
    .io_AuxData_in(rules_17_io_AuxData_in),
    .io_AuxData_out(rules_17_io_AuxData_out)
  );
  rule_RecvGntS rules_18 ( // @[german.scala 353:20]
    .io_en_r(rules_18_io_en_r),
    .io_Cache_in_0_State(rules_18_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_18_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_18_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_18_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_18_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_18_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_18_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_18_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_18_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_18_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_18_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_18_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_18_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_18_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_18_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_18_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_18_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_18_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_18_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_18_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_18_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_18_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_18_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_18_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_18_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_18_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_18_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_18_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_18_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_18_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_18_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_18_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_18_io_InvSet_in_0),
    .io_InvSet_in_1(rules_18_io_InvSet_in_1),
    .io_InvSet_out_0(rules_18_io_InvSet_out_0),
    .io_InvSet_out_1(rules_18_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_18_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_18_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_18_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_18_io_ShrSet_out_1),
    .io_ExGntd_in(rules_18_io_ExGntd_in),
    .io_ExGntd_out(rules_18_io_ExGntd_out),
    .io_CurCmd_in(rules_18_io_CurCmd_in),
    .io_CurCmd_out(rules_18_io_CurCmd_out),
    .io_CurPtr_in(rules_18_io_CurPtr_in),
    .io_CurPtr_out(rules_18_io_CurPtr_out),
    .io_MemData_in(rules_18_io_MemData_in),
    .io_MemData_out(rules_18_io_MemData_out),
    .io_AuxData_in(rules_18_io_AuxData_in),
    .io_AuxData_out(rules_18_io_AuxData_out)
  );
  rule_RecvGntS_1 rules_19 ( // @[german.scala 353:20]
    .io_en_r(rules_19_io_en_r),
    .io_Cache_in_0_State(rules_19_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_19_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_19_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_19_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_19_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_19_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_19_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_19_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_19_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_19_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_19_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_19_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_19_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_19_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_19_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_19_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_19_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_19_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_19_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_19_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_19_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_19_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_19_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_19_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_19_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_19_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_19_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_19_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_19_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_19_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_19_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_19_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_19_io_InvSet_in_0),
    .io_InvSet_in_1(rules_19_io_InvSet_in_1),
    .io_InvSet_out_0(rules_19_io_InvSet_out_0),
    .io_InvSet_out_1(rules_19_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_19_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_19_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_19_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_19_io_ShrSet_out_1),
    .io_ExGntd_in(rules_19_io_ExGntd_in),
    .io_ExGntd_out(rules_19_io_ExGntd_out),
    .io_CurCmd_in(rules_19_io_CurCmd_in),
    .io_CurCmd_out(rules_19_io_CurCmd_out),
    .io_CurPtr_in(rules_19_io_CurPtr_in),
    .io_CurPtr_out(rules_19_io_CurPtr_out),
    .io_MemData_in(rules_19_io_MemData_in),
    .io_MemData_out(rules_19_io_MemData_out),
    .io_AuxData_in(rules_19_io_AuxData_in),
    .io_AuxData_out(rules_19_io_AuxData_out)
  );
  rule_RecvGntE rules_20 ( // @[german.scala 357:20]
    .io_en_r(rules_20_io_en_r),
    .io_Cache_in_0_State(rules_20_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_20_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_20_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_20_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_20_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_20_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_20_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_20_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_20_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_20_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_20_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_20_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_20_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_20_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_20_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_20_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_20_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_20_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_20_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_20_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_20_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_20_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_20_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_20_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_20_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_20_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_20_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_20_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_20_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_20_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_20_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_20_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_20_io_InvSet_in_0),
    .io_InvSet_in_1(rules_20_io_InvSet_in_1),
    .io_InvSet_out_0(rules_20_io_InvSet_out_0),
    .io_InvSet_out_1(rules_20_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_20_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_20_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_20_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_20_io_ShrSet_out_1),
    .io_ExGntd_in(rules_20_io_ExGntd_in),
    .io_ExGntd_out(rules_20_io_ExGntd_out),
    .io_CurCmd_in(rules_20_io_CurCmd_in),
    .io_CurCmd_out(rules_20_io_CurCmd_out),
    .io_CurPtr_in(rules_20_io_CurPtr_in),
    .io_CurPtr_out(rules_20_io_CurPtr_out),
    .io_MemData_in(rules_20_io_MemData_in),
    .io_MemData_out(rules_20_io_MemData_out),
    .io_AuxData_in(rules_20_io_AuxData_in),
    .io_AuxData_out(rules_20_io_AuxData_out)
  );
  rule_RecvGntE_1 rules_21 ( // @[german.scala 357:20]
    .io_en_r(rules_21_io_en_r),
    .io_Cache_in_0_State(rules_21_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_21_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_21_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_21_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_21_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_21_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_21_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_21_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_21_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_21_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_21_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_21_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_21_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_21_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_21_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_21_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_21_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_21_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_21_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_21_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_21_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_21_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_21_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_21_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_21_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_21_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_21_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_21_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_21_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_21_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_21_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_21_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_21_io_InvSet_in_0),
    .io_InvSet_in_1(rules_21_io_InvSet_in_1),
    .io_InvSet_out_0(rules_21_io_InvSet_out_0),
    .io_InvSet_out_1(rules_21_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_21_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_21_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_21_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_21_io_ShrSet_out_1),
    .io_ExGntd_in(rules_21_io_ExGntd_in),
    .io_ExGntd_out(rules_21_io_ExGntd_out),
    .io_CurCmd_in(rules_21_io_CurCmd_in),
    .io_CurCmd_out(rules_21_io_CurCmd_out),
    .io_CurPtr_in(rules_21_io_CurPtr_in),
    .io_CurPtr_out(rules_21_io_CurPtr_out),
    .io_MemData_in(rules_21_io_MemData_in),
    .io_MemData_out(rules_21_io_MemData_out),
    .io_AuxData_in(rules_21_io_AuxData_in),
    .io_AuxData_out(rules_21_io_AuxData_out)
  );
  rule_SendInvAck rules_22 ( // @[german.scala 361:20]
    .io_en_r(rules_22_io_en_r),
    .io_Cache_in_0_State(rules_22_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_22_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_22_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_22_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_22_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_22_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_22_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_22_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_22_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_22_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_22_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_22_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_22_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_22_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_22_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_22_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_22_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_22_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_22_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_22_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_22_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_22_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_22_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_22_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_22_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_22_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_22_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_22_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_22_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_22_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_22_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_22_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_22_io_InvSet_in_0),
    .io_InvSet_in_1(rules_22_io_InvSet_in_1),
    .io_InvSet_out_0(rules_22_io_InvSet_out_0),
    .io_InvSet_out_1(rules_22_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_22_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_22_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_22_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_22_io_ShrSet_out_1),
    .io_ExGntd_in(rules_22_io_ExGntd_in),
    .io_ExGntd_out(rules_22_io_ExGntd_out),
    .io_CurCmd_in(rules_22_io_CurCmd_in),
    .io_CurCmd_out(rules_22_io_CurCmd_out),
    .io_CurPtr_in(rules_22_io_CurPtr_in),
    .io_CurPtr_out(rules_22_io_CurPtr_out),
    .io_MemData_in(rules_22_io_MemData_in),
    .io_MemData_out(rules_22_io_MemData_out),
    .io_AuxData_in(rules_22_io_AuxData_in),
    .io_AuxData_out(rules_22_io_AuxData_out)
  );
  rule_SendInvAck_1 rules_23 ( // @[german.scala 361:20]
    .io_en_r(rules_23_io_en_r),
    .io_Cache_in_0_State(rules_23_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_23_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_23_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_23_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_23_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_23_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_23_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_23_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_23_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_23_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_23_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_23_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_23_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_23_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_23_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_23_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_23_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_23_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_23_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_23_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_23_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_23_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_23_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_23_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_23_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_23_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_23_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_23_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_23_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_23_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_23_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_23_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_23_io_InvSet_in_0),
    .io_InvSet_in_1(rules_23_io_InvSet_in_1),
    .io_InvSet_out_0(rules_23_io_InvSet_out_0),
    .io_InvSet_out_1(rules_23_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_23_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_23_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_23_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_23_io_ShrSet_out_1),
    .io_ExGntd_in(rules_23_io_ExGntd_in),
    .io_ExGntd_out(rules_23_io_ExGntd_out),
    .io_CurCmd_in(rules_23_io_CurCmd_in),
    .io_CurCmd_out(rules_23_io_CurCmd_out),
    .io_CurPtr_in(rules_23_io_CurPtr_in),
    .io_CurPtr_out(rules_23_io_CurPtr_out),
    .io_MemData_in(rules_23_io_MemData_in),
    .io_MemData_out(rules_23_io_MemData_out),
    .io_AuxData_in(rules_23_io_AuxData_in),
    .io_AuxData_out(rules_23_io_AuxData_out)
  );
  rule_RecvInvAck rules_24 ( // @[german.scala 365:20]
    .io_en_r(rules_24_io_en_r),
    .io_Cache_in_0_State(rules_24_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_24_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_24_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_24_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_24_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_24_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_24_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_24_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_24_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_24_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_24_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_24_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_24_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_24_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_24_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_24_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_24_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_24_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_24_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_24_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_24_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_24_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_24_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_24_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_24_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_24_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_24_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_24_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_24_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_24_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_24_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_24_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_24_io_InvSet_in_0),
    .io_InvSet_in_1(rules_24_io_InvSet_in_1),
    .io_InvSet_out_0(rules_24_io_InvSet_out_0),
    .io_InvSet_out_1(rules_24_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_24_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_24_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_24_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_24_io_ShrSet_out_1),
    .io_ExGntd_in(rules_24_io_ExGntd_in),
    .io_ExGntd_out(rules_24_io_ExGntd_out),
    .io_CurCmd_in(rules_24_io_CurCmd_in),
    .io_CurCmd_out(rules_24_io_CurCmd_out),
    .io_CurPtr_in(rules_24_io_CurPtr_in),
    .io_CurPtr_out(rules_24_io_CurPtr_out),
    .io_MemData_in(rules_24_io_MemData_in),
    .io_MemData_out(rules_24_io_MemData_out),
    .io_AuxData_in(rules_24_io_AuxData_in),
    .io_AuxData_out(rules_24_io_AuxData_out)
  );
  rule_RecvInvAck_1 rules_25 ( // @[german.scala 365:20]
    .io_en_r(rules_25_io_en_r),
    .io_Cache_in_0_State(rules_25_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_25_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_25_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_25_io_Cache_in_1_Data),
    .io_Cache_out_0_State(rules_25_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_25_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_25_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_25_io_Cache_out_1_Data),
    .io_Chan1_in_0_Cmd(rules_25_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_25_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_25_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_25_io_Chan1_in_1_Data),
    .io_Chan1_out_0_Cmd(rules_25_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_25_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_25_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_25_io_Chan1_out_1_Data),
    .io_Chan2_in_0_Cmd(rules_25_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_25_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_25_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_25_io_Chan2_in_1_Data),
    .io_Chan2_out_0_Cmd(rules_25_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_25_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_25_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_25_io_Chan2_out_1_Data),
    .io_Chan3_in_0_Cmd(rules_25_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_25_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_25_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_25_io_Chan3_in_1_Data),
    .io_Chan3_out_0_Cmd(rules_25_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_25_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_25_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_25_io_Chan3_out_1_Data),
    .io_InvSet_in_0(rules_25_io_InvSet_in_0),
    .io_InvSet_in_1(rules_25_io_InvSet_in_1),
    .io_InvSet_out_0(rules_25_io_InvSet_out_0),
    .io_InvSet_out_1(rules_25_io_InvSet_out_1),
    .io_ShrSet_in_0(rules_25_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_25_io_ShrSet_in_1),
    .io_ShrSet_out_0(rules_25_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_25_io_ShrSet_out_1),
    .io_ExGntd_in(rules_25_io_ExGntd_in),
    .io_ExGntd_out(rules_25_io_ExGntd_out),
    .io_CurCmd_in(rules_25_io_CurCmd_in),
    .io_CurCmd_out(rules_25_io_CurCmd_out),
    .io_CurPtr_in(rules_25_io_CurPtr_in),
    .io_CurPtr_out(rules_25_io_CurPtr_out),
    .io_MemData_in(rules_25_io_MemData_in),
    .io_MemData_out(rules_25_io_MemData_out),
    .io_AuxData_in(rules_25_io_AuxData_in),
    .io_AuxData_out(rules_25_io_AuxData_out)
  );
  assign io_Cache_out_0_State = Cache_reg_0_State; // @[german.scala 264:15]
  assign io_Cache_out_0_Data = Cache_reg_0_Data; // @[german.scala 264:15]
  assign io_Cache_out_1_State = Cache_reg_1_State; // @[german.scala 264:15]
  assign io_Cache_out_1_Data = Cache_reg_1_Data; // @[german.scala 264:15]
  assign io_Chan1_out_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 267:15]
  assign io_Chan1_out_0_Data = Chan1_reg_0_Data; // @[german.scala 267:15]
  assign io_Chan1_out_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 267:15]
  assign io_Chan1_out_1_Data = Chan1_reg_1_Data; // @[german.scala 267:15]
  assign io_Chan2_out_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 270:15]
  assign io_Chan2_out_0_Data = Chan2_reg_0_Data; // @[german.scala 270:15]
  assign io_Chan2_out_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 270:15]
  assign io_Chan2_out_1_Data = Chan2_reg_1_Data; // @[german.scala 270:15]
  assign io_Chan3_out_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 273:15]
  assign io_Chan3_out_0_Data = Chan3_reg_0_Data; // @[german.scala 273:15]
  assign io_Chan3_out_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 273:15]
  assign io_Chan3_out_1_Data = Chan3_reg_1_Data; // @[german.scala 273:15]
  assign io_InvSet_out_0 = InvSet_reg_0; // @[german.scala 276:16]
  assign io_InvSet_out_1 = InvSet_reg_1; // @[german.scala 276:16]
  assign io_ShrSet_out_0 = ShrSet_reg_0; // @[german.scala 279:16]
  assign io_ShrSet_out_1 = ShrSet_reg_1; // @[german.scala 279:16]
  assign io_ExGntd_out = ExGntd_reg; // @[german.scala 282:16]
  assign io_CurCmd_out = CurCmd_reg; // @[german.scala 285:16]
  assign io_CurPtr_out = CurPtr_reg; // @[german.scala 288:16]
  assign io_MemData_out = MemData_reg; // @[german.scala 291:17]
  assign io_AuxData_out = AuxData_reg; // @[german.scala 294:17]
  assign rules_0_io_en_r = io_en_a == 5'h0; // @[german.scala 380:31]
  assign rules_0_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_0_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_0_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_0_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_0_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_0_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_0_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_0_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_0_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_0_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_0_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_0_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_0_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_0_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_0_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_0_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_0_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_0_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_0_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_0_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_0_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_0_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_0_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_0_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_0_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_1_io_en_r = io_en_a == 5'h1; // @[german.scala 380:31]
  assign rules_1_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_1_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_1_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_1_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_1_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_1_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_1_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_1_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_1_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_1_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_1_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_1_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_1_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_1_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_1_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_1_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_1_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_1_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_1_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_1_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_1_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_1_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_1_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_1_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_1_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_2_io_en_r = io_en_a == 5'h2; // @[german.scala 380:31]
  assign rules_2_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_2_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_2_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_2_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_2_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_2_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_2_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_2_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_2_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_2_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_2_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_2_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_2_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_2_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_2_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_2_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_2_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_2_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_2_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_2_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_2_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_2_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_2_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_2_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_2_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_3_io_en_r = io_en_a == 5'h3; // @[german.scala 380:31]
  assign rules_3_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_3_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_3_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_3_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_3_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_3_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_3_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_3_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_3_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_3_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_3_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_3_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_3_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_3_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_3_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_3_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_3_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_3_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_3_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_3_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_3_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_3_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_3_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_3_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_3_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_4_io_en_r = io_en_a == 5'h4; // @[german.scala 380:31]
  assign rules_4_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_4_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_4_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_4_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_4_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_4_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_4_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_4_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_4_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_4_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_4_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_4_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_4_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_4_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_4_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_4_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_4_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_4_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_4_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_4_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_4_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_4_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_4_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_4_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_4_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_5_io_en_r = io_en_a == 5'h5; // @[german.scala 380:31]
  assign rules_5_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_5_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_5_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_5_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_5_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_5_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_5_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_5_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_5_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_5_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_5_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_5_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_5_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_5_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_5_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_5_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_5_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_5_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_5_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_5_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_5_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_5_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_5_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_5_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_5_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_6_io_en_r = io_en_a == 5'h6; // @[german.scala 380:31]
  assign rules_6_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_6_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_6_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_6_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_6_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_6_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_6_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_6_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_6_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_6_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_6_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_6_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_6_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_6_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_6_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_6_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_6_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_6_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_6_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_6_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_6_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_6_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_6_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_6_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_6_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_7_io_en_r = io_en_a == 5'h7; // @[german.scala 380:31]
  assign rules_7_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_7_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_7_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_7_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_7_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_7_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_7_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_7_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_7_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_7_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_7_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_7_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_7_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_7_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_7_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_7_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_7_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_7_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_7_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_7_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_7_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_7_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_7_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_7_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_7_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_8_io_en_r = io_en_a == 5'h8; // @[german.scala 380:31]
  assign rules_8_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_8_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_8_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_8_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_8_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_8_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_8_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_8_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_8_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_8_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_8_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_8_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_8_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_8_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_8_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_8_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_8_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_8_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_8_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_8_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_8_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_8_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_8_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_8_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_8_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_9_io_en_r = io_en_a == 5'h9; // @[german.scala 380:31]
  assign rules_9_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_9_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_9_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_9_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_9_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_9_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_9_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_9_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_9_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_9_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_9_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_9_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_9_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_9_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_9_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_9_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_9_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_9_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_9_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_9_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_9_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_9_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_9_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_9_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_9_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_10_io_en_r = io_en_a == 5'ha; // @[german.scala 380:31]
  assign rules_10_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_10_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_10_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_10_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_10_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_10_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_10_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_10_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_10_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_10_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_10_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_10_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_10_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_10_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_10_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_10_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_10_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_10_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_10_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_10_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_10_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_10_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_10_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_10_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_10_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_11_io_en_r = io_en_a == 5'hb; // @[german.scala 380:31]
  assign rules_11_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_11_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_11_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_11_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_11_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_11_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_11_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_11_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_11_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_11_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_11_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_11_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_11_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_11_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_11_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_11_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_11_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_11_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_11_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_11_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_11_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_11_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_11_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_11_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_11_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_12_io_en_r = io_en_a == 5'hc; // @[german.scala 380:31]
  assign rules_12_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_12_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_12_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_12_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_12_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_12_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_12_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_12_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_12_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_12_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_12_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_12_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_12_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_12_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_12_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_12_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_12_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_12_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_12_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_12_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_12_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_12_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_12_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_12_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_12_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_13_io_en_r = io_en_a == 5'hd; // @[german.scala 380:31]
  assign rules_13_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_13_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_13_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_13_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_13_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_13_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_13_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_13_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_13_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_13_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_13_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_13_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_13_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_13_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_13_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_13_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_13_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_13_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_13_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_13_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_13_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_13_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_13_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_13_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_13_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_14_io_en_r = io_en_a == 5'he; // @[german.scala 380:31]
  assign rules_14_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_14_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_14_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_14_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_14_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_14_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_14_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_14_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_14_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_14_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_14_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_14_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_14_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_14_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_14_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_14_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_14_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_14_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_14_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_14_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_14_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_14_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_14_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_14_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_14_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_15_io_en_r = io_en_a == 5'hf; // @[german.scala 380:31]
  assign rules_15_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_15_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_15_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_15_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_15_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_15_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_15_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_15_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_15_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_15_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_15_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_15_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_15_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_15_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_15_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_15_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_15_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_15_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_15_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_15_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_15_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_15_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_15_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_15_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_15_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_16_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_16_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_16_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_16_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_16_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_16_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_16_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_16_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_16_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_16_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_16_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_16_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_16_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_16_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_16_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_16_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_16_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_16_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_16_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_16_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_16_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_16_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_16_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_16_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_16_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_17_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_17_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_17_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_17_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_17_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_17_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_17_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_17_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_17_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_17_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_17_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_17_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_17_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_17_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_17_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_17_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_17_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_17_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_17_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_17_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_17_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_17_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_17_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_17_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_17_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_18_io_en_r = io_en_a == 5'h12; // @[german.scala 380:31]
  assign rules_18_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_18_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_18_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_18_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_18_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_18_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_18_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_18_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_18_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_18_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_18_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_18_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_18_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_18_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_18_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_18_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_18_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_18_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_18_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_18_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_18_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_18_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_18_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_18_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_18_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_19_io_en_r = io_en_a == 5'h13; // @[german.scala 380:31]
  assign rules_19_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_19_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_19_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_19_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_19_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_19_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_19_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_19_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_19_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_19_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_19_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_19_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_19_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_19_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_19_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_19_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_19_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_19_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_19_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_19_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_19_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_19_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_19_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_19_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_19_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_20_io_en_r = io_en_a == 5'h14; // @[german.scala 380:31]
  assign rules_20_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_20_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_20_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_20_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_20_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_20_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_20_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_20_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_20_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_20_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_20_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_20_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_20_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_20_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_20_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_20_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_20_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_20_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_20_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_20_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_20_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_20_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_20_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_20_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_20_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_21_io_en_r = io_en_a == 5'h15; // @[german.scala 380:31]
  assign rules_21_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_21_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_21_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_21_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_21_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_21_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_21_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_21_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_21_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_21_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_21_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_21_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_21_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_21_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_21_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_21_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_21_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_21_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_21_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_21_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_21_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_21_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_21_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_21_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_21_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_22_io_en_r = io_en_a == 5'h16; // @[german.scala 380:31]
  assign rules_22_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_22_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_22_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_22_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_22_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_22_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_22_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_22_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_22_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_22_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_22_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_22_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_22_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_22_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_22_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_22_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_22_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_22_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_22_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_22_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_22_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_22_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_22_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_22_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_22_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_23_io_en_r = io_en_a == 5'h17; // @[german.scala 380:31]
  assign rules_23_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_23_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_23_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_23_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_23_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_23_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_23_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_23_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_23_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_23_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_23_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_23_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_23_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_23_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_23_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_23_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_23_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_23_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_23_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_23_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_23_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_23_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_23_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_23_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_23_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_24_io_en_r = io_en_a == 5'h18; // @[german.scala 380:31]
  assign rules_24_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_24_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_24_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_24_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_24_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_24_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_24_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_24_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_24_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_24_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_24_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_24_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_24_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_24_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_24_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_24_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_24_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_24_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_24_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_24_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_24_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_24_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_24_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_24_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_24_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  assign rules_25_io_en_r = io_en_a == 5'h19; // @[german.scala 380:31]
  assign rules_25_io_Cache_in_0_State = Cache_reg_0_State; // @[german.scala 369:26]
  assign rules_25_io_Cache_in_0_Data = Cache_reg_0_Data; // @[german.scala 369:26]
  assign rules_25_io_Cache_in_1_State = Cache_reg_1_State; // @[german.scala 369:26]
  assign rules_25_io_Cache_in_1_Data = Cache_reg_1_Data; // @[german.scala 369:26]
  assign rules_25_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[german.scala 370:26]
  assign rules_25_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[german.scala 370:26]
  assign rules_25_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[german.scala 370:26]
  assign rules_25_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[german.scala 370:26]
  assign rules_25_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[german.scala 371:26]
  assign rules_25_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[german.scala 371:26]
  assign rules_25_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[german.scala 371:26]
  assign rules_25_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[german.scala 371:26]
  assign rules_25_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[german.scala 372:26]
  assign rules_25_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[german.scala 372:26]
  assign rules_25_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[german.scala 372:26]
  assign rules_25_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[german.scala 372:26]
  assign rules_25_io_InvSet_in_0 = InvSet_reg_0; // @[german.scala 373:27]
  assign rules_25_io_InvSet_in_1 = InvSet_reg_1; // @[german.scala 373:27]
  assign rules_25_io_ShrSet_in_0 = ShrSet_reg_0; // @[german.scala 374:27]
  assign rules_25_io_ShrSet_in_1 = ShrSet_reg_1; // @[german.scala 374:27]
  assign rules_25_io_ExGntd_in = ExGntd_reg; // @[german.scala 375:27]
  assign rules_25_io_CurCmd_in = CurCmd_reg; // @[german.scala 376:27]
  assign rules_25_io_CurPtr_in = CurPtr_reg; // @[german.scala 377:27]
  assign rules_25_io_MemData_in = MemData_reg; // @[german.scala 378:28]
  assign rules_25_io_AuxData_in = AuxData_reg; // @[german.scala 379:28]
  always @(posedge clock) begin
    if (reset) begin // @[german.scala 263:26]
      Cache_reg_0_State <= 2'h0; // @[german.scala 263:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Cache_reg_0_State <= rules_25_io_Cache_out_0_State; // @[german.scala 382:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Cache_reg_0_State <= rules_24_io_Cache_out_0_State; // @[german.scala 382:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Cache_reg_0_State <= rules_23_io_Cache_out_0_State; // @[german.scala 382:17]
    end else begin
      Cache_reg_0_State <= _GEN_550;
    end
    if (reset) begin // @[german.scala 263:26]
      Cache_reg_0_Data <= 1'h0; // @[german.scala 263:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Cache_reg_0_Data <= rules_25_io_Cache_out_0_Data; // @[german.scala 382:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Cache_reg_0_Data <= rules_24_io_Cache_out_0_Data; // @[german.scala 382:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Cache_reg_0_Data <= rules_23_io_Cache_out_0_Data; // @[german.scala 382:17]
    end else begin
      Cache_reg_0_Data <= _GEN_551;
    end
    if (reset) begin // @[german.scala 263:26]
      Cache_reg_1_State <= 2'h0; // @[german.scala 263:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Cache_reg_1_State <= rules_25_io_Cache_out_1_State; // @[german.scala 382:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Cache_reg_1_State <= rules_24_io_Cache_out_1_State; // @[german.scala 382:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Cache_reg_1_State <= rules_23_io_Cache_out_1_State; // @[german.scala 382:17]
    end else begin
      Cache_reg_1_State <= _GEN_552;
    end
    if (reset) begin // @[german.scala 263:26]
      Cache_reg_1_Data <= 1'h0; // @[german.scala 263:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Cache_reg_1_Data <= rules_25_io_Cache_out_1_Data; // @[german.scala 382:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Cache_reg_1_Data <= rules_24_io_Cache_out_1_Data; // @[german.scala 382:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Cache_reg_1_Data <= rules_23_io_Cache_out_1_Data; // @[german.scala 382:17]
    end else begin
      Cache_reg_1_Data <= _GEN_553;
    end
    if (reset) begin // @[german.scala 266:26]
      Chan1_reg_0_Cmd <= 3'h0; // @[german.scala 266:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan1_reg_0_Cmd <= rules_25_io_Chan1_out_0_Cmd; // @[german.scala 383:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan1_reg_0_Cmd <= rules_24_io_Chan1_out_0_Cmd; // @[german.scala 383:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan1_reg_0_Cmd <= rules_23_io_Chan1_out_0_Cmd; // @[german.scala 383:17]
    end else begin
      Chan1_reg_0_Cmd <= _GEN_554;
    end
    if (reset) begin // @[german.scala 266:26]
      Chan1_reg_0_Data <= 1'h0; // @[german.scala 266:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan1_reg_0_Data <= rules_25_io_Chan1_out_0_Data; // @[german.scala 383:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan1_reg_0_Data <= rules_24_io_Chan1_out_0_Data; // @[german.scala 383:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan1_reg_0_Data <= rules_23_io_Chan1_out_0_Data; // @[german.scala 383:17]
    end else begin
      Chan1_reg_0_Data <= _GEN_555;
    end
    if (reset) begin // @[german.scala 266:26]
      Chan1_reg_1_Cmd <= 3'h0; // @[german.scala 266:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan1_reg_1_Cmd <= rules_25_io_Chan1_out_1_Cmd; // @[german.scala 383:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan1_reg_1_Cmd <= rules_24_io_Chan1_out_1_Cmd; // @[german.scala 383:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan1_reg_1_Cmd <= rules_23_io_Chan1_out_1_Cmd; // @[german.scala 383:17]
    end else begin
      Chan1_reg_1_Cmd <= _GEN_556;
    end
    if (reset) begin // @[german.scala 266:26]
      Chan1_reg_1_Data <= 1'h0; // @[german.scala 266:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan1_reg_1_Data <= rules_25_io_Chan1_out_1_Data; // @[german.scala 383:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan1_reg_1_Data <= rules_24_io_Chan1_out_1_Data; // @[german.scala 383:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan1_reg_1_Data <= rules_23_io_Chan1_out_1_Data; // @[german.scala 383:17]
    end else begin
      Chan1_reg_1_Data <= _GEN_557;
    end
    if (reset) begin // @[german.scala 269:26]
      Chan2_reg_0_Cmd <= 3'h0; // @[german.scala 269:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan2_reg_0_Cmd <= rules_25_io_Chan2_out_0_Cmd; // @[german.scala 384:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan2_reg_0_Cmd <= rules_24_io_Chan2_out_0_Cmd; // @[german.scala 384:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan2_reg_0_Cmd <= rules_23_io_Chan2_out_0_Cmd; // @[german.scala 384:17]
    end else begin
      Chan2_reg_0_Cmd <= _GEN_558;
    end
    if (reset) begin // @[german.scala 269:26]
      Chan2_reg_0_Data <= 1'h0; // @[german.scala 269:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan2_reg_0_Data <= rules_25_io_Chan2_out_0_Data; // @[german.scala 384:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan2_reg_0_Data <= rules_24_io_Chan2_out_0_Data; // @[german.scala 384:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan2_reg_0_Data <= rules_23_io_Chan2_out_0_Data; // @[german.scala 384:17]
    end else begin
      Chan2_reg_0_Data <= _GEN_559;
    end
    if (reset) begin // @[german.scala 269:26]
      Chan2_reg_1_Cmd <= 3'h0; // @[german.scala 269:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan2_reg_1_Cmd <= rules_25_io_Chan2_out_1_Cmd; // @[german.scala 384:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan2_reg_1_Cmd <= rules_24_io_Chan2_out_1_Cmd; // @[german.scala 384:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan2_reg_1_Cmd <= rules_23_io_Chan2_out_1_Cmd; // @[german.scala 384:17]
    end else begin
      Chan2_reg_1_Cmd <= _GEN_560;
    end
    if (reset) begin // @[german.scala 269:26]
      Chan2_reg_1_Data <= 1'h0; // @[german.scala 269:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan2_reg_1_Data <= rules_25_io_Chan2_out_1_Data; // @[german.scala 384:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan2_reg_1_Data <= rules_24_io_Chan2_out_1_Data; // @[german.scala 384:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan2_reg_1_Data <= rules_23_io_Chan2_out_1_Data; // @[german.scala 384:17]
    end else begin
      Chan2_reg_1_Data <= _GEN_561;
    end
    if (reset) begin // @[german.scala 272:26]
      Chan3_reg_0_Cmd <= 3'h0; // @[german.scala 272:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan3_reg_0_Cmd <= rules_25_io_Chan3_out_0_Cmd; // @[german.scala 385:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan3_reg_0_Cmd <= rules_24_io_Chan3_out_0_Cmd; // @[german.scala 385:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan3_reg_0_Cmd <= rules_23_io_Chan3_out_0_Cmd; // @[german.scala 385:17]
    end else begin
      Chan3_reg_0_Cmd <= _GEN_562;
    end
    if (reset) begin // @[german.scala 272:26]
      Chan3_reg_0_Data <= 1'h0; // @[german.scala 272:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan3_reg_0_Data <= rules_25_io_Chan3_out_0_Data; // @[german.scala 385:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan3_reg_0_Data <= rules_24_io_Chan3_out_0_Data; // @[german.scala 385:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan3_reg_0_Data <= rules_23_io_Chan3_out_0_Data; // @[german.scala 385:17]
    end else begin
      Chan3_reg_0_Data <= _GEN_563;
    end
    if (reset) begin // @[german.scala 272:26]
      Chan3_reg_1_Cmd <= 3'h0; // @[german.scala 272:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan3_reg_1_Cmd <= rules_25_io_Chan3_out_1_Cmd; // @[german.scala 385:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan3_reg_1_Cmd <= rules_24_io_Chan3_out_1_Cmd; // @[german.scala 385:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan3_reg_1_Cmd <= rules_23_io_Chan3_out_1_Cmd; // @[german.scala 385:17]
    end else begin
      Chan3_reg_1_Cmd <= _GEN_564;
    end
    if (reset) begin // @[german.scala 272:26]
      Chan3_reg_1_Data <= 1'h0; // @[german.scala 272:26]
    end else if (_T_50) begin // @[german.scala 381:29]
      Chan3_reg_1_Data <= rules_25_io_Chan3_out_1_Data; // @[german.scala 385:17]
    end else if (_T_48) begin // @[german.scala 381:29]
      Chan3_reg_1_Data <= rules_24_io_Chan3_out_1_Data; // @[german.scala 385:17]
    end else if (_T_46) begin // @[german.scala 381:29]
      Chan3_reg_1_Data <= rules_23_io_Chan3_out_1_Data; // @[german.scala 385:17]
    end else begin
      Chan3_reg_1_Data <= _GEN_565;
    end
    if (reset) begin // @[german.scala 275:27]
      InvSet_reg_0 <= 1'h0; // @[german.scala 275:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      InvSet_reg_0 <= rules_25_io_InvSet_out_0; // @[german.scala 386:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      InvSet_reg_0 <= rules_24_io_InvSet_out_0; // @[german.scala 386:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      InvSet_reg_0 <= rules_23_io_InvSet_out_0; // @[german.scala 386:18]
    end else begin
      InvSet_reg_0 <= _GEN_566;
    end
    if (reset) begin // @[german.scala 275:27]
      InvSet_reg_1 <= 1'h0; // @[german.scala 275:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      InvSet_reg_1 <= rules_25_io_InvSet_out_1; // @[german.scala 386:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      InvSet_reg_1 <= rules_24_io_InvSet_out_1; // @[german.scala 386:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      InvSet_reg_1 <= rules_23_io_InvSet_out_1; // @[german.scala 386:18]
    end else begin
      InvSet_reg_1 <= _GEN_567;
    end
    if (reset) begin // @[german.scala 278:27]
      ShrSet_reg_0 <= 1'h0; // @[german.scala 278:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      ShrSet_reg_0 <= rules_25_io_ShrSet_out_0; // @[german.scala 387:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      ShrSet_reg_0 <= rules_24_io_ShrSet_out_0; // @[german.scala 387:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      ShrSet_reg_0 <= rules_23_io_ShrSet_out_0; // @[german.scala 387:18]
    end else begin
      ShrSet_reg_0 <= _GEN_568;
    end
    if (reset) begin // @[german.scala 278:27]
      ShrSet_reg_1 <= 1'h0; // @[german.scala 278:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      ShrSet_reg_1 <= rules_25_io_ShrSet_out_1; // @[german.scala 387:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      ShrSet_reg_1 <= rules_24_io_ShrSet_out_1; // @[german.scala 387:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      ShrSet_reg_1 <= rules_23_io_ShrSet_out_1; // @[german.scala 387:18]
    end else begin
      ShrSet_reg_1 <= _GEN_569;
    end
    if (reset) begin // @[german.scala 281:27]
      ExGntd_reg <= 1'h0; // @[german.scala 281:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      ExGntd_reg <= rules_25_io_ExGntd_out; // @[german.scala 388:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      ExGntd_reg <= rules_24_io_ExGntd_out; // @[german.scala 388:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      ExGntd_reg <= rules_23_io_ExGntd_out; // @[german.scala 388:18]
    end else begin
      ExGntd_reg <= _GEN_570;
    end
    if (reset) begin // @[german.scala 284:27]
      CurCmd_reg <= 3'h0; // @[german.scala 284:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      CurCmd_reg <= rules_25_io_CurCmd_out; // @[german.scala 389:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      CurCmd_reg <= rules_24_io_CurCmd_out; // @[german.scala 389:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      CurCmd_reg <= rules_23_io_CurCmd_out; // @[german.scala 389:18]
    end else begin
      CurCmd_reg <= _GEN_571;
    end
    if (reset) begin // @[german.scala 287:27]
      CurPtr_reg <= 1'h0; // @[german.scala 287:27]
    end else if (_T_50) begin // @[german.scala 381:29]
      CurPtr_reg <= rules_25_io_CurPtr_out; // @[german.scala 390:18]
    end else if (_T_48) begin // @[german.scala 381:29]
      CurPtr_reg <= rules_24_io_CurPtr_out; // @[german.scala 390:18]
    end else if (_T_46) begin // @[german.scala 381:29]
      CurPtr_reg <= rules_23_io_CurPtr_out; // @[german.scala 390:18]
    end else begin
      CurPtr_reg <= _GEN_572;
    end
    if (reset) begin // @[german.scala 290:28]
      MemData_reg <= 1'h0; // @[german.scala 290:28]
    end else if (_T_50) begin // @[german.scala 381:29]
      MemData_reg <= rules_25_io_MemData_out; // @[german.scala 391:19]
    end else if (_T_48) begin // @[german.scala 381:29]
      MemData_reg <= rules_24_io_MemData_out; // @[german.scala 391:19]
    end else if (_T_46) begin // @[german.scala 381:29]
      MemData_reg <= rules_23_io_MemData_out; // @[german.scala 391:19]
    end else begin
      MemData_reg <= _GEN_573;
    end
    if (reset) begin // @[german.scala 293:28]
      AuxData_reg <= 1'h0; // @[german.scala 293:28]
    end else if (_T_50) begin // @[german.scala 381:29]
      AuxData_reg <= rules_25_io_AuxData_out; // @[german.scala 392:19]
    end else if (_T_48) begin // @[german.scala 381:29]
      AuxData_reg <= rules_24_io_AuxData_out; // @[german.scala 392:19]
    end else if (_T_46) begin // @[german.scala 381:29]
      AuxData_reg <= rules_23_io_AuxData_out; // @[german.scala 392:19]
    end else begin
      AuxData_reg <= _GEN_574;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~((~(Cache_reg_0_State == 2'h2) | Cache_reg_1_State == 2'h0) & (~(Cache_reg_0_State == 2'h1) | (
          Cache_reg_1_State == 2'h0 | Cache_reg_1_State == 2'h1)))) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at german.scala:399 assert((!((i.U =/= j.U))||(((!((Cache_reg(i).State === e_E))||((Cache_reg(j).State === e_I))) && (!((Cache_reg(i).State === e_S))||(((Cache_reg(j).State === e_I) || (Cache_reg(j).State === e_S))))))))\n"
            ); // @[german.scala 399:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~((~(Cache_reg_1_State == 2'h2) | Cache_reg_0_State == 2'h0) & (~(Cache_reg_1_State == 2'h1) | (
          Cache_reg_0_State == 2'h0 | Cache_reg_0_State == 2'h1)))) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at german.scala:399 assert((!((i.U =/= j.U))||(((!((Cache_reg(i).State === e_E))||((Cache_reg(j).State === e_I))) && (!((Cache_reg(i).State === e_S))||(((Cache_reg(j).State === e_I) || (Cache_reg(j).State === e_S))))))))\n"
            ); // @[german.scala 399:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_67 & ~(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_0_State != 2'h0) | Cache_reg_0_Data
           == AuxData_reg)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at german.scala:404 assert((!(((!((ExGntd_reg === false.B))||((MemData_reg === AuxData_reg))) && (Cache_reg(i).State =/= e_I)))||((Cache_reg(i).Data === AuxData_reg))))\n"
            ); // @[german.scala 404:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_67 & ~(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_1_State != 2'h0) | Cache_reg_1_Data
           == AuxData_reg)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at german.scala:404 assert((!(((!((ExGntd_reg === false.B))||((MemData_reg === AuxData_reg))) && (Cache_reg(i).State =/= e_I)))||((Cache_reg(i).Data === AuxData_reg))))\n"
            ); // @[german.scala 404:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Cache_reg_0_State = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  Cache_reg_0_Data = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  Cache_reg_1_State = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  Cache_reg_1_Data = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  Chan1_reg_0_Cmd = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  Chan1_reg_0_Data = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  Chan1_reg_1_Cmd = _RAND_6[2:0];
  _RAND_7 = {1{`RANDOM}};
  Chan1_reg_1_Data = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  Chan2_reg_0_Cmd = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  Chan2_reg_0_Data = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  Chan2_reg_1_Cmd = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  Chan2_reg_1_Data = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  Chan3_reg_0_Cmd = _RAND_12[2:0];
  _RAND_13 = {1{`RANDOM}};
  Chan3_reg_0_Data = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  Chan3_reg_1_Cmd = _RAND_14[2:0];
  _RAND_15 = {1{`RANDOM}};
  Chan3_reg_1_Data = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  InvSet_reg_0 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  InvSet_reg_1 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  ShrSet_reg_0 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  ShrSet_reg_1 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  ExGntd_reg = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  CurCmd_reg = _RAND_21[2:0];
  _RAND_22 = {1{`RANDOM}};
  CurPtr_reg = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  MemData_reg = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  AuxData_reg = _RAND_24[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(1'h1); // @[german.scala 399:13]
    end
    //
    if (~reset) begin
      assert((~(Cache_reg_0_State == 2'h2) | Cache_reg_1_State == 2'h0) & (~(Cache_reg_0_State == 2'h1) | (
        Cache_reg_1_State == 2'h0 | Cache_reg_1_State == 2'h1))); // @[german.scala 399:13]
    end
    //
    if (~reset) begin
      assert((~(Cache_reg_1_State == 2'h2) | Cache_reg_0_State == 2'h0) & (~(Cache_reg_1_State == 2'h1) | (
        Cache_reg_0_State == 2'h0 | Cache_reg_0_State == 2'h1))); // @[german.scala 399:13]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[german.scala 399:13]
    end
    //
    if (_T_67) begin
      assert(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_0_State != 2'h0) | Cache_reg_0_Data ==
        AuxData_reg); // @[german.scala 404:11]
    end
    //
    if (_T_67) begin
      assert(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_1_State != 2'h0) | Cache_reg_1_Data ==
        AuxData_reg); // @[german.scala 404:11]
    end
  end
endmodule
