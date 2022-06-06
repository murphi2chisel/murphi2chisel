import Chisel.log2Ceil
import chisel3._
import chiselsby.{Check, Formal}

import java.io.{File, FileWriter}


class LiveValueTable(m: Int, n: Int, size: Int, addrW: Int) extends Module {
  val io = IO(new Bundle{
    val wrAddr = Input(Vec(m, UInt(addrW.W)))
    val wrEna = Input(Vec(m, Bool()))

    val rdAddr = Input(Vec(n, UInt(addrW.W)))
    val rdIdx = Output(Vec(n, UInt(math.ceil(math.log(m) / math.log(2)).toInt.W))) })

  // initialization
  val lvtInitArray = new Array[Int](size)
  for(i <- 0 until size) {
    lvtInitArray(i) = 0
  }
  val lvtReg = RegInit(VecInit(lvtInitArray.map(_.U(math.ceil(math.log(m) / math.log(2)).toInt.W))))

  for(i <- 0 until m) {
    when(io.wrEna(i) === true.B) {
      lvtReg(io.wrAddr(i)) := i.U
    }
  }

  for(i <- 0 until n) {
    io.rdIdx(i) := lvtReg(io.rdAddr(i))
  }
}


class LVTMultiPortRams(m: Int, n: Int, size: Int, w: Int) extends Module{
  val addrW: Int = log2Ceil(size)
  val io = IO(new Bundle{
    val wrAddr = Input(Vec(m, UInt(addrW.W)))
    val wrData = Input(Vec(m, UInt(w.W)))
    val wrEna = Input(Vec(m, Bool()))

    val rdAddr = Input(Vec(n, UInt(addrW.W)))
    val rdData = Output(Vec(n, UInt(w.W)))
  })
  val mems = VecInit(Seq.fill(m * n)(Module(new Memory(size, w)).io))
  val lvt = Module(new LiveValueTable(m, n, size, addrW))

  for(i <- 0 until m) {
    for(j <- 0 until n) {
      mems(i * n + j).wrEna := io.wrEna(i)
      mems(i * n + j).wrAddr := io.wrAddr(i)
      mems(i * n + j).wrData := io.wrData(i)
      mems(i * n + j).rdAddr := io.rdAddr(j)
    }
  }
  for(i <- 0 until m) {
    lvt.io.wrEna(i) := io.wrEna(i)
    lvt.io.wrAddr(i) := io.wrAddr(i)
  }
  for(i <- 0 until n) {
    lvt.io.rdAddr(i) := io.rdAddr(i)
  }
  for(i <- 0 until n) {
    val sel = lvt.io.rdIdx(i)
    io.rdData(i) := mems(sel * n.U + i.U).rdData
  }
}

class MultiPortedMemory(m: Int, n: Int, size: Int, w: Int) extends Module with Formal {
  val addrW = log2Ceil(size)
  val io = IO(new Bundle{
    val wrAddr = Input(Vec(m, UInt(addrW.W)))
    val wrData = Input(Vec(m, UInt(w.W)))
    val wrEna = Input(Vec(m, Bool()))

    val rdAddr = Input(Vec(n, UInt(addrW.W)))
    val rdData = Output(Vec(n, UInt(w.W)))
  })
  val mpMemory = Module(new LVTMultiPortRams(m, n, size, w))
  mpMemory.io.wrAddr := io.wrAddr
  mpMemory.io.wrData := io.wrData
  mpMemory.io.wrEna := io.wrEna
  mpMemory.io.rdAddr := io.rdAddr
  io.rdData := mpMemory.io.rdData

  // Spec
  val addr = anyconst(addrW)
  val flag = initialReg(1, 0)
  val data = Reg(UInt(w.W))
  val wire = WireInit(0.U(1.W))
  flag.io.in := wire
  for (i <- 0 until m) {
    when(io.wrAddr(i) === addr && io.wrEna(i) === true.B) {
      data := io.wrData(i)
      wire := 1.U
      for(j <- 0 until m) {
        if (i != j) {
          assume(io.wrAddr(j) =/= addr || io.wrEna(j) === false.B)
        }
      }
    }
  }
  for (i <- 0 until n) {
    when(io.rdAddr(i) === addr && flag.io.out === 1.U) {
      assert(io.rdData(i) === data)
    }
  }
}

object Main extends App {
  Check.kInduction(() => new MultiPortedMemory(m = 2, n = 2, size = 32, w = 8))
}
