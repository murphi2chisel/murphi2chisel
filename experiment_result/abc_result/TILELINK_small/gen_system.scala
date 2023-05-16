
    import chisel3._
    import chiselsby.Check
    object gensystem extends App {
        Check.generateRTL(() => new system(args(0).toInt,args(1).toInt,args(2).toInt,args(3).toInt))
    } 
    