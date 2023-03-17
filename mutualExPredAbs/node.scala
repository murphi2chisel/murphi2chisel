import chisel3._
import chisel3.util._
class node(clientNUMS:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val x_in = Input(Bool())
val x_out = Output(Bool())
val nI_in = Input(Vec(clientNUMS+1,Bool()))
val nI_out = Output(Vec(clientNUMS+1,Bool()))
val nT_in = Input(Vec(clientNUMS+1,Bool()))
val nT_out = Output(Vec(clientNUMS+1,Bool()))
val nC_in = Input(Vec(clientNUMS+1,Bool()))
val nC_out = Output(Vec(clientNUMS+1,Bool()))
val nE_in = Input(Vec(clientNUMS+1,Bool()))
val nE_out = Output(Vec(clientNUMS+1,Bool()))
})

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
io.x_out:=io.x_in
io.nI_out:=io.nI_in
io.nT_out:=io.nT_in
io.nC_out:=io.nC_in
io.nE_out:=io.nE_in
}
