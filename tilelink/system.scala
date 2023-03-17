import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import stateType._
import opType._
import transType._
import nodeType._
class system(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((allNodeNum-2+1)*(1-1+1)*(allBranchNum-1+1)*15+(1-1+1)*(1-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*19+(allBranchNum-1+1)*4+0).W))
val Tree_out = Output(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
})
var rules = ArrayBuffer[node]()
val Tree_init = Wire(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
val Tree_reg = RegInit(Tree_init)
io.Tree_out:=Tree_reg
var son:Int = 0
for(n <- 0 until (allNodeNum+1)){
Tree_init(n).cache.state := None
Tree_init(n).father := 0.U
for(b1 <- 0 until (allBranchNum+1)){
Tree_init(n).sons(b1) := 0.U
}
for(b2 <- 0 until (allBranchNum+1)){
Tree_init(n).directory(b2) := None
}
for(b3 <- 0 until (allBranchNum+1)){
Tree_init(n).slave_pending(b3) := Empty
}
Tree_init(n).master_pending := Empty
for(b4 <- 0 until (allBranchNum+1)){
for(c <- 0 until (ChanNum+1)){
Tree_init(n).link(b4)(c).opcode := Empty
Tree_init(n).link(b4)(c).para := toN
}
}
}
Tree_init(1).father := 1.U
son = 2
for(cur <- 1 until 2){
for(i <- 1 until (allBranchNum+1)){
Tree_init(son).father := cur.U
Tree_init(cur).sons(i) := son.U
for(c <- 1 until (ChanNum+1)){
Tree_init(cur).link(i)(c).opcode := Empty
}
Tree_init(cur).cache.state := None
Tree_init(cur).master_pending := Empty
Tree_init(cur).slave_pending(i) := Empty
Tree_init(cur).directory(i) := None
son = (son+1)
}
}
for(cur <- 2 until (allNodeNum+1)){
Tree_init(cur).cache.state := None
Tree_init(cur).master_pending := Empty
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquireBlock_toB(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquirePerm_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquireBlock_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_Release_BtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_Release_TtoN_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_Grant_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_GrantData_toB(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_GrantData_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_Probe_NtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbePerm_BtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_TtoN_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_TtoN_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_toB_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_toB_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 2 until (allNodeNum+1)){
for(j <- 1 until 2){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new receive_ReleaseAck(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_6(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_6(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_7(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_8(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAckData_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAckData_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Release_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Release_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_GrantAck(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_4(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 2){
for(j <- 1 until 2){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_5(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(b <- 1 until (allBranchNum+1)){
rules += Module(new L3_send_release_2(coreNum,allNodeNum,allBranchNum,ChanNum,b))
}
for(b <- 1 until (allBranchNum+1)){
rules += Module(new L3_send_release_3(coreNum,allNodeNum,allBranchNum,ChanNum,b))
}
for(b <- 1 until (allBranchNum+1)){
rules += Module(new L3_receive_AcquirePerm(coreNum,allNodeNum,allBranchNum,ChanNum,b))
}
for(b <- 1 until (allBranchNum+1)){
rules += Module(new L3_receive_AcquireBlock(coreNum,allNodeNum,allBranchNum,ChanNum,b))
}
for(i <- 0 until (allNodeNum-2+1)*(1-1+1)*(allBranchNum-1+1)*15+(1-1+1)*(1-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*19+(allBranchNum-1+1)*4+0) {
rules(i).io.Tree_in := Tree_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Tree_reg := rules(i).io.Tree_out
}
}

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
assert(List.range(2, allNodeNum+1).forall(i => List.range(2, allNodeNum+1).forall(j => bool2boolean((!(i.U=/=j.U)||(!((Tree_reg(i).cache.state===Tip)&&(Tree_reg(j).cache.state===Tip))))))).B)
assert(List.range(1, 1).forall(i => bool2boolean((!(Tree_reg(i).cache.state===None)||List.range(1, allBranchNum).forall(b => bool2boolean((Tree_reg(i).directory(b)===None))).B))).B)
assert(List.range(1, 1).forall(i => bool2boolean((!(Tree_reg(i).cache.state===Trunk)||List.range(1, allBranchNum).forall(b => bool2boolean((Tree_reg(i).directory(b)=/=Branch))).B))).B)
assert(List.range(1, 1).forall(i => bool2boolean((!(Tree_reg(i).cache.state===Branch)||List.range(1, allBranchNum).forall(b => bool2boolean((Tree_reg(i).directory(b)=/=Tip))).B))).B)
assert(List.range(1, 1).forall(i => bool2boolean((!(Tree_reg(i).cache.state===Trunk)||List.range(1, allBranchNum).exists(b => bool2boolean((Tree_reg(i).directory(b)===Tip))).B))).B)
}