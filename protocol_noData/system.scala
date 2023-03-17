import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import stateType._
import opType._
import transType._
import nodeType._
class system(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((allNodeNum-4+1)*(3-1+1)*(allBranchNum-1+1)*15+(3-1+1)*(3-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*27+(3-1+1)*(3-1+1)*(allBranchNum-1+1)*10+(allBranchNum-1+1)*5+0).W))
val Tree_out = Output(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
})
var rules = ArrayBuffer[node]()
val Tree_init = Wire(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
val Tree_reg = RegInit(Tree_init)
io.Tree_out:=Tree_reg
var son:Int = 0
Tree_init(1).father := 1.U
son = 2
for(cur <- 0 until 2){
for(i <- 0 until (allBranchNum+1)){
Tree_init(son).father := cur.U
Tree_init(cur).sons(i) := son.U
for(c <- 0 until (ChanNum+1)){
Tree_init(cur).link(i)(c).opcode := Empty
}
Tree_init(cur).cache.state := None
Tree_init(cur).master_pending := Empty
Tree_init(cur).slave_pending(i) := Empty
Tree_init(cur).directory(i) := None
son = (son+1)
}
}
Tree_init(1).father := cur.U
son = 4
for(cur <- 0 until 4){
for(i <- 0 until (allBranchNum+1)){
Tree_init(son).father := cur.U
Tree_init(cur).sons(i) := son.U
for(c <- 0 until (ChanNum+1)){
Tree_init(cur).link(i)(c).opcode := Empty
}
Tree_init(cur).cache.state := None
Tree_init(cur).master_pending := Empty
Tree_init(cur).slave_pending(i) := Empty
Tree_init(cur).directory(i) := None
son = (son+1)
}
}
for(cur <- 0 until (allNodeNum+1)){
Tree_init(cur).cache.state := None
Tree_init(cur).master_pending := Empty
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquireBlock_toB(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquirePerm_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_AcquireBlock_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_Release_BtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new send_Release_TtoN_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_Grant_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_GrantData_toB(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_GrantData_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_Probe_NtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbePerm_BtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_TtoN_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_TtoN_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_toB_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new respond_ProbeBlock_toB_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 4 until (allNodeNum+1)){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new receive_ReleaseAck(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_4(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquirePerm_6(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_4(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_5(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_6(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_7(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_AcquireBlock_8(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAck_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAckData_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeAckData_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Release_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Release_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ReleaseData(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_GrantAck(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Grant(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_GrantData_toB(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_GrantData_toT(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ReleaseAck(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_Probe_NtoN(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbePerm_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbePerm_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeBlock_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeBlock_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b <- 1 until (allBranchNum+1)){
rules += Module(new Ln_receive_ProbeBlock_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b))
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_1(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_2(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_3(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_4(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(i <- 1 until 4){
for(j <- 1 until 4){
for(b1 <- 1 until (allBranchNum+1)){
for(b2 <- 1 until (allBranchNum+1)){
rules += Module(new Ln_send_Release_5(coreNum,allNodeNum,allBranchNum,ChanNum,i,j,b1,b2))
}
}
}
}
for(b <- 1 until (allBranchNum+1)){
rules += Module(new L3_send_release_1(coreNum,allNodeNum,allBranchNum,ChanNum,b))
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
for(i <- 0 until (allNodeNum-4+1)*(3-1+1)*(allBranchNum-1+1)*15+(3-1+1)*(3-1+1)*(allBranchNum-1+1)*(allBranchNum-1+1)*27+(3-1+1)*(3-1+1)*(allBranchNum-1+1)*10+(allBranchNum-1+1)*5+0) {
rules(i).io.Tree_in := Tree_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Tree_reg := rules(i).io.Tree_out
}
}
for(i <- 1 until (allNodeNum+1)){
for(j <- 1 until (allNodeNum+1)){
assert((!(i.U=/=j.U)||(!((Tree_reg(i).cache.state===Tip)&&(Tree_reg(j).cache.state===Tip)))))}
}
}