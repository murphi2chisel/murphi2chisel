import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
object message extends ChiselEnum {
val empty,req_shared,req_exclusive,invalidate,invalidate_ack,grant_shared,grant_exclusive = Value
}

object cache_state extends ChiselEnum {
val invalid,shared,exclusive = Value
}

