

import chisel3._


object Assertions {
  def past(v: UInt): UInt = {
    val pastReg = RegInit(v)
    pastReg := v
    pastReg
  }

  def stable(v: UInt): Unit = {
    assert(v === past(v))
  }

  def change(v: UInt): Unit = {
    assert(v =/= past(v))
  }

  def getVar(length: Int): UInt = {
    val any_v = Reg(UInt(length.W))
//    assume(v === past(v))
    any_v
  }

}