import chisel3._
import chisel3.util._
import chiselsby.{Check, Formal}

import java.io.{File, FileWriter}

class compareFIFOs(w: Int, size: Int) extends Module with Formal {

  val io = IO(new Bundle {
    val dataIn = Input(UInt(w.W))
    val push = Input(Bool())
    val pop = Input(Bool())
  })

  val srFifo = Module(new srFIFO(w, size)).io
  val rbFifo = Module(new rbFIFO(w, size)).io

  srFifo.dataIn := io.dataIn
  srFifo.push := io.push
  srFifo.pop := io.pop

  rbFifo.dataIn := io.dataIn
  rbFifo.push := io.push
  rbFifo.pop := io.pop

  assert(srFifo.empty === rbFifo.empty)
  assert(srFifo.full === srFifo.full)
  when (!srFifo.empty) {
    assert(srFifo.dataOut === rbFifo.dataOut)
  }


}

class srFIFO(w: Int, size: Int) extends Module{
  val addrW = log2Ceil(size)
  val io = IO(new Bundle{
    val dataIn = Input(UInt(w.W))
    val push = Input(Bool())
    val pop = Input(Bool())

    val dataOut = Output(UInt(w.W))
    val full = Output(Bool())
    val empty = Output(Bool())
  })

//  val memArray = new Array[Int](size)
//  for(i <- 0 until size) {
//    memArray(i) = 0
//  }
//  val memRegs = RegInit(VecInit(memArray.map(_.U(w.W))))
  val memRegs = Mem(size, UInt(w.W))

  val tailReg = RegInit(0.U(addrW.W))
  val emptyReg = RegInit(true.B)

  when(io.push & !io.full) {
    for(i <- (size - 1) to 1 by -1) {
      memRegs(i) := memRegs(i - 1)
    }
    memRegs(0) := io.dataIn
    when(!emptyReg) {
      tailReg := tailReg + 1.U
    }
    emptyReg := false.B
  }.elsewhen(io.pop & !emptyReg) {
    when(tailReg === 0.U) {
      emptyReg := true.B
    }
    when(tailReg === 0.U) {
      emptyReg := true.B
    }.otherwise {
      tailReg := tailReg - 1.U
    }
  }

  io.dataOut := memRegs(tailReg)
  io.empty := emptyReg
  io.full := tailReg === (size - 1).U
}

class rbFIFO(w: Int, size: Int) extends Module {
  val addrW = log2Ceil(size)
  val io = IO(new Bundle {
    val dataIn = Input(UInt(w.W))
    val push = Input(Bool())
    val pop = Input(Bool())

    val dataOut = Output(UInt(w.W))
    val full = Output(Bool())
    val empty = Output(Bool())
  })

//  val memArray = new Array[Int](size)
//  for(i <- 0 until size) {
//    memArray(i) = 0
//  }
//  val memRegs = RegInit(VecInit(memArray.map(_.U(w.W))))
  val memRegs = Mem(size, UInt(w.W))
  val tailReg = RegInit(0.U(addrW.W))
  val headReg = RegInit(0.U(addrW.W))
  val emptyReg = RegInit(true.B)

  when(io.push & !io.full) {
    memRegs(headReg) := io.dataIn
    headReg := headReg + 1.U
    emptyReg := false.B
  }.elsewhen(io.pop & !emptyReg) {
    tailReg := tailReg + 1.U
    when((tailReg + 1.U) === headReg) {
      emptyReg := true.B
    }
  }

  io.empty := emptyReg
  io.dataOut := memRegs(tailReg)
  io.full := (tailReg === headReg) & !emptyReg
}

//object FIFOs extends App {
//  val dir = new File("FIFOs")
//  dir.mkdirs
//  val systemVerilog = chisel3.stage.ChiselStage.emitSystemVerilog(new compareFIFOs(4, 16))
//
//  val systemVerilogWriter = new FileWriter(new File(dir, "FIFOs.sv"))
//  systemVerilogWriter write systemVerilog
//  systemVerilogWriter.close()
//}

object FIFOs extends App {
  Check.pdr(() => new compareFIFOs(4, 8))
}