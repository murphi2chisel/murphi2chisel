import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import state._
class system(clientNUMS:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((clientNUMS-1+1)*4+0+1).W))
val n_out = Output(Vec(clientNUMS+1,state()))
val x_out = Output(Bool())
})
var rules = ArrayBuffer[node]()
val n_reg = Reg(Vec(clientNUMS+1,state()))
io.n_out:=n_reg
val x_reg = Reg(Bool())
io.x_out:=x_reg
rules += Module(new Init(clientNUMS))
for(i <- 1 until (clientNUMS+1)){
rules += Module(new Try(clientNUMS,i))
}
for(i <- 1 until (clientNUMS+1)){
rules += Module(new Crit(clientNUMS,i))
}
for(i <- 1 until (clientNUMS+1)){
rules += Module(new Exit(clientNUMS,i))
}
for(i <- 1 until (clientNUMS+1)){
rules += Module(new Idle(clientNUMS,i))
}
for(i <- 0 until (clientNUMS-1+1)*4+0+1) {
rules(i).io.n_in := n_reg
rules(i).io.x_in := x_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
n_reg := rules(i).io.n_out
x_reg := rules(i).io.x_out
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
assert((!((n_reg(1)===C)&&((n_reg(2)===E)&&(x_reg===true.B)))))
}