
import chisel3._
import chisel3.experimental.chiselName

import java.io.{File, FileWriter}



class InOut extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(32.W))
    val out = Output(UInt(32.W))
  })
  io.out := io.in
}

class VerificationBench() extends Module {
  val io = IO(new Bundle() {
    val out = Output(UInt(32.W))
  })
  val inout = Module(new InOut).io
  val v = Assertions.getVar(32)
  inout.in := v
  Assertions.stable(inout.out)
  io.out := inout.out
}


object InOut extends App {
  val dir = new File("inout")
  dir.mkdirs
  val systemVerilog = chisel3.stage.ChiselStage.emitSystemVerilog(new VerificationBench())

  val systemVerilogWriter = new FileWriter(new File(dir, "inout.sv"))
  systemVerilogWriter write systemVerilog
  systemVerilogWriter.close()
}
