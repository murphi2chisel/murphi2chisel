import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
object stateType extends ChiselEnum {
val None,Trunk,Branch,Tip = Value
}

object opType extends ChiselEnum {
val Empty,AcquireBlock,AcquirePerm,ProbeBlock,ProbePerm,ProbeAck,ProbeAckData,Grant,GrantData,GrantAck,Release,ReleaseData,ReleaseAck = Value
}

object transType extends ChiselEnum {
val toN,toB,toT,NtoB,NtoT,BtoT,TtoB,TtoN,BtoN,TtoT,BtoB,NtoN = Value
}

object nodeType extends ChiselEnum {
val leaf,branch = Value
}

class msgType(val coreNum:Int,val allNodeNum:Int,val allBranchNum:Int,val ChanNum:Int) extends Bundle{
val opcode = opType()
val para = transType()
}

class cacheType(val coreNum:Int,val allNodeNum:Int,val allBranchNum:Int,val ChanNum:Int) extends Bundle{
val state = stateType()
}

class treeNode(val coreNum:Int,val allNodeNum:Int,val allBranchNum:Int,val ChanNum:Int) extends Bundle{
val id = UInt(log2Ceil((allNodeNum+1)).W)
val typeOf = nodeType()
val cache = new cacheType(coreNum,allNodeNum,allBranchNum,ChanNum)
val father = UInt(log2Ceil((allNodeNum+1)).W)
val sons = Vec(allBranchNum+1,UInt(log2Ceil((allNodeNum+1)).W))
val directory = Vec(allBranchNum+1,stateType())
val slave_pending = Vec(allBranchNum+1,opType())
val master_pending = opType()
val link = Vec(allBranchNum+1,Vec(ChanNum+1,new msgType(coreNum,allNodeNum,allBranchNum,ChanNum)))
}

