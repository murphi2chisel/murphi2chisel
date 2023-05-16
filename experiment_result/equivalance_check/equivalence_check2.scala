//check the num of reachable state of Murphi ==  the num of reachable state of Chisel
//compute the reachable state of Chisel by bfs, using peekpoke 

package german

import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import CACHE_STATE._
import java.io._

import util.control.Breaks._

class protocolTest extends AnyFlatSpec with ChiselScalatestTester {
  behavior of "German"
  it should "reachable state bfs" in {
    test(new system(2,1)) { c=>
      def p(): String = {
        var s: List[String] = List()
        s = s:+ ("Cache[1].State:" + c.io.Cache_out(1).State.peek().toString())
        s = s:+ ("Cache[1].Data:" +c.io.Cache_out(1).Data.peek().toString())
        s = s:+ ("Cache[2].State:" +c.io.Cache_out(2).State.peek().toString())
        s = s:+ ("Cache[2].Data:" +c.io.Cache_out(2).Data.peek().toString())

        s = s:+ ("Chan1[1].Stata:" + c.io.Chan1_out(1).Cmd.peek().toString())
        s = s:+ ("Chan1[1].Stata:" + c.io.Chan1_out(1).Data.peek().toString())
        s = s:+ ("Chan1[2].Stata:" +c.io.Chan1_out(2).Cmd.peek().toString())
        s = s:+ ("Chan1[2].Stata:" +c.io.Chan1_out(2).Data.peek().toString())
        s = s :+ ("Chan2[1].Stata:" + c.io.Chan2_out(1).Cmd.peek().toString())
        s = s :+ ("Chan2[1].Stata:" + c.io.Chan2_out(1).Data.peek().toString())
        s = s :+ ("Chan2[2].Stata:" + c.io.Chan2_out(2).Cmd.peek().toString())
        s = s :+ ("Chan2[2].Stata:" + c.io.Chan2_out(2).Data.peek().toString())
        s = s :+ ("Chan3[1].Stata:" + c.io.Chan3_out(1).Cmd.peek().toString())
        s = s :+ ("Chan3[1].Stata:" + c.io.Chan3_out(1).Data.peek().toString())
        s = s :+ ("Chan3[2].Stata:" + c.io.Chan3_out(2).Cmd.peek().toString())
        s = s :+ ("Chan3[2].Stata:" + c.io.Chan3_out(2).Data.peek().toString())


        s = s:+ ("InvSet[1]:"+c.io.InvSet_out(1).peek().toString())
        s = s:+ ("InvSet[2]:"+c.io.InvSet_out(2).peek().toString())

        s = s:+ ("ShrSet[1]:"+c.io.ShrSet_out(1).peek().toString())
        s = s:+ ("ShrSet[1]:"+c.io.ShrSet_out(2).peek().toString())

        s = s:+ ("Exgntd:"+c.io.ExGntd_out.peek().toString())
        s = s:+ ("CurCmd:"+c.io.CurCmd_out.peek().toString())
        s = s:+ ("Curptr:"+c.io.CurPtr_out.peek().toString())
        s = s:+ ("MemData:"+c.io.MemData_out.peek().toString())
        s = s:+ ("AuxData:"+c.io.AuxData_out.peek().toString())
        var res:String = ""
        for(x <- s){
          res+=x+"\n"
        }
        res += "\n"

        return res
      }
      val writer = new PrintWriter(new File("trace2.txt" ))

      var init:Int = 0
      var q:List[(List[Int], String)] = List()
      var states:Set[String] = Set()

      def isvisited(s:String):Boolean={
        if(states.contains(s)){
          return true
        }
        false
      }

      def nextState(path:List[Int],i:Int):String = {
        c.io.en_a.poke(0)
        c.clock.step()
        for(e <- path){
          c.io.en_a.poke(e)
          c.clock.step()
        }
        c.io.en_a.poke(i)
        c.clock.step()
        return p()
      }


      //init0
      c.io.en_a.poke(init)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
      c.clock.step()
      q = q:+(List(init),p())
      states = states.+(p())
      writer.write(p())
      while(q.nonEmpty){
        var s = q.head
        var path = s._1
        q = q.drop(1)
        println(states.size.toString +","+ q.size.toString)
        for(i <- 1 until 24){
          var s_ = nextState(path,i)
          if(!isvisited(s_)){
            writer.write(s_)
            states = states.+(s_)
            q=q:+(path:+i,s_)
          }
        }
      }


      println("final:  "+states.size.toString +","+ q.size.toString)
      writer.close()

    }
  }




}

