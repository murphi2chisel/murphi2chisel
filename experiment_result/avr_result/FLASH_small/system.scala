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
val en_a = Input(UInt(log2Ceil((NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*37+(NODE_NUM-1+1)*(NODE_NUM-1+1)*8+15+(NODE_NUM-1+1)*(DATA_NUM-1+1)).W))
val Sta_out = Output(new STATE(NODE_NUM,DATA_NUM))
})
var rules = ArrayBuffer[node]()
val Sta_reg = Reg(new STATE(NODE_NUM,DATA_NUM))
io.Sta_out:=Sta_reg
for(h <- 1 until (NODE_NUM+1)){
for(d <- 1 until (DATA_NUM+1)){
rules += Module(new Init(NODE_NUM,DATA_NUM,h,d))
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
for(i <- 0 until (NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*37+(NODE_NUM-1+1)*(NODE_NUM-1+1)*8+15+(NODE_NUM-1+1)*(DATA_NUM-1+1)) {
rules(i).io.Sta_in := Sta_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Sta_reg := rules(i).io.Sta_out
}
}

  def forall(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) & f(i + 1)
    }
    return v(right - left)
  }
  def exists(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) | f(i + 1)
    }
    return v(right - left)
  }
  
assert(forall(1,NODE_NUM,p=>forall(1,NODE_NUM,q=>(!(p.U=/=q.U)||(!((Sta_reg.Proc(p).CacheState===CACHE_E)&&(Sta_reg.Proc(q).CacheState===CACHE_E)))))))
assert(forall(1,NODE_NUM,p=>(!((Sta_reg.Proc(p).CacheState===CACHE_E)&&(Sta_reg.HomeProc.CacheState===CACHE_E)))))
assert(forall(1,NODE_NUM,p=>(!(Sta_reg.Proc(p).CacheState===CACHE_E)||(Sta_reg.Proc(p).CacheData===Sta_reg.CurrData))))
assert((!(!Sta_reg.Dir.Dirty)||(Sta_reg.MemData===Sta_reg.CurrData)))
}