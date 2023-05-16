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
io.n_out:=io.n_in
io.x_out:=io.x_in
}
