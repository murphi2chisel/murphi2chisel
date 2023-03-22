import chisel3._
import chisel3.util._
import stateType._
import opType._
import transType._
import nodeType._
class node(coreNum:Int,allNodeNum:Int,allBranchNum:Int,ChanNum:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val Tree_in = Input(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
val Tree_out = Output(Vec(allNodeNum+1,new treeNode(coreNum,allNodeNum,allBranchNum,ChanNum)))
})

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
io.Tree_out:=io.Tree_in
}
