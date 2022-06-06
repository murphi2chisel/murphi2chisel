import chisel3._
import chisel3.util._

import java.io.{File, FileWriter}


class MpMemorySpec(read_ports: Int, write_ports: Int, size: Int, width: Int) extends Module {
  val address_width = log2Ceil(size)
  val io = IO(new Bundle {
    val wrAddr = Input(Vec(write_ports, UInt(address_width.W)))
    val wrData = Input(Vec(write_ports, UInt(width.W)))
    val wrEna = Input(Vec(write_ports, Bool()))

    val rdAddr = Input(Vec(read_ports, UInt(address_width.W)))
    val rdData = Output(Vec(read_ports, UInt(width.W)))
  })

  val real_size = math.pow(2, address_width).toInt
  val initArray = new Array[Int](real_size)
  for (i <- 0 until real_size) {
    initArray(i) = 0
  }
  val memReg = RegInit(VecInit(initArray.map(_.U(width.W))))

  for (i <- 0 until write_ports) {
    when (io.wrEna(i) === true.B) {
      memReg(io.wrAddr(i)) := io.wrData(i)
    }
  }

  for (i <- 0 until read_ports) {
    io.rdData(i) := memReg(io.rdAddr(i))
  }
}

class TestBench(read_ports: Int, write_ports: Int, size: Int, width: Int) extends Module {
  val io = IO(new Bundle {
    val wrAddr = Input(Vec(write_ports, UInt(32.W)))
    val wrData = Input(Vec(write_ports, UInt(width.W)))
    val wrEna = Input(Vec(write_ports, Bool()))
    val rdAddr = Input(Vec(read_ports, UInt(32.W)))
  })

  val spec = Module(new MpMemorySpec(read_ports, write_ports, size, width)).io

  val mpMem = Module(new LVTMultiPortRams(read_ports, write_ports, size, width)).io

  val specData = WireInit(VecInit(Seq.fill(read_ports)(0.U(width.W))))
  val mpData = WireInit(VecInit(Seq.fill(read_ports)(0.U(width.W))))

  spec.wrAddr := io.wrAddr
  spec.wrData := io.wrData
  spec.wrEna := io.wrEna
  spec.rdAddr := io.rdAddr
  specData := spec.rdData

  mpMem.wrAddr := io.wrAddr
  mpMem.wrData := io.wrData
  mpMem.wrEna := io.wrEna
  mpMem.rdAddr := io.rdAddr
  mpData := mpMem.rdData

  for (i <- 0 until read_ports) {
    assert(specData(i) === mpData(i))
  }
}

object TestBench extends App {
  val dir = new File("outMemSpec")
  dir.mkdir()
  val systemVerilog = chisel3.stage.ChiselStage.emitSystemVerilog(new TestBench(read_ports = 2, write_ports = 2, size = 32, width = 8))

  val systemVerilogWriter = new FileWriter(new File(dir, "TestBench.sv"))
  systemVerilogWriter write systemVerilog
  systemVerilogWriter.close()
}