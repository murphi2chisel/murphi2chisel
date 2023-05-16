import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import stateType._
import opType._
import transType._
import nodeType._
class system(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((allNodeNum-2+1)*(1-1+1)*(allBranchNum-1+1)*15+(1-1+1)*(1-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*19+(allBranchNum-1+1)*4+0+1).W))
val Tree_out = Output(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
})
var rules = ArrayBuffer[node]()
val Tree_reg = Reg(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
io.Tree_out:=Tree_reg
rules += Module(new Init(coreNum,allNodeNum,allBranchNum,ChanNum))
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
for(i <- 0 until (allNodeNum-2+1)*(1-1+1)*(allBranchNum-1+1)*15+(1-1+1)*(1-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*19+(allBranchNum-1+1)*4+0+1) {
rules(i).io.Tree_in := Tree_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Tree_reg := rules(i).io.Tree_out
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
assert(forall(1,1,i=>(!(Tree_reg(i).cache.state===None)||forall(1,allBranchNum,b=>(Tree_reg(i).directory(b)===None)))))
assert(forall(1,1,i=>(!(Tree_reg(i).cache.state===Trunk)||forall(1,allBranchNum,b=>(Tree_reg(i).directory(b)=/=Branch)))))
assert(forall(1,1,i=>(!(Tree_reg(i).cache.state===Branch)||forall(1,allBranchNum,b=>(Tree_reg(i).directory(b)=/=Tip)))))
assert(forall(1,1,i=>(!(Tree_reg(i).cache.state===Trunk)||exists(1,allBranchNum,b=>(Tree_reg(i).directory(b)===Tip)))))
}