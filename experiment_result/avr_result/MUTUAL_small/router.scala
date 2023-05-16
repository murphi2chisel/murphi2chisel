import chisel3._
import chisel3.util._
import state._
class Init(clientNUMS:Int) extends node(clientNUMS){
when(io.en_r){
for(i <- 1 until (clientNUMS+1)){
io.n_out(i) := I
}

io.x_out := true.B
}
}
class Try(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when((io.n_in(i)===I)){
io.n_out(i) := T
}
}
}
class Crit(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when(((io.n_in(i)===T)&&(io.x_in===true.B))){
io.n_out(i) := C
io.x_out := false.B
}
}
}
class Exit(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when((io.n_in(i)===C)){
io.n_out(i) := E
}
}
}
class Idle(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when((io.n_in(i)===E)){
io.n_out(i) := I
io.x_out := true.B
}
}
}
