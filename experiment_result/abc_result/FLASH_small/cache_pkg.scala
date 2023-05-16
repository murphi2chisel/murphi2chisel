import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
object CACHE_STATE extends ChiselEnum {
val CACHE_I,CACHE_S,CACHE_E = Value
}

object NODE_CMD extends ChiselEnum {
val NODE_None,NODE_Get,NODE_GetX = Value
}

class NODE_STATE(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val ProcCmd = NODE_CMD()
val InvMarked = Bool()
val CacheState = CACHE_STATE()
val CacheData = UInt(log2Ceil((DATA_NUM+1)).W)
}

class DIR_STATE(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Pending = Bool()
val Local = Bool()
val Dirty = Bool()
val HeadVld = Bool()
val HeadPtr = UInt(log2Ceil((NODE_NUM+1)).W)
val HomeHeadPtr = Bool()
val ShrVld = Bool()
val ShrSet = Vec(NODE_NUM+1,Bool())
val HomeShrSet = Bool()
val InvSet = Vec(NODE_NUM+1,Bool())
val HomeInvSet = Bool()
}

object UNI_CMD extends ChiselEnum {
val UNI_None,UNI_Get,UNI_GetX,UNI_Put,UNI_PutX,UNI_Nak = Value
}

class UNI_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = UNI_CMD()
val Proc = UInt(log2Ceil((NODE_NUM+1)).W)
val HomeProc = Bool()
val Data = UInt(log2Ceil((DATA_NUM+1)).W)
}

object INV_CMD extends ChiselEnum {
val INV_None,INV_Inv,INV_InvAck = Value
}

class INV_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = INV_CMD()
}

object RP_CMD extends ChiselEnum {
val RP_None,RP_Replace = Value
}

class RP_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = RP_CMD()
}

object WB_CMD extends ChiselEnum {
val WB_None,WB_Wb = Value
}

class WB_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = WB_CMD()
val Proc = UInt(log2Ceil((NODE_NUM+1)).W)
val HomeProc = Bool()
val Data = UInt(log2Ceil((DATA_NUM+1)).W)
}

object SHWB_CMD extends ChiselEnum {
val SHWB_None,SHWB_ShWb,SHWB_FAck = Value
}

class SHWB_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = SHWB_CMD()
val Proc = UInt(log2Ceil((NODE_NUM+1)).W)
val HomeProc = Bool()
val Data = UInt(log2Ceil((DATA_NUM+1)).W)
}

object NAKC_CMD extends ChiselEnum {
val NAKC_None,NAKC_Nakc = Value
}

class NAKC_MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = NAKC_CMD()
}

class STATE(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Proc = Vec(NODE_NUM+1,new NODE_STATE(NODE_NUM,DATA_NUM))
val HomeProc = new NODE_STATE(NODE_NUM,DATA_NUM)
val Dir = new DIR_STATE(NODE_NUM,DATA_NUM)
val MemData = UInt(log2Ceil((DATA_NUM+1)).W)
val UniMsg = Vec(NODE_NUM+1,new UNI_MSG(NODE_NUM,DATA_NUM))
val HomeUniMsg = new UNI_MSG(NODE_NUM,DATA_NUM)
val InvMsg = Vec(NODE_NUM+1,new INV_MSG(NODE_NUM,DATA_NUM))
val HomeInvMsg = new INV_MSG(NODE_NUM,DATA_NUM)
val RpMsg = Vec(NODE_NUM+1,new RP_MSG(NODE_NUM,DATA_NUM))
val HomeRpMsg = new RP_MSG(NODE_NUM,DATA_NUM)
val WbMsg = new WB_MSG(NODE_NUM,DATA_NUM)
val ShWbMsg = new SHWB_MSG(NODE_NUM,DATA_NUM)
val NakcMsg = new NAKC_MSG(NODE_NUM,DATA_NUM)
val CurrData = UInt(log2Ceil((DATA_NUM+1)).W)
}

