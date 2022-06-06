import chisel3._
import chiselsby._



class Counter(max_val: Int) extends Module with Formal {
  val io = IO(new Bundle {
    val count = Output(UInt(8.W))
  })
  val count = RegInit(0.U(8.W))
  count := count + 1.U
  when (count === max_val.U) {
    count := 0.U
  }
  io.count := count
  past(count, 1) { lastCount =>
    when(lastCount =/= max_val.U) {
      assert(lastCount + 1.U === count)
    }
  }
}

object Counter extends App {
  Check.kInduction(() => new Counter(10))
}


//object Counter extends App {
//  val dir = new File("outCounter")
//  dir.mkdirs
//  val systemVerilog = chisel3.stage.ChiselStage.emitSystemVerilog(new Counter(65))
//
//  val systemVerilogWriter = new FileWriter(new File(dir, "Counter.sv"))
//  systemVerilogWriter write systemVerilog
//  systemVerilogWriter.close()
//}