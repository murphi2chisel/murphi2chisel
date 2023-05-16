import chisel3._
import chisel3.util._
import message._
import cache_state._
class Init(num_clients:Int) extends node(num_clients){
when(io.en_r){
for(i <- 1 until (num_clients+1)){
io.channel1_out(i) := empty
io.channel2_4_out(i) := empty
io.channel3_out(i) := empty
io.cache_out(i) := invalid
io.home_sharer_list_out(i) := false.B
io.home_invalidate_list_out(i) := false.B
}

io.home_current_command_out := empty
io.home_exclusive_granted_out := false.B
}
}
class clientrequestssharedaccess(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when(((io.cache_in(cl)===invalid)&&(io.channel1_in(cl)===empty))){
io.channel1_out(cl) := req_shared
}
}
}
class clientrequestsexclusiveaccess(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when((((io.cache_in(cl)===invalid)||(io.cache_in(cl)===shared))&&(io.channel1_in(cl)===empty))){
io.channel1_out(cl) := req_exclusive
}
}
}
class homepicksnewrequest(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when(((io.home_current_command_in===empty)&&(io.channel1_in(cl)=/=empty))){
io.home_current_command_out := io.channel1_in(cl)
io.channel1_out(cl) := empty
io.home_current_client_out := cl.U
for(i <- 1 until (num_clients+1)){
io.home_invalidate_list_out(i) := io.home_sharer_list_in(i)
}

}
}
}
class homesendsinvalidatemessage(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when(((((io.home_current_command_in===req_shared)&&io.home_exclusive_granted_in)||(io.home_current_command_in===req_exclusive))&&(io.home_invalidate_list_in(cl)&&(io.channel2_4_in(cl)===empty)))){
io.channel2_4_out(cl) := invalidate
io.home_invalidate_list_out(cl) := false.B
}
}
}
class homereceivesinvalidateacknowledgement(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when(((io.home_current_command_in=/=empty)&&(io.channel3_in(cl)===invalidate_ack))){
io.home_sharer_list_out(cl) := false.B
io.home_exclusive_granted_out := false.B
io.channel3_out(cl) := empty
}
}
}
class sharerinvalidatescache(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when(((io.channel2_4_in(cl)===invalidate)&&(io.channel3_in(cl)===empty))){
io.channel2_4_out(cl) := empty
io.channel3_out(cl) := invalidate_ack
io.cache_out(cl) := invalid
}
}
}
class clientreceivessharedgrant(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when((io.channel2_4_in(cl)===grant_shared)){
io.cache_out(cl) := shared
io.channel2_4_out(cl) := empty
}
}
}
class clientreceivedexclusivegrant(num_clients:Int,cl:Int) extends node(num_clients){
when(io.en_r){
when((io.channel2_4_in(cl)===grant_exclusive)){
io.cache_out(cl) := exclusive
io.channel2_4_out(cl) := empty
}
}
}
class homesendsreplytoclient_shared(num_clients:Int) extends node(num_clients){
when(io.en_r){
when(((io.home_current_command_in===req_shared)&&((!io.home_exclusive_granted_in)&&(io.channel2_4_in(io.home_current_client_in)===empty)))){
io.home_sharer_list_out(io.home_current_client_in) := true.B
io.home_current_command_out := empty
io.channel2_4_out(io.home_current_client_in) := grant_shared
}
}
}
class homesendsreplytoclient_exclusive(num_clients:Int) extends node(num_clients){
when(io.en_r){
when(((io.home_current_command_in===req_exclusive)&&(forall(1,num_clients,i=>(io.home_sharer_list_in(i)===false.B))&&(io.channel2_4_in(io.home_current_client_in)===empty)))){
io.home_sharer_list_out(io.home_current_client_in) := true.B
io.home_current_command_out := empty
io.channel2_4_out(io.home_current_client_in) := grant_exclusive
}
}
}
