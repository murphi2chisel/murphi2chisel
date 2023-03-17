import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import state._
class system(clientNUMS:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((clientNUMS-1+1)*4+0).W))
val n_out = Output(Vec(clientNUMS+1,state()))
val x_out = Output(Bool())
})
var rules = ArrayBuffer[node]()
val n_init = Wire(Vec(clientNUMS+1,state()))
val n_reg = RegInit(n_init)
io.n_out:=n_reg
val x_init = Wire(Bool())
val x_reg = RegInit(x_init)
io.x_out:=x_reg
for(i <- 0 until (clientNUMS+1)){
n_init(i) := I
}
x_init := true.B
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
for(i <- 0 until (clientNUMS-1+1)*4+0) {
rules(i).io.n_in := n_reg
rules(i).io.x_in := x_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
n_reg := rules(i).io.n_out
x_reg := rules(i).io.x_out
}
}

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
assert((!((n_reg(1)===E)&&((n_reg(2)===E)&&(x_reg===false.B)))))
}