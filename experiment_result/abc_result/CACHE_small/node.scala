import chisel3._
import chisel3.util._
import message._
import cache_state._
class node(num_clients:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val channel1_in = Input(Vec(num_clients+1,message()))
val channel1_out = Output(Vec(num_clients+1,message()))
val channel2_4_in = Input(Vec(num_clients+1,message()))
val channel2_4_out = Output(Vec(num_clients+1,message()))
val channel3_in = Input(Vec(num_clients+1,message()))
val channel3_out = Output(Vec(num_clients+1,message()))
val home_sharer_list_in = Input(Vec(num_clients+1,Bool()))
val home_sharer_list_out = Output(Vec(num_clients+1,Bool()))
val home_invalidate_list_in = Input(Vec(num_clients+1,Bool()))
val home_invalidate_list_out = Output(Vec(num_clients+1,Bool()))
val home_exclusive_granted_in = Input(Bool())
val home_exclusive_granted_out = Output(Bool())
val home_current_command_in = Input(message())
val home_current_command_out = Output(message())
val home_current_client_in = Input(UInt(log2Ceil((num_clients+1)).W))
val home_current_client_out = Output(UInt(log2Ceil((num_clients+1)).W))
val cache_in = Input(Vec(num_clients+1,cache_state()))
val cache_out = Output(Vec(num_clients+1,cache_state()))
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
io.channel1_out:=io.channel1_in
io.channel2_4_out:=io.channel2_4_in
io.channel3_out:=io.channel3_in
io.home_sharer_list_out:=io.home_sharer_list_in
io.home_invalidate_list_out:=io.home_invalidate_list_in
io.home_exclusive_granted_out:=io.home_exclusive_granted_in
io.home_current_command_out:=io.home_current_command_in
io.home_current_client_out:=io.home_current_client_in
io.cache_out:=io.cache_in
}
