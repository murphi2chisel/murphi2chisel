import chisel3._
import chisel3.util._
class Try(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when(io.nI_in(i)){
io.nI_out(i) := false.B
io.nT_out(i) := true.B
}
}
}
class Crit(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when((io.nT_in(i)&&(io.x_in===true.B))){
io.nT_out(i) := false.B
io.nC_out(i) := true.B
io.x_out := false.B
}
}
}
class Exit(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when(io.nC_in(i)){
io.nC_out(i) := false.B
io.nE_out(i) := true.B
}
}
}
class Idle(clientNUMS:Int,i:Int) extends node(clientNUMS){
when(io.en_r){
when(io.nE_in(i)){
io.nE_out(i) := false.B
io.nI_out(i) := true.B
io.x_out := true.B
}
}
}
class Str_Idle(clientNUMS:Int) extends node(clientNUMS){
when(io.en_r){
when((List.range(1, clientNUMS).forall(j => bool2boolean(((!io.nE_in(j))&&(!io.nC_in(j))))).B&&(io.x_in===false.B))){
io.x_out := true.B
}
}
}
class Str_Crit(clientNUMS:Int) extends node(clientNUMS){
when(io.en_r){
when((io.x_in===true.B)){
io.x_out := false.B
}
}
}
