import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import CACHE_STATE._
import MSG_CMD._
class system(NODE_NUM:Int,DATA_NUM:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*11+0).W))
val Cache_out = Output(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
val Chan1_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan2_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan3_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val InvSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ShrSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ExGntd_out = Output(Bool())
val CurCmd_out = Output(MSG_CMD())
val CurPtr_out = Output(UInt(log2Ceil((NODE_NUM+1)).W))
val MemData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
val AuxData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
})
var rules = ArrayBuffer[node]()
val Cache_init = Wire(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
val Cache_reg = RegInit(Cache_init)
io.Cache_out:=Cache_reg
val Chan1_init = Wire(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan1_reg = RegInit(Chan1_init)
io.Chan1_out:=Chan1_reg
val Chan2_init = Wire(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan2_reg = RegInit(Chan2_init)
io.Chan2_out:=Chan2_reg
val Chan3_init = Wire(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan3_reg = RegInit(Chan3_init)
io.Chan3_out:=Chan3_reg
val InvSet_init = Wire(Vec(NODE_NUM+1,Bool()))
val InvSet_reg = RegInit(InvSet_init)
io.InvSet_out:=InvSet_reg
val ShrSet_init = Wire(Vec(NODE_NUM+1,Bool()))
val ShrSet_reg = RegInit(ShrSet_init)
io.ShrSet_out:=ShrSet_reg
val ExGntd_init = Wire(Bool())
val ExGntd_reg = RegInit(ExGntd_init)
io.ExGntd_out:=ExGntd_reg
val CurCmd_init = Wire(MSG_CMD())
val CurCmd_reg = RegInit(CurCmd_init)
io.CurCmd_out:=CurCmd_reg
val CurPtr_init = Wire(UInt(log2Ceil((NODE_NUM+1)).W))
val CurPtr_reg = RegInit(CurPtr_init)
io.CurPtr_out:=CurPtr_reg
val MemData_init = Wire(UInt(log2Ceil((DATA_NUM+1)).W))
val MemData_reg = RegInit(MemData_init)
io.MemData_out:=MemData_reg
val AuxData_init = Wire(UInt(log2Ceil((DATA_NUM+1)).W))
val AuxData_reg = RegInit(AuxData_init)
io.AuxData_out:=AuxData_reg
for(d <- 1 until (DATA_NUM+1)){
for(i <- 0 until (NODE_NUM+1)){
Chan1_init(i).Cmd := Empty
Chan2_init(i).Cmd := Empty
Chan3_init(i).Cmd := Empty
Chan1_init(i).Data := 1.U
Chan2_init(i).Data := 1.U
Chan3_init(i).Data := 1.U
Cache_init(i).State := I
InvSet_init(i) := false.B
ShrSet_init(i) := false.B
Cache_init(i).Data := 1.U
}
ExGntd_init := false.B
CurCmd_init := Empty
MemData_init := d.U
AuxData_init := d.U
CurPtr_init := 1.U
}
for(i <- 1 until (NODE_NUM+1)){
for(d <- 1 until (DATA_NUM+1)){
rules += Module(new Store(NODE_NUM,DATA_NUM,i,d))
}
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendReqS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendReqE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvReqS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvReqE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendInv(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendGntS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendGntE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvGntS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvGntE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendInvAck(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvInvAck(NODE_NUM,DATA_NUM,i))
}
for(i <- 0 until (NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*11+0) {
rules(i).io.Cache_in := Cache_reg
rules(i).io.Chan1_in := Chan1_reg
rules(i).io.Chan2_in := Chan2_reg
rules(i).io.Chan3_in := Chan3_reg
rules(i).io.InvSet_in := InvSet_reg
rules(i).io.ShrSet_in := ShrSet_reg
rules(i).io.ExGntd_in := ExGntd_reg
rules(i).io.CurCmd_in := CurCmd_reg
rules(i).io.CurPtr_in := CurPtr_reg
rules(i).io.MemData_in := MemData_reg
rules(i).io.AuxData_in := AuxData_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Cache_reg := rules(i).io.Cache_out
Chan1_reg := rules(i).io.Chan1_out
Chan2_reg := rules(i).io.Chan2_out
Chan3_reg := rules(i).io.Chan3_out
InvSet_reg := rules(i).io.InvSet_out
ShrSet_reg := rules(i).io.ShrSet_out
ExGntd_reg := rules(i).io.ExGntd_out
CurCmd_reg := rules(i).io.CurCmd_out
CurPtr_reg := rules(i).io.CurPtr_out
MemData_reg := rules(i).io.MemData_out
AuxData_reg := rules(i).io.AuxData_out
}
}

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
assert((!((Cache_reg(1).State===E)&&((Cache_reg(1).Data===1.U)&&((Cache_reg(2).State===I)&&((Cache_reg(2).Data===1.U)&&((Chan1_reg(1).Cmd===ReqS)&&((Chan1_reg(1).Data===1.U)&&((Chan1_reg(2).Cmd===ReqE)&&((Chan1_reg(2).Data===1.U)&&((Chan2_reg(1).Cmd===Empty)&&((Chan2_reg(1).Data===2.U)&&((Chan2_reg(2).Cmd===Empty)&&((Chan2_reg(2).Data===2.U)&&((Chan3_reg(1).Cmd===Empty)&&((Chan3_reg(1).Data===2.U)&&((Chan3_reg(2).Cmd===Empty)&&((Chan3_reg(2).Data===1.U)&&((InvSet_reg(1)===true.B)&&((InvSet_reg(2)===false.B)&&((ShrSet_reg(1)===true.B)&&((ShrSet_reg(2)===false.B)&&((ExGntd_reg===true.B)&&((CurCmd_reg===ReqE)&&((CurPtr_reg===1.U)&&((MemData_reg===2.U)&&(AuxData_reg===1.U)))))))))))))))))))))))))))
}