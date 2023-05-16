import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import message._
import cache_state._
class system(num_clients:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((num_clients-1+1)*8+2+1).W))
val channel1_out = Output(Vec(num_clients+1,message()))
val channel2_4_out = Output(Vec(num_clients+1,message()))
val channel3_out = Output(Vec(num_clients+1,message()))
val home_sharer_list_out = Output(Vec(num_clients+1,Bool()))
val home_invalidate_list_out = Output(Vec(num_clients+1,Bool()))
val home_exclusive_granted_out = Output(Bool())
val home_current_command_out = Output(message())
val home_current_client_out = Output(UInt(log2Ceil((num_clients+1)).W))
val cache_out = Output(Vec(num_clients+1,cache_state()))
})
var rules = ArrayBuffer[node]()
val channel1_reg = Reg(Vec(num_clients+1,message()))
io.channel1_out:=channel1_reg
val channel2_4_reg = Reg(Vec(num_clients+1,message()))
io.channel2_4_out:=channel2_4_reg
val channel3_reg = Reg(Vec(num_clients+1,message()))
io.channel3_out:=channel3_reg
val home_sharer_list_reg = Reg(Vec(num_clients+1,Bool()))
io.home_sharer_list_out:=home_sharer_list_reg
val home_invalidate_list_reg = Reg(Vec(num_clients+1,Bool()))
io.home_invalidate_list_out:=home_invalidate_list_reg
val home_exclusive_granted_reg = Reg(Bool())
io.home_exclusive_granted_out:=home_exclusive_granted_reg
val home_current_command_reg = Reg(message())
io.home_current_command_out:=home_current_command_reg
val home_current_client_reg = Reg(UInt(log2Ceil((num_clients+1)).W))
io.home_current_client_out:=home_current_client_reg
val cache_reg = Reg(Vec(num_clients+1,cache_state()))
io.cache_out:=cache_reg
rules += Module(new Init(num_clients))
for(cl <- 1 until (num_clients+1)){
rules += Module(new clientrequestssharedaccess(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new clientrequestsexclusiveaccess(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new homepicksnewrequest(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new homesendsinvalidatemessage(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new homereceivesinvalidateacknowledgement(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new sharerinvalidatescache(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new clientreceivessharedgrant(num_clients,cl))
}
for(cl <- 1 until (num_clients+1)){
rules += Module(new clientreceivedexclusivegrant(num_clients,cl))
}
rules += Module(new homesendsreplytoclient_shared(num_clients))
rules += Module(new homesendsreplytoclient_exclusive(num_clients))
for(i <- 0 until (num_clients-1+1)*8+2+1) {
rules(i).io.channel1_in := channel1_reg
rules(i).io.channel2_4_in := channel2_4_reg
rules(i).io.channel3_in := channel3_reg
rules(i).io.home_sharer_list_in := home_sharer_list_reg
rules(i).io.home_invalidate_list_in := home_invalidate_list_reg
rules(i).io.home_exclusive_granted_in := home_exclusive_granted_reg
rules(i).io.home_current_command_in := home_current_command_reg
rules(i).io.home_current_client_in := home_current_client_reg
rules(i).io.cache_in := cache_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
channel1_reg := rules(i).io.channel1_out
channel2_4_reg := rules(i).io.channel2_4_out
channel3_reg := rules(i).io.channel3_out
home_sharer_list_reg := rules(i).io.home_sharer_list_out
home_invalidate_list_reg := rules(i).io.home_invalidate_list_out
home_exclusive_granted_reg := rules(i).io.home_exclusive_granted_out
home_current_command_reg := rules(i).io.home_current_command_out
home_current_client_reg := rules(i).io.home_current_client_out
cache_reg := rules(i).io.cache_out
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
  def exists(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) | f(i + 1)
    }
    return v(right - left)
  }
for(c1 <- 1 until (num_clients+1)){
for(c2 <- 1 until (num_clients+1)){
assert((!((c1.U=/=c2.U)&&(cache_reg(c1)===exclusive))||(cache_reg(c2)===invalid)))
}
}
}