import chisel3._
import chiselsby.{Check, Formal}


class Test extends Module with Formal {
  val io = IO(new Bundle {
    val out = Output(UInt(8.W))
  })
  val reg = RegInit(2.U(8.W))
  io.out := reg
  when (reg =/= 8.U) {
    reg := reg + 1.U
  } .otherwise {
    reg := 2.U
  }

  assert(reg >= 2.U)
//  assert(reg <= 8.U)
}

object Test extends App {
//  Check.generateRTL(() => new Test)

//  Check.pdr(
//    () => new Test
//  )

//  Check.bmc(() => new Test)

  Check.kInduction(() => new Test)
}