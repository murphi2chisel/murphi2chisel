import chisel3._
import chisel3.util._
import state._
class node(clientNUMS:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val n_in = Input(Vec(clientNUMS+1,state()))
val n_out = Output(Vec(clientNUMS+1,state()))
val x_in = Input(Bool())
val x_out = Output(Bool())
})

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
io.n_out:=io.n_in
io.x_out:=io.x_in
}
