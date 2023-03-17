import chisel3._
import chisel3.util._
import stateType._
import opType._
import transType._
import nodeType._
class send_AcquireBlock_toB(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).cache.state===None)&&((io.Tree_in(i).master_pending=/=GrantData)&&((io.Tree_in(i).master_pending=/=Grant)&&(io.Tree_in(i).master_pending=/=ReleaseAck)))))){
msg.opcode := AcquireBlock
msg.para := NtoB
io.Tree_out(j).link(b)(1) := msg
io.Tree_out(i).master_pending := GrantData
}
}
}
class send_AcquirePerm_toT(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).cache.state===Branch)&&((io.Tree_in(i).master_pending=/=GrantData)&&((io.Tree_in(i).master_pending=/=Grant)&&(io.Tree_in(i).master_pending=/=ReleaseAck)))))){
msg.opcode := AcquirePerm
msg.para := BtoT
io.Tree_out(j).link(b)(1) := msg
io.Tree_out(i).master_pending := Grant
}
}
}
class send_AcquireBlock_toT(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).cache.state===None)&&((io.Tree_in(i).master_pending=/=GrantData)&&((io.Tree_in(i).master_pending=/=Grant)&&(io.Tree_in(i).master_pending=/=ReleaseAck)))))){
msg.opcode := AcquireBlock
msg.para := NtoT
io.Tree_out(j).link(b)(1) := msg
io.Tree_out(i).master_pending := GrantData
}
}
}
class send_Release_BtoN(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).cache.state===Branch)&&((io.Tree_in(j).link(b)(3).opcode===Empty)&&((io.Tree_in(i).master_pending=/=GrantData)&&((io.Tree_in(i).master_pending=/=Grant)&&(io.Tree_in(i).master_pending=/=ReleaseAck))))))){
msg.opcode := Release
msg.para := BtoN
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(i).master_pending := ReleaseAck
io.Tree_out(i).cache.state := None
}
}
}
class send_Release_TtoN_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).cache.state===Tip)&&((io.Tree_in(j).link(b)(3).opcode===Empty)&&((io.Tree_in(i).master_pending=/=GrantData)&&((io.Tree_in(i).master_pending=/=Grant)&&(io.Tree_in(i).master_pending=/=ReleaseAck))))))){
msg.para := TtoN
msg.opcode := Release
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(i).master_pending := ReleaseAck
io.Tree_out(i).cache.state := None
}
}
}
class respond_Grant_toT(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(j).link(b)(4).opcode===Grant)&&(io.Tree_in(j).link(b)(4).para===toT)))){
io.Tree_out(i).cache.state := Tip
io.Tree_out(j).link(b)(4).opcode := Empty
io.Tree_out(i).master_pending := Empty
msg.opcode := GrantAck
msg.para := BtoT
io.Tree_out(j).link(b)(5) := msg
}
}
}
class respond_GrantData_toB(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(j).link(b)(4).opcode===GrantData)&&(io.Tree_in(j).link(b)(4).para===toB)))){
io.Tree_out(i).cache.state := Branch
io.Tree_out(j).link(b)(4).opcode := Empty
io.Tree_out(i).master_pending := Empty
msg.opcode := GrantAck
msg.para := BtoT
io.Tree_out(j).link(b)(5) := msg
}
}
}
class respond_GrantData_toT(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(j).link(b)(4).opcode===GrantData)&&(io.Tree_in(j).link(b)(4).para===toT)))){
io.Tree_out(i).cache.state := Tip
io.Tree_out(j).link(b)(4).opcode := Empty
io.Tree_out(i).master_pending := Empty
msg.opcode := GrantAck
msg.para := BtoT
io.Tree_out(j).link(b)(5) := msg
}
}
}
class respond_Probe_NtoN(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&(((io.Tree_in(j).link(b)(2).opcode===ProbePerm)||(io.Tree_in(j).link(b)(2).opcode===ProbeBlock))&&(((io.Tree_in(j).link(b)(2).para===toN)||(io.Tree_in(j).link(b)(2).para===toB))&&(io.Tree_in(i).cache.state===None)))))){
msg.opcode := ProbeAck
msg.para := NtoN
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
io.Tree_out(i).cache.state := None
}
}
}
class respond_ProbePerm_BtoN(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&((io.Tree_in(j).link(b)(2).opcode===ProbePerm)&&((io.Tree_in(j).link(b)(2).para===toN)&&(io.Tree_in(i).cache.state===Branch)))))){
msg.opcode := ProbeAck
msg.para := BtoN
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
io.Tree_out(i).cache.state := None
}
}
}
class respond_ProbeBlock_TtoN_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&((io.Tree_in(j).link(b)(2).opcode===ProbeBlock)&&((io.Tree_in(j).link(b)(2).para===toN)&&(io.Tree_in(i).cache.state===Tip)))))){
msg.para := TtoN
msg.opcode := ProbeAckData
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
io.Tree_out(i).cache.state := None
}
}
}
class respond_ProbeBlock_TtoN_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&((io.Tree_in(j).link(b)(2).opcode===ProbeBlock)&&((io.Tree_in(j).link(b)(2).para===toN)&&(io.Tree_in(i).cache.state===Tip)))))){
msg.opcode := ProbeAck
msg.para := TtoN
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
io.Tree_out(i).cache.state := None
}
}
}
class respond_ProbeBlock_toB_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&((io.Tree_in(j).link(b)(2).opcode===ProbeBlock)&&(io.Tree_in(i).cache.state===Tip))))){
msg.para := TtoB
msg.opcode := ProbeAckData
io.Tree_out(i).cache.state := Branch
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
}
}
}
class respond_ProbeBlock_toB_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(j).sons(b)===i.U)&&((io.Tree_in(i).master_pending=/=ReleaseAck)&&((io.Tree_in(j).link(b)(2).opcode===ProbeBlock)&&(io.Tree_in(i).cache.state===Tip))))){
msg.para := TtoB
msg.opcode := ProbeAck
io.Tree_out(i).cache.state := Branch
io.Tree_out(j).link(b)(3) := msg
io.Tree_out(j).link(b)(2).opcode := Empty
}
}
}
class receive_ReleaseAck(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(j).sons(b)===i.U)&&(io.Tree_in(j).link(b)(4).opcode===ReleaseAck))){
io.Tree_out(i).master_pending := Empty
io.Tree_out(j).link(b)(4).opcode := Empty
}
}
}
class Ln_receive_AcquirePerm_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquirePerm)&&((io.Tree_in(i).cache.state===Tip)&&(List.range(1, allBranchNum).forall(k => bool2boolean(((!(k.U=/=b1.U)||(io.Tree_in(i).directory(k)===None))&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&(io.Tree_in(i).slave_pending(k)=/=ProbeAckData))))).B&&((io.Tree_in(i).slave_pending(b1)=/=GrantAck)&&(io.Tree_in(i).directory(b1)===Branch))))))){
io.Tree_out(i).link(b1)(1).opcode := Empty
msg.opcode := Grant
msg.para := toT
io.Tree_out(i).link(b1)(4) := msg
io.Tree_out(i).directory(b1) := Tip
io.Tree_out(i).cache.state := Trunk
io.Tree_out(i).slave_pending(b1) := GrantAck
}
}
}
class Ln_receive_AcquirePerm_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquirePerm)&&((io.Tree_in(i).cache.state===Tip)&&(List.range(1, allBranchNum).forall(k => bool2boolean(((!(k.U=/=b1.U)||(io.Tree_in(i).directory(k)===None))&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&(io.Tree_in(i).slave_pending(k)=/=ProbeAckData))))).B&&((io.Tree_in(i).slave_pending(b1)=/=GrantAck)&&(io.Tree_in(i).directory(b1)===None))))))){
io.Tree_out(i).link(b1)(1).opcode := Empty
msg.opcode := GrantData
msg.para := toT
io.Tree_out(i).link(b1)(4) := msg
io.Tree_out(i).directory(b1) := Tip
io.Tree_out(i).cache.state := Trunk
io.Tree_out(i).slave_pending(b1) := GrantAck
}
}
}
class Ln_receive_AcquirePerm_3(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquirePerm)&&((io.Tree_in(i).cache.state===Tip)&&List.range(1, allBranchNum).exists(k => bool2boolean(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Branch)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))))).B)))){
for(k <- 1 until (allBranchNum+1)){
when(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Branch)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck)))))){
msg.opcode := ProbePerm
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_receive_AcquirePerm_6(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquirePerm)&&(io.Tree_in(i).cache.state===Trunk)))){
for(k <- 1 until (allBranchNum+1)){
when(((io.Tree_in(i).directory(k)===Tip)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))){
msg.opcode := ProbeBlock
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_receive_AcquireBlock_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquireBlock)&&((io.Tree_in(i).link(b1)(1).para===NtoB)&&(((io.Tree_in(i).cache.state===Branch)||(io.Tree_in(i).cache.state===Tip))&&((io.Tree_in(i).slave_pending(b1)=/=GrantAck)&&((io.Tree_in(i).slave_pending(b1)=/=ProbeAck)&&(io.Tree_in(i).slave_pending(b1)=/=ProbeAckData)))))))){
io.Tree_out(i).link(b1)(1).opcode := Empty
msg.opcode := GrantData
msg.para := toB
io.Tree_out(i).link(b1)(4) := msg
io.Tree_out(i).slave_pending(b1) := GrantAck
io.Tree_out(i).directory(b1) := Branch
}
}
}
class Ln_receive_AcquireBlock_3(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquireBlock)&&((io.Tree_in(i).link(b1)(1).para===NtoB)&&((io.Tree_in(i).cache.state===Trunk)&&List.range(1, allBranchNum).exists(k => bool2boolean(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Tip)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))))).B))))){
for(k <- 1 until (allBranchNum+1)){
when(((k.U=/=b1.U)&&(io.Tree_in(i).directory(k)===Tip))){
msg.opcode := ProbeBlock
msg.para := toB
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_receive_AcquireBlock_6(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquireBlock)&&((io.Tree_in(i).link(b1)(1).para===NtoT)&&((io.Tree_in(i).cache.state===Tip)&&(List.range(1, allBranchNum).forall(k => bool2boolean(((io.Tree_in(i).directory(k)===None)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&(io.Tree_in(i).slave_pending(k)=/=ProbeAckData))))).B&&(io.Tree_in(i).slave_pending(b1)=/=GrantAck))))))){
io.Tree_out(i).link(b1)(1).opcode := Empty
msg.opcode := GrantData
msg.para := toT
io.Tree_out(i).link(b1)(4) := msg
io.Tree_out(i).slave_pending(b1) := GrantAck
io.Tree_out(i).cache.state := Trunk
io.Tree_out(i).directory(b1) := Tip
}
}
}
class Ln_receive_AcquireBlock_7(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquireBlock)&&((io.Tree_in(i).link(b1)(1).para===NtoT)&&((io.Tree_in(i).cache.state===Tip)&&List.range(1, allBranchNum).exists(k => bool2boolean(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Branch)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))))).B))))){
for(k <- 1 until (allBranchNum+1)){
when(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Branch)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck)))))){
msg.opcode := ProbePerm
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_receive_AcquireBlock_8(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).link(b1)(1).opcode===AcquireBlock)&&((io.Tree_in(i).link(b1)(1).para===NtoT)&&((io.Tree_in(i).cache.state===Trunk)&&List.range(1, allBranchNum).exists(k => bool2boolean(((k.U=/=b1.U)&&((io.Tree_in(i).directory(k)===Tip)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))))).B))))){
for(k <- 1 until (allBranchNum+1)){
when(((k.U=/=b1.U)&&(io.Tree_in(i).directory(k)===Tip))){
msg.opcode := ProbeBlock
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_receive_ProbeAck_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(i).link(b1)(3).opcode===ProbeAck)&&((io.Tree_in(i).link(b1)(3).para===BtoN)||(io.Tree_in(i).link(b1)(3).para===NtoN)))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := None
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_receive_ProbeAck_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(i).link(b1)(3).opcode===ProbeAck)&&(io.Tree_in(i).link(b1)(3).para===TtoN))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := None
io.Tree_out(i).cache.state := Tip
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_receive_ProbeAck_3(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(i).link(b1)(3).opcode===ProbeAck)&&(io.Tree_in(i).link(b1)(3).para===TtoB))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := Branch
io.Tree_out(i).cache.state := Tip
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_receive_ProbeAckData_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(i).link(b1)(3).opcode===ProbeAckData)&&(io.Tree_in(i).link(b1)(3).para===TtoN))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := None
io.Tree_out(i).cache.state := Tip
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_receive_ProbeAckData_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(i).link(b1)(3).opcode===ProbeAckData)&&(io.Tree_in(i).link(b1)(3).para===TtoB))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := Branch
io.Tree_out(i).cache.state := Tip
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_receive_Release_1(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(i).link(b1)(3).opcode===Release)&&(io.Tree_in(i).link(b1)(3).para===TtoN))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).cache.state := Tip
io.Tree_out(i).directory(b1) := None
msg.opcode := ReleaseAck
msg.para := BtoT
io.Tree_out(i).link(b1)(4) := msg
}
}
}
class Ln_receive_Release_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when(((io.Tree_in(i).link(b1)(3).opcode===Release)&&((io.Tree_in(i).link(b1)(3).para===BtoN)||(io.Tree_in(i).link(b1)(3).para===NtoN)))){
io.Tree_out(i).link(b1)(3).opcode := Empty
io.Tree_out(i).directory(b1) := None
msg.opcode := ReleaseAck
msg.para := BtoT
io.Tree_out(i).link(b1)(4) := msg
}
}
}
class Ln_receive_GrantAck(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when((io.Tree_in(i).link(b1)(5).opcode===GrantAck)){
io.Tree_out(i).link(b1)(5).opcode := Empty
io.Tree_out(i).slave_pending(b1) := Empty
}
}
}
class Ln_send_Release_4(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&(((io.Tree_in(i).cache.state===Tip)||(io.Tree_in(i).cache.state===Branch))&&List.range(1, allBranchNum).exists(b => bool2boolean((io.Tree_in(i).directory(b)===Branch))).B))){
for(k <- 1 until (allBranchNum+1)){
when(((io.Tree_in(i).directory(k)===Branch)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))){
msg.opcode := ProbePerm
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class Ln_send_Release_5(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,i:Int,j:Int,b1:Int,b2:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
var msg = Wire(new msgType(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int))
msg.opcode := ProbeBlock
msg.para := toB
when((((i.U===1.U)||(io.Tree_in(j).sons(b2)===i.U))&&((io.Tree_in(i).cache.state===Trunk)&&List.range(1, allBranchNum).exists(b => bool2boolean((io.Tree_in(i).directory(b)===Tip))).B))){
for(k <- 1 until (allBranchNum+1)){
when(((io.Tree_in(i).directory(k)===Tip)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAck)&&((io.Tree_in(i).slave_pending(k)=/=ProbeAckData)&&(io.Tree_in(i).slave_pending(k)=/=GrantAck))))){
msg.opcode := ProbeBlock
msg.para := toN
io.Tree_out(i).link(k)(2) := msg
io.Tree_out(i).slave_pending(k) := ProbeAck
}

}

}
}
}
class L3_send_release_2(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(1).cache.state===Tip)&&List.range(1, allBranchNum).forall(k => bool2boolean((io.Tree_in(1).directory(k)===None))).B)){
io.Tree_out(1).cache.state := None
}
}
}
class L3_send_release_3(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(1).cache.state===Tip)&&List.range(1, allBranchNum).forall(k => bool2boolean((io.Tree_in(1).directory(k)===None))).B)){
io.Tree_out(1).cache.state := None
}
}
}
class L3_receive_AcquirePerm(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(1).link(b)(1).opcode===AcquirePerm)&&(io.Tree_in(1).cache.state===None))){
io.Tree_out(1).cache.state := Tip
}
}
}
class L3_receive_AcquireBlock(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int,b:Int) extends node(coreNum,allNodeNum,allBranchNum,ChanNum){
when(io.en_r){
when(((io.Tree_in(1).link(b)(1).opcode===AcquireBlock)&&(io.Tree_in(1).cache.state===None))){
io.Tree_out(1).cache.state := Tip
}
}
}
