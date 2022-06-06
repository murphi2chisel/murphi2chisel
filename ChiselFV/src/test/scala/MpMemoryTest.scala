import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class MpMemoryTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "Memory"

  it should "pass in Spec" in {
    test(new MpMemorySpec(2, 2, 32, 8)) { c =>
      c.io.wrAddr(0).poke(0x17.U)
      c.io.wrData(0).poke(0x40.U)
      c.io.wrEna(0).poke(true.B)
      c.clock.step(1)
      c.io.rdAddr(0).poke(0x17.U)
      c.io.rdData(0).expect(0x40.U)
      c.io.rdAddr(1).poke(0x17.U)
      println(c.io.rdData(1).peek())
    }
  }

  it should "pass in LVTMp" in {
    test(new LVTMultiPortRams(2, 2, 32, 8)) { c =>
      c.io.wrAddr(0).poke(5.U)
      c.io.wrData(0).poke(10.U)
      c.io.wrEna(0).poke(true.B)
      c.clock.step(1)
      c.io.rdAddr(0).poke(5.U)
      c.io.rdData(0).expect(10.U)
      c.io.rdAddr(1).poke(6.U)
      println(c.io.rdData(1).peek())
    }
  }
}
