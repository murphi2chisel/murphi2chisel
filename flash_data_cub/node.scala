import chisel3._
import chisel3.util._
import CACHE_STATE._
import NODE_CMD._
import UNI_CMD._
import INV_CMD._
import RP_CMD._
import WB_CMD._
import SHWB_CMD._
import NAKC_CMD._
class node(NODE_NUM:Int,DATA_NUM:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val Sta_in = Input(new STATE(NODE_NUM,DATA_NUM))
val Sta_out = Output(new STATE(NODE_NUM,DATA_NUM))
})

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
io.Sta_out:=io.Sta_in
}
