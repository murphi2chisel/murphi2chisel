import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import CACHE_STATE._
import NODE_CMD._
import UNI_CMD._
import INV_CMD._
import RP_CMD._
import WB_CMD._
import SHWB_CMD._
import NAKC_CMD._
class system(NODE_NUM:Int,DATA_NUM:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*37+(NODE_NUM-1+1)*(NODE_NUM-1+1)*8+15).W))
val Sta_out = Output(new STATE(NODE_NUM,DATA_NUM))
})
var rules = ArrayBuffer[node]()
val Sta_init = Wire(new STATE(NODE_NUM,DATA_NUM))
val Sta_reg = RegInit(Sta_init)
io.Sta_out:=Sta_reg
for(h <- 1 until (NODE_NUM+1)){
for(d <- 1 until (DATA_NUM+1)){
Sta_init.MemData := d.U
Sta_init.Dir.Pending := false.B
Sta_init.Dir.Local := false.B
Sta_init.Dir.Dirty := false.B
Sta_init.Dir.HeadVld := false.B
Sta_init.Dir.HeadPtr := h.U
Sta_init.Dir.HomeHeadPtr := true.B
Sta_init.Dir.ShrVld := false.B
Sta_init.WbMsg.Cmd := WB_None
Sta_init.WbMsg.Proc := h.U
Sta_init.WbMsg.HomeProc := true.B
Sta_init.WbMsg.Data := d.U
Sta_init.ShWbMsg.Cmd := SHWB_None
Sta_init.ShWbMsg.Proc := h.U
Sta_init.ShWbMsg.HomeProc := true.B
Sta_init.ShWbMsg.Data := d.U
Sta_init.NakcMsg.Cmd := NAKC_None
for(p <- 0 until (NODE_NUM+1)){
Sta_init.Proc(p).ProcCmd := NODE_None
Sta_init.Proc(p).InvMarked := false.B
Sta_init.Proc(p).CacheState := CACHE_I
Sta_init.Proc(p).CacheData := d.U
Sta_init.Dir.ShrSet(p) := false.B
Sta_init.Dir.InvSet(p) := false.B
Sta_init.UniMsg(p).Cmd := UNI_None
Sta_init.UniMsg(p).Proc := h.U
Sta_init.UniMsg(p).HomeProc := true.B
Sta_init.UniMsg(p).Data := d.U
Sta_init.InvMsg(p).Cmd := INV_None
Sta_init.RpMsg(p).Cmd := RP_None
}
Sta_init.HomeProc.ProcCmd := NODE_None
Sta_init.HomeProc.InvMarked := false.B
Sta_init.HomeProc.CacheState := CACHE_I
Sta_init.HomeProc.CacheData := d.U
Sta_init.Dir.HomeShrSet := false.B
Sta_init.Dir.HomeInvSet := false.B
Sta_init.HomeUniMsg.Cmd := UNI_None
Sta_init.HomeUniMsg.Proc := h.U
Sta_init.HomeUniMsg.HomeProc := true.B
Sta_init.HomeUniMsg.Data := d.U
Sta_init.HomeInvMsg.Cmd := INV_None
Sta_init.HomeRpMsg.Cmd := RP_None
Sta_init.CurrData := d.U
}
}
for(src <- 1 until (NODE_NUM+1)){
for(data <- 1 until (DATA_NUM+1)){
rules += Module(new Store(NODE_NUM,DATA_NUM,src,data))
}
}
for(data <- 1 until (DATA_NUM+1)){
rules += Module(new Store_Home(NODE_NUM,DATA_NUM,data))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new PI_Remote_Get(NODE_NUM,DATA_NUM,src))
}
rules += Module(new PI_Local_Get_Get(NODE_NUM,DATA_NUM))
rules += Module(new PI_Local_Get_Put(NODE_NUM,DATA_NUM))
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new PI_Remote_GetX(NODE_NUM,DATA_NUM,src))
}
rules += Module(new PI_Local_GetX_GetX(NODE_NUM,DATA_NUM))
rules += Module(new PI_Local_GetX_PutX_HeadVld(NODE_NUM,DATA_NUM))
rules += Module(new PI_Local_GetX_PutX(NODE_NUM,DATA_NUM))
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new PI_Remote_PutX(NODE_NUM,DATA_NUM,dst))
}
rules += Module(new PI_Local_PutX(NODE_NUM,DATA_NUM))
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new PI_Remote_Replace(NODE_NUM,DATA_NUM,src))
}
rules += Module(new PI_Local_Replace(NODE_NUM,DATA_NUM))
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Nak(NODE_NUM,DATA_NUM,dst))
}
rules += Module(new NI_Nak_Home(NODE_NUM,DATA_NUM))
rules += Module(new NI_Nak_Clear(NODE_NUM,DATA_NUM))
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_Get_Nak(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_Get_Get(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_Get_Put_Head(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_Get_Put(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_Get_Put_Dirty(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_Get_Nak(NODE_NUM,DATA_NUM,src,dst))
}
}
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_Get_Nak_Home(NODE_NUM,DATA_NUM,dst))
}
for(src <- 1 until (NODE_NUM+1)){
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_Get_Put(NODE_NUM,DATA_NUM,src,dst))
}
}
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_Get_Put_Home(NODE_NUM,DATA_NUM,dst))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_Nak(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_GetX(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_1(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_2(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_3(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_4(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_5(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_6(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_7(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_7_NODE_Get(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_8_Home(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_8_Home_NODE_Get(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
for(pp <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_8(NODE_NUM,DATA_NUM,src,pp))
}
}
for(src <- 1 until (NODE_NUM+1)){
for(pp <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_8_NODE_Get(NODE_NUM,DATA_NUM,src,pp))
}
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_9(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_10_Home(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
for(pp <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_10(NODE_NUM,DATA_NUM,src,pp))
}
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Local_GetX_PutX_11(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_GetX_Nak(NODE_NUM,DATA_NUM,src,dst))
}
}
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_GetX_Nak_Home(NODE_NUM,DATA_NUM,dst))
}
for(src <- 1 until (NODE_NUM+1)){
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_GetX_PutX(NODE_NUM,DATA_NUM,src,dst))
}
}
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_GetX_PutX_Home(NODE_NUM,DATA_NUM,dst))
}
rules += Module(new NI_Local_Put(NODE_NUM,DATA_NUM))
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_Put(NODE_NUM,DATA_NUM,dst))
}
rules += Module(new NI_Local_PutXAcksDone(NODE_NUM,DATA_NUM))
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Remote_PutX(NODE_NUM,DATA_NUM,dst))
}
for(dst <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Inv(NODE_NUM,DATA_NUM,dst))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_InvAck_exists_Home(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
for(pp <- 1 until (NODE_NUM+1)){
rules += Module(new NI_InvAck_exists(NODE_NUM,DATA_NUM,src,pp))
}
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_InvAck_1(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_InvAck_2(NODE_NUM,DATA_NUM,src))
}
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_InvAck_3(NODE_NUM,DATA_NUM,src))
}
rules += Module(new NI_Wb(NODE_NUM,DATA_NUM))
rules += Module(new NI_FAck(NODE_NUM,DATA_NUM))
rules += Module(new NI_ShWb(NODE_NUM,DATA_NUM))
for(src <- 1 until (NODE_NUM+1)){
rules += Module(new NI_Replace(NODE_NUM,DATA_NUM,src))
}
rules += Module(new NI_Replace_Home(NODE_NUM,DATA_NUM))
for(i <- 0 until (NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*37+(NODE_NUM-1+1)*(NODE_NUM-1+1)*8+15) {
rules(i).io.Sta_in := Sta_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Sta_reg := rules(i).io.Sta_out
}
}
assert(List.range(1, NODE_NUM).forall(p => bool2boolean(List.range(1, NODE_NUM).forall(q => bool2boolean((!(p.U=/=q.U)||(!((Sta_reg.Proc(p).CacheState===CACHE_E)&&(Sta_reg.Proc(q).CacheState===CACHE_E)))))).B)).B)
assert(List.range(1, NODE_NUM).forall(p => bool2boolean((!((Sta_reg.Proc(p).CacheState===CACHE_E)&&(Sta_reg.HomeProc.CacheState===CACHE_E))))).B)
assert(List.range(1, NODE_NUM).forall(p => bool2boolean((!(Sta_reg.Proc(p).CacheState===CACHE_E)||(Sta_reg.Proc(p).CacheData===Sta_reg.CurrData)))).B)
assert((!(!Sta_reg.Dir.Dirty)||(Sta_reg.MemData===Sta_reg.CurrData)))
}