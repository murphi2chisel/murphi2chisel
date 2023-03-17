import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
class system(clientNUMS:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((clientNUMS-1+1)*4+2).W))
val x_out = Output(Bool())
val nI_out = Output(Vec(clientNUMS+1,Bool()))
val nT_out = Output(Vec(clientNUMS+1,Bool()))
val nC_out = Output(Vec(clientNUMS+1,Bool()))
val nE_out = Output(Vec(clientNUMS+1,Bool()))
})
var rules = ArrayBuffer[node]()
val x_init = Wire(Bool())
val x_reg = RegInit(x_init)
io.x_out:=x_reg
val nI_init = Wire(Vec(clientNUMS+1,Bool()))
val nI_reg = RegInit(nI_init)
io.nI_out:=nI_reg
val nT_init = Wire(Vec(clientNUMS+1,Bool()))
val nT_reg = RegInit(nT_init)
io.nT_out:=nT_reg
val nC_init = Wire(Vec(clientNUMS+1,Bool()))
val nC_reg = RegInit(nC_init)
io.nC_out:=nC_reg
val nE_init = Wire(Vec(clientNUMS+1,Bool()))
val nE_reg = RegInit(nE_init)
io.nE_out:=nE_reg
for(i <- 0 until (clientNUMS+1)){
nI_init(i) := true.B
nT_init(i) := false.B
nC_init(i) := false.B
nE_init(i) := false.B
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
rules += Module(new Str_Idle(clientNUMS))
rules += Module(new Str_Crit(clientNUMS))
for(i <- 0 until (clientNUMS-1+1)*4+2) {
rules(i).io.x_in := x_reg
rules(i).io.nI_in := nI_reg
rules(i).io.nT_in := nT_reg
rules(i).io.nC_in := nC_reg
rules(i).io.nE_in := nE_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
x_reg := rules(i).io.x_out
nI_reg := rules(i).io.nI_out
nT_reg := rules(i).io.nT_out
nC_reg := rules(i).io.nC_out
nE_reg := rules(i).io.nE_out
}
}

def bool2boolean( e: Bool): Boolean = {
    if(e==true.B){
      return true
    }else{
      return false
    }
}
for(i <- 1 until (clientNUMS+1)){
for(j <- 1 until (clientNUMS+1)){
assert((!(i.U=/=j.U)||(!nC_reg(i)||(!nC_reg(j)))))
}
}
for(i <- 1 until (clientNUMS+1)){
for(j <- 1 until (clientNUMS+1)){
assert((!(i.U=/=j.U)||(!nE_reg(i)||(!nE_reg(j)))))
}
}
for(i <- 1 until (clientNUMS+1)){
for(j <- 1 until (clientNUMS+1)){
assert((!(i.U=/=j.U)||(!nE_reg(i)||(!nC_reg(j)))))
}
}
}