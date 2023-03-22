import chisel3._
import chisel3.util._
import CACHE_STATE._
import NODE_CMD._
import UNI_CMD._
import INV_CMD._
import RP_CMD._
import WB_CMD._
import SHWB_CMD._
import NAKC_CMD._
class Init(NODE_NUM:Int,DATA_NUM:Int,h:Int,d:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
io.Sta_out.MemData := d.U
io.Sta_out.Dir.Pending := false.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.Dir.HeadVld := false.B
io.Sta_out.Dir.HeadPtr := h.U
io.Sta_out.Dir.HomeHeadPtr := true.B
io.Sta_out.Dir.ShrVld := false.B
io.Sta_out.WbMsg.Cmd := WB_None
io.Sta_out.WbMsg.Proc := h.U
io.Sta_out.WbMsg.HomeProc := true.B
io.Sta_out.WbMsg.Data := d.U
io.Sta_out.ShWbMsg.Cmd := SHWB_None
io.Sta_out.ShWbMsg.Proc := h.U
io.Sta_out.ShWbMsg.HomeProc := true.B
io.Sta_out.ShWbMsg.Data := d.U
io.Sta_out.NakcMsg.Cmd := NAKC_None
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Proc(p).ProcCmd := NODE_None
io.Sta_out.Proc(p).InvMarked := false.B
io.Sta_out.Proc(p).CacheState := CACHE_I
io.Sta_out.Proc(p).CacheData := d.U
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
io.Sta_out.UniMsg(p).Cmd := UNI_None
io.Sta_out.UniMsg(p).Proc := h.U
io.Sta_out.UniMsg(p).HomeProc := true.B
io.Sta_out.UniMsg(p).Data := d.U
io.Sta_out.InvMsg(p).Cmd := INV_None
io.Sta_out.RpMsg(p).Cmd := RP_None
}

io.Sta_out.HomeProc.ProcCmd := NODE_None
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.CacheData := d.U
io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeUniMsg.Cmd := UNI_None
io.Sta_out.HomeUniMsg.Proc := h.U
io.Sta_out.HomeUniMsg.HomeProc := true.B
io.Sta_out.HomeUniMsg.Data := d.U
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.HomeRpMsg.Cmd := RP_None
io.Sta_out.CurrData := d.U
}
}
class Store(NODE_NUM:Int,DATA_NUM:Int,src:Int,data:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.Proc(src).CacheState===CACHE_E)){
io.Sta_out.Proc(src).CacheData := data.U
io.Sta_out.CurrData := data.U
}
}
}
class Store_Home(NODE_NUM:Int,DATA_NUM:Int,data:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.HomeProc.CacheState===CACHE_E)){
io.Sta_out.HomeProc.CacheData := data.U
io.Sta_out.CurrData := data.U
}
}
}
class PI_Remote_Get(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.Proc(src).ProcCmd===NODE_None)&&(io.Sta_in.Proc(src).CacheState===CACHE_I))){
io.Sta_out.Proc(src).ProcCmd := NODE_Get
io.Sta_out.UniMsg(src).Cmd := UNI_Get
io.Sta_out.UniMsg(src).HomeProc := true.B
}
}
}
class PI_Local_Get_Get(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&((io.Sta_in.HomeProc.CacheState===CACHE_I)&&((!io.Sta_in.Dir.Pending)&&io.Sta_in.Dir.Dirty)))){
io.Sta_out.HomeProc.ProcCmd := NODE_Get
io.Sta_out.Dir.Pending := true.B
io.Sta_out.HomeUniMsg.Cmd := UNI_Get
io.Sta_out.HomeUniMsg.Proc := io.Sta_in.Dir.HeadPtr
io.Sta_out.HomeUniMsg.HomeProc := io.Sta_in.Dir.HomeHeadPtr
}
}
}
class PI_Local_Get_Put(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&((io.Sta_in.HomeProc.CacheState===CACHE_I)&&((!io.Sta_in.Dir.Pending)&&(!io.Sta_in.Dir.Dirty))))){
io.Sta_out.Dir.Local := true.B
io.Sta_out.HomeProc.ProcCmd := NODE_None
when(io.Sta_in.HomeProc.InvMarked){
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_I
}.otherwise{
io.Sta_out.HomeProc.CacheState := CACHE_S
}

}
}
}
class PI_Remote_GetX(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.Proc(src).ProcCmd===NODE_None)&&(io.Sta_in.Proc(src).CacheState===CACHE_I))){
io.Sta_out.Proc(src).ProcCmd := NODE_GetX
io.Sta_out.UniMsg(src).Cmd := UNI_GetX
io.Sta_out.UniMsg(src).HomeProc := true.B
}
}
}
class PI_Local_GetX_GetX(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&(((io.Sta_in.HomeProc.CacheState===CACHE_I)||(io.Sta_in.HomeProc.CacheState===CACHE_S))&&((!io.Sta_in.Dir.Pending)&&io.Sta_in.Dir.Dirty)))){
io.Sta_out.HomeProc.ProcCmd := NODE_GetX
io.Sta_out.Dir.Pending := true.B
io.Sta_out.HomeUniMsg.Cmd := UNI_GetX
io.Sta_out.HomeUniMsg.Proc := io.Sta_in.Dir.HeadPtr
io.Sta_out.HomeUniMsg.HomeProc := io.Sta_in.Dir.HomeHeadPtr
}
}
}
class PI_Local_GetX_PutX_HeadVld(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&(((io.Sta_in.HomeProc.CacheState===CACHE_I)||(io.Sta_in.HomeProc.CacheState===CACHE_S))&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&io.Sta_in.Dir.HeadVld))))){
io.Sta_out.Dir.Local := true.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.HeadVld := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.HomeProc.ProcCmd := NODE_None
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_E
io.Sta_out.HomeProc.CacheData := io.Sta_in.MemData
}
}
}
class PI_Local_GetX_PutX(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&(((io.Sta_in.HomeProc.CacheState===CACHE_I)||(io.Sta_in.HomeProc.CacheState===CACHE_S))&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(!io.Sta_in.Dir.HeadVld)))))){
io.Sta_out.Dir.Local := true.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.HomeProc.ProcCmd := NODE_None
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_E
io.Sta_out.HomeProc.CacheData := io.Sta_in.MemData
}
}
}
class PI_Remote_PutX(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.Proc(dst).ProcCmd===NODE_None)&&(io.Sta_in.Proc(dst).CacheState===CACHE_E))){
io.Sta_out.Proc(dst).CacheState := CACHE_I
io.Sta_out.WbMsg.Cmd := WB_Wb
io.Sta_out.WbMsg.Proc := dst.U
io.Sta_out.WbMsg.HomeProc := false.B
io.Sta_out.WbMsg.Data := io.Sta_in.Proc(dst).CacheData
}
}
}
class PI_Local_PutX(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&(io.Sta_in.HomeProc.CacheState===CACHE_E))){
when(io.Sta_in.Dir.Pending){
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.MemData := io.Sta_in.HomeProc.CacheData
}.otherwise{
io.Sta_out.HomeProc.CacheState := CACHE_I
}

}
}
}
class PI_Remote_Replace(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.Proc(src).ProcCmd===NODE_None)&&(io.Sta_in.Proc(src).CacheState===CACHE_S))){
io.Sta_out.Proc(src).CacheState := CACHE_I
io.Sta_out.RpMsg(src).Cmd := RP_Replace
}
}
}
class PI_Local_Replace(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeProc.ProcCmd===NODE_None)&&(io.Sta_in.HomeProc.CacheState===CACHE_S))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Nak(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.UniMsg(dst).Cmd===UNI_Nak)){
io.Sta_out.UniMsg(dst).Cmd := UNI_None
io.Sta_out.Proc(dst).ProcCmd := NODE_None
io.Sta_out.Proc(dst).InvMarked := false.B
}
}
}
class NI_Nak_Home(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.HomeUniMsg.Cmd===UNI_Nak)){
io.Sta_out.HomeUniMsg.Cmd := UNI_None
io.Sta_out.HomeProc.ProcCmd := NODE_None
io.Sta_out.HomeProc.InvMarked := false.B
}
}
}
class NI_Nak_Clear(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.NakcMsg.Cmd===NAKC_Nakc)){
io.Sta_out.NakcMsg.Cmd := NAKC_None
io.Sta_out.Dir.Pending := false.B
}
}
}
class NI_Local_Get_Nak(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&(io.Sta_in.UniMsg(src).HomeProc&&((io.Sta_in.RpMsg(src).Cmd=/=RP_Replace)&&(io.Sta_in.Dir.Pending||((io.Sta_in.Dir.Dirty&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.CacheState=/=CACHE_E)))||(io.Sta_in.Dir.Dirty&&((!io.Sta_in.Dir.Local)&&((io.Sta_in.Dir.HeadPtr===src.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))))))){
io.Sta_out.UniMsg(src).Cmd := UNI_Nak
}
}
}
class NI_Local_Get_Get(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&(io.Sta_in.UniMsg(src).HomeProc&&((io.Sta_in.RpMsg(src).Cmd=/=RP_Replace)&&((!io.Sta_in.Dir.Pending)&&(io.Sta_in.Dir.Dirty&&((!io.Sta_in.Dir.Local)&&((io.Sta_in.Dir.HeadPtr=/=src.U)||io.Sta_in.Dir.HomeHeadPtr)))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.UniMsg(src).Cmd := UNI_Get
io.Sta_out.UniMsg(src).Proc := io.Sta_in.Dir.HeadPtr
io.Sta_out.UniMsg(src).HomeProc := io.Sta_in.Dir.HomeHeadPtr
}
}
}
class NI_Local_Get_Put_Head(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&(io.Sta_in.UniMsg(src).HomeProc&&((io.Sta_in.RpMsg(src).Cmd=/=RP_Replace)&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&io.Sta_in.Dir.HeadVld)))))){
io.Sta_out.Dir.ShrVld := true.B
io.Sta_out.Dir.ShrSet(src) := true.B
for(p <- 1 until (NODE_NUM+1)){
when((p.U===src.U)){
io.Sta_out.Dir.InvSet(p) := true.B
}.otherwise{
io.Sta_out.Dir.InvSet(p) := io.Sta_in.Dir.ShrSet(p)
}

}

io.Sta_out.Dir.HomeInvSet := io.Sta_in.Dir.HomeShrSet
io.Sta_out.UniMsg(src).Cmd := UNI_Put
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
}
}
}
class NI_Local_Get_Put(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&(io.Sta_in.UniMsg(src).HomeProc&&((io.Sta_in.RpMsg(src).Cmd=/=RP_Replace)&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(!io.Sta_in.Dir.HeadVld))))))){
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_Put
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
}
}
}
class NI_Local_Get_Put_Dirty(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&(io.Sta_in.UniMsg(src).HomeProc&&((io.Sta_in.RpMsg(src).Cmd=/=RP_Replace)&&((!io.Sta_in.Dir.Pending)&&(io.Sta_in.Dir.Dirty&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.CacheState===CACHE_E)))))))){
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.MemData := io.Sta_in.HomeProc.CacheData
io.Sta_out.HomeProc.CacheState := CACHE_S
io.Sta_out.UniMsg(src).Cmd := UNI_Put
io.Sta_out.UniMsg(src).Data := io.Sta_in.HomeProc.CacheData
}
}
}
class NI_Remote_Get_Nak(NODE_NUM:Int,DATA_NUM:Int,src:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((src.U=/=dst.U)&&((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&((io.Sta_in.UniMsg(src).Proc===dst.U)&&((!io.Sta_in.UniMsg(src).HomeProc)&&(io.Sta_in.Proc(dst).CacheState=/=CACHE_E)))))){
io.Sta_out.UniMsg(src).Cmd := UNI_Nak
io.Sta_out.NakcMsg.Cmd := NAKC_Nakc
}
}
}
class NI_Remote_Get_Nak_Home(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeUniMsg.Cmd===UNI_Get)&&((io.Sta_in.HomeUniMsg.Proc===dst.U)&&((!io.Sta_in.HomeUniMsg.HomeProc)&&(io.Sta_in.Proc(dst).CacheState=/=CACHE_E))))){
io.Sta_out.HomeUniMsg.Cmd := UNI_Nak
io.Sta_out.NakcMsg.Cmd := NAKC_Nakc
}
}
}
class NI_Remote_Get_Put(NODE_NUM:Int,DATA_NUM:Int,src:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((src.U=/=dst.U)&&((io.Sta_in.UniMsg(src).Cmd===UNI_Get)&&((io.Sta_in.UniMsg(src).Proc===dst.U)&&((!io.Sta_in.UniMsg(src).HomeProc)&&(io.Sta_in.Proc(dst).CacheState===CACHE_E)))))){
io.Sta_out.Proc(dst).CacheState := CACHE_S
io.Sta_out.UniMsg(src).Cmd := UNI_Put
io.Sta_out.UniMsg(src).Data := io.Sta_in.Proc(dst).CacheData
io.Sta_out.ShWbMsg.Cmd := SHWB_ShWb
io.Sta_out.ShWbMsg.Proc := src.U
io.Sta_out.ShWbMsg.HomeProc := false.B
io.Sta_out.ShWbMsg.Data := io.Sta_in.Proc(dst).CacheData
}
}
}
class NI_Remote_Get_Put_Home(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeUniMsg.Cmd===UNI_Get)&&((io.Sta_in.HomeUniMsg.Proc===dst.U)&&((!io.Sta_in.HomeUniMsg.HomeProc)&&(io.Sta_in.Proc(dst).CacheState===CACHE_E))))){
io.Sta_out.Proc(dst).CacheState := CACHE_S
io.Sta_out.HomeUniMsg.Cmd := UNI_Put
io.Sta_out.HomeUniMsg.Data := io.Sta_in.Proc(dst).CacheData
}
}
}
class NI_Local_GetX_Nak(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&(io.Sta_in.Dir.Pending||((io.Sta_in.Dir.Dirty&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.CacheState=/=CACHE_E)))||(io.Sta_in.Dir.Dirty&&((!io.Sta_in.Dir.Local)&&((io.Sta_in.Dir.HeadPtr===src.U)&&(!io.Sta_in.Dir.HomeHeadPtr))))))))){
io.Sta_out.UniMsg(src).Cmd := UNI_Nak
}
}
}
class NI_Local_GetX_GetX(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&(io.Sta_in.Dir.Dirty&&((!io.Sta_in.Dir.Local)&&((io.Sta_in.Dir.HeadPtr=/=src.U)||io.Sta_in.Dir.HomeHeadPtr))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.UniMsg(src).Cmd := UNI_GetX
io.Sta_out.UniMsg(src).Proc := io.Sta_in.Dir.HeadPtr
io.Sta_out.UniMsg(src).HomeProc := io.Sta_in.Dir.HomeHeadPtr
}
}
}
class NI_Local_GetX_PutX_1(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((!io.Sta_in.Dir.HeadVld)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd===NODE_Get)))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.InvMarked := true.B
}
}
}
class NI_Local_GetX_PutX_2(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((!io.Sta_in.Dir.HeadVld)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd=/=NODE_Get)))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_3(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((!io.Sta_in.Dir.HeadVld)&&(!io.Sta_in.Dir.Local))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_4(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&((!io.Sta_in.Dir.HomeShrSet)&&(forall(1,NODE_NUM,p=>(!(p.U=/=src.U)||(!io.Sta_in.Dir.ShrSet(p))))&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd===NODE_Get))))))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.InvMarked := true.B
}
}
}
class NI_Local_GetX_PutX_5(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&((!io.Sta_in.Dir.HomeShrSet)&&(forall(1,NODE_NUM,p=>(!(p.U=/=src.U)||(!io.Sta_in.Dir.ShrSet(p))))&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd=/=NODE_Get))))))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_6(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&((!io.Sta_in.Dir.HomeShrSet)&&(forall(1,NODE_NUM,p=>(!(p.U=/=src.U)||(!io.Sta_in.Dir.ShrSet(p))))&&(!io.Sta_in.Dir.Local)))))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_7(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&(((io.Sta_in.Dir.HeadPtr=/=src.U)||io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd=/=NODE_Get))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_7_NODE_Get(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&(((io.Sta_in.Dir.HeadPtr=/=src.U)||io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd===NODE_Get))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.InvMarked := true.B
}
}
}
class NI_Local_GetX_PutX_8_Home(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.HomeShrSet&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd=/=NODE_Get))))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_8_Home_NODE_Get(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.HomeShrSet&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd===NODE_Get))))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.InvMarked := true.B
}
}
}
class NI_Local_GetX_PutX_8(NODE_NUM:Int,DATA_NUM:Int,src:Int,pp:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.ShrSet(pp)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd=/=NODE_Get))))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Local_GetX_PutX_8_NODE_Get(NODE_NUM:Int,DATA_NUM:Int,src:Int,pp:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.ShrSet(pp)&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.ProcCmd===NODE_Get))))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
io.Sta_out.HomeProc.CacheState := CACHE_I
io.Sta_out.HomeProc.InvMarked := true.B
}
}
}
class NI_Local_GetX_PutX_9(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&(((io.Sta_in.Dir.HeadPtr=/=src.U)||io.Sta_in.Dir.HomeHeadPtr)&&(!io.Sta_in.Dir.Local)))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
}
}
}
class NI_Local_GetX_PutX_10_Home(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.HomeShrSet&&(!io.Sta_in.Dir.Local)))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
}
}
}
class NI_Local_GetX_PutX_10(NODE_NUM:Int,DATA_NUM:Int,src:Int,pp:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&((!io.Sta_in.Dir.Dirty)&&(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===src.U)&&((!io.Sta_in.Dir.HomeHeadPtr)&&(io.Sta_in.Dir.ShrSet(pp)&&(!io.Sta_in.Dir.Local)))))))))){
io.Sta_out.Dir.Pending := true.B
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
when(((p.U=/=src.U)&&((io.Sta_in.Dir.ShrVld&&io.Sta_in.Dir.ShrSet(p))||(io.Sta_in.Dir.HeadVld&&((io.Sta_in.Dir.HeadPtr===p.U)&&(!io.Sta_in.Dir.HomeHeadPtr)))))){
io.Sta_out.Dir.InvSet(p) := true.B
io.Sta_out.InvMsg(p).Cmd := INV_Inv
}.otherwise{
io.Sta_out.Dir.InvSet(p) := false.B
}

}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.HomeInvMsg.Cmd := INV_None
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.MemData
}
}
}
class NI_Local_GetX_PutX_11(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&(io.Sta_in.UniMsg(src).HomeProc&&((!io.Sta_in.Dir.Pending)&&(io.Sta_in.Dir.Dirty&&(io.Sta_in.Dir.Local&&(io.Sta_in.HomeProc.CacheState===CACHE_E))))))){
io.Sta_out.Dir.Local := false.B
io.Sta_out.Dir.Dirty := true.B
io.Sta_out.Dir.HeadVld := true.B
io.Sta_out.Dir.HeadPtr := src.U
io.Sta_out.Dir.HomeHeadPtr := false.B
io.Sta_out.Dir.ShrVld := false.B
for(p <- 1 until (NODE_NUM+1)){
io.Sta_out.Dir.ShrSet(p) := false.B
io.Sta_out.Dir.InvSet(p) := false.B
}

io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.HomeProc.CacheData
io.Sta_out.HomeProc.CacheState := CACHE_I
}
}
}
class NI_Remote_GetX_Nak(NODE_NUM:Int,DATA_NUM:Int,src:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((src.U=/=dst.U)&&((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&((io.Sta_in.UniMsg(src).Proc===dst.U)&&((!io.Sta_in.UniMsg(src).HomeProc)&&(io.Sta_in.Proc(dst).CacheState=/=CACHE_E)))))){
io.Sta_out.UniMsg(src).Cmd := UNI_Nak
io.Sta_out.NakcMsg.Cmd := NAKC_Nakc
}
}
}
class NI_Remote_GetX_Nak_Home(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeUniMsg.Cmd===UNI_GetX)&&((io.Sta_in.HomeUniMsg.Proc===dst.U)&&((!io.Sta_in.HomeUniMsg.HomeProc)&&(io.Sta_in.Proc(dst).CacheState=/=CACHE_E))))){
io.Sta_out.HomeUniMsg.Cmd := UNI_Nak
io.Sta_out.NakcMsg.Cmd := NAKC_Nakc
}
}
}
class NI_Remote_GetX_PutX(NODE_NUM:Int,DATA_NUM:Int,src:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((src.U=/=dst.U)&&((io.Sta_in.UniMsg(src).Cmd===UNI_GetX)&&((io.Sta_in.UniMsg(src).Proc===dst.U)&&((!io.Sta_in.UniMsg(src).HomeProc)&&(io.Sta_in.Proc(dst).CacheState===CACHE_E)))))){
io.Sta_out.Proc(dst).CacheState := CACHE_I
io.Sta_out.UniMsg(src).Cmd := UNI_PutX
io.Sta_out.UniMsg(src).Data := io.Sta_in.Proc(dst).CacheData
io.Sta_out.ShWbMsg.Cmd := SHWB_FAck
io.Sta_out.ShWbMsg.Proc := src.U
io.Sta_out.ShWbMsg.HomeProc := false.B
}
}
}
class NI_Remote_GetX_PutX_Home(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.HomeUniMsg.Cmd===UNI_GetX)&&((io.Sta_in.HomeUniMsg.Proc===dst.U)&&((!io.Sta_in.HomeUniMsg.HomeProc)&&(io.Sta_in.Proc(dst).CacheState===CACHE_E))))){
io.Sta_out.Proc(dst).CacheState := CACHE_I
io.Sta_out.HomeUniMsg.Cmd := UNI_PutX
io.Sta_out.HomeUniMsg.Data := io.Sta_in.Proc(dst).CacheData
}
}
}
class NI_Local_Put(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.HomeUniMsg.Cmd===UNI_Put)){
io.Sta_out.HomeUniMsg.Cmd := UNI_None
io.Sta_out.Dir.Pending := false.B
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.Dir.Local := true.B
io.Sta_out.MemData := io.Sta_in.HomeUniMsg.Data
io.Sta_out.HomeProc.ProcCmd := NODE_None
when(io.Sta_in.HomeProc.InvMarked){
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_I
}.otherwise{
io.Sta_out.HomeProc.CacheState := CACHE_S
}

}
}
}
class NI_Remote_Put(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.UniMsg(dst).Cmd===UNI_Put)){
io.Sta_out.UniMsg(dst).Cmd := UNI_None
io.Sta_out.Proc(dst).ProcCmd := NODE_None
when(io.Sta_in.Proc(dst).InvMarked){
io.Sta_out.Proc(dst).InvMarked := false.B
io.Sta_out.Proc(dst).CacheState := CACHE_I
}.otherwise{
io.Sta_out.Proc(dst).CacheState := CACHE_S
}

}
}
}
class NI_Local_PutXAcksDone(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.HomeUniMsg.Cmd===UNI_PutX)){
io.Sta_out.HomeUniMsg.Cmd := UNI_None
io.Sta_out.Dir.Pending := false.B
io.Sta_out.Dir.Local := true.B
io.Sta_out.Dir.HeadVld := false.B
io.Sta_out.HomeProc.ProcCmd := NODE_None
io.Sta_out.HomeProc.InvMarked := false.B
io.Sta_out.HomeProc.CacheState := CACHE_E
io.Sta_out.HomeProc.CacheData := io.Sta_in.HomeUniMsg.Data
}
}
}
class NI_Remote_PutX(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.UniMsg(dst).Cmd===UNI_PutX)&&(io.Sta_in.Proc(dst).ProcCmd===NODE_GetX))){
io.Sta_out.UniMsg(dst).Cmd := UNI_None
io.Sta_out.Proc(dst).ProcCmd := NODE_None
io.Sta_out.Proc(dst).InvMarked := false.B
io.Sta_out.Proc(dst).CacheState := CACHE_E
io.Sta_out.Proc(dst).CacheData := io.Sta_in.UniMsg(dst).Data
}
}
}
class NI_Inv(NODE_NUM:Int,DATA_NUM:Int,dst:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.InvMsg(dst).Cmd===INV_Inv)){
io.Sta_out.InvMsg(dst).Cmd := INV_InvAck
io.Sta_out.Proc(dst).CacheState := CACHE_I
when((io.Sta_in.Proc(dst).ProcCmd===NODE_Get)){
io.Sta_out.Proc(dst).InvMarked := true.B
}

}
}
}
class NI_InvAck_exists_Home(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.InvMsg(src).Cmd===INV_InvAck)&&(io.Sta_in.Dir.Pending&&(io.Sta_in.Dir.InvSet(src)&&io.Sta_in.Dir.HomeInvSet)))){
io.Sta_out.InvMsg(src).Cmd := INV_None
io.Sta_out.Dir.InvSet(src) := false.B
}
}
}
class NI_InvAck_exists(NODE_NUM:Int,DATA_NUM:Int,src:Int,pp:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.InvMsg(src).Cmd===INV_InvAck)&&(io.Sta_in.Dir.Pending&&(io.Sta_in.Dir.InvSet(src)&&((pp.U=/=src.U)&&io.Sta_in.Dir.InvSet(pp)))))){
io.Sta_out.InvMsg(src).Cmd := INV_None
io.Sta_out.Dir.InvSet(src) := false.B
}
}
}
class NI_InvAck_1(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.InvMsg(src).Cmd===INV_InvAck)&&(io.Sta_in.Dir.Pending&&(io.Sta_in.Dir.InvSet(src)&&(io.Sta_in.Dir.Local&&((!io.Sta_in.Dir.Dirty)&&((!io.Sta_in.Dir.HomeInvSet)&&forall(1,NODE_NUM,p=>((p.U===src.U)||(!io.Sta_in.Dir.InvSet(p))))))))))){
io.Sta_out.InvMsg(src).Cmd := INV_None
io.Sta_out.Dir.InvSet(src) := false.B
io.Sta_out.Dir.Pending := false.B
io.Sta_out.Dir.Local := false.B
}
}
}
class NI_InvAck_2(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.InvMsg(src).Cmd===INV_InvAck)&&(io.Sta_in.Dir.Pending&&(io.Sta_in.Dir.InvSet(src)&&((!io.Sta_in.Dir.Local)&&((!io.Sta_in.Dir.HomeInvSet)&&forall(1,NODE_NUM,p=>((p.U===src.U)||(!io.Sta_in.Dir.InvSet(p)))))))))){
io.Sta_out.InvMsg(src).Cmd := INV_None
io.Sta_out.Dir.InvSet(src) := false.B
io.Sta_out.Dir.Pending := false.B
}
}
}
class NI_InvAck_3(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Sta_in.InvMsg(src).Cmd===INV_InvAck)&&(io.Sta_in.Dir.Pending&&(io.Sta_in.Dir.InvSet(src)&&(io.Sta_in.Dir.Dirty&&((!io.Sta_in.Dir.HomeInvSet)&&forall(1,NODE_NUM,p=>((p.U===src.U)||(!io.Sta_in.Dir.InvSet(p)))))))))){
io.Sta_out.InvMsg(src).Cmd := INV_None
io.Sta_out.Dir.InvSet(src) := false.B
io.Sta_out.Dir.Pending := false.B
}
}
}
class NI_Wb(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.WbMsg.Cmd===WB_Wb)){
io.Sta_out.WbMsg.Cmd := WB_None
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.Dir.HeadVld := false.B
io.Sta_out.MemData := io.Sta_in.WbMsg.Data
}
}
}
class NI_FAck(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.ShWbMsg.Cmd===SHWB_FAck)){
io.Sta_out.ShWbMsg.Cmd := SHWB_None
io.Sta_out.Dir.Pending := false.B
when(io.Sta_in.Dir.Dirty){
io.Sta_out.Dir.HeadPtr := io.Sta_in.ShWbMsg.Proc
io.Sta_out.Dir.HomeHeadPtr := io.Sta_in.ShWbMsg.HomeProc
}

}
}
}
class NI_ShWb(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.ShWbMsg.Cmd===SHWB_ShWb)){
io.Sta_out.ShWbMsg.Cmd := SHWB_None
io.Sta_out.Dir.Pending := false.B
io.Sta_out.Dir.Dirty := false.B
io.Sta_out.Dir.ShrVld := true.B
for(p <- 1 until (NODE_NUM+1)){
when((((p.U===io.Sta_in.ShWbMsg.Proc)&&(!io.Sta_in.ShWbMsg.HomeProc))||io.Sta_in.Dir.ShrSet(p))){
io.Sta_out.Dir.ShrSet(p) := true.B
io.Sta_out.Dir.InvSet(p) := true.B
}.otherwise{
io.Sta_out.Dir.ShrSet(p) := false.B
}

}

when((io.Sta_in.ShWbMsg.HomeProc||io.Sta_in.Dir.HomeShrSet)){
io.Sta_out.Dir.HomeShrSet := true.B
io.Sta_out.Dir.HomeInvSet := true.B
}.otherwise{
io.Sta_out.Dir.HomeShrSet := false.B
}

io.Sta_out.MemData := io.Sta_in.ShWbMsg.Data
}
}
}
class NI_Replace(NODE_NUM:Int,DATA_NUM:Int,src:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.RpMsg(src).Cmd===RP_Replace)){
io.Sta_out.RpMsg(src).Cmd := RP_None
when(io.Sta_in.Dir.ShrVld){
io.Sta_out.Dir.ShrSet(src) := false.B
io.Sta_out.Dir.InvSet(src) := false.B
}

}
}
}
class NI_Replace_Home(NODE_NUM:Int,DATA_NUM:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Sta_in.HomeRpMsg.Cmd===RP_Replace)){
io.Sta_out.HomeRpMsg.Cmd := RP_None
when(io.Sta_in.Dir.ShrVld){
io.Sta_out.Dir.HomeShrSet := false.B
io.Sta_out.Dir.HomeInvSet := false.B
}

}
}
}
