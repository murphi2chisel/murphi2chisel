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

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
io.Tree_out:=io.Tree_in
}
