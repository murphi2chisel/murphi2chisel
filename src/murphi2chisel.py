import argparse
from load import *
import os

# export PATH=/home/ubuntu/oss-cad-suite/bin:$PATH
# python murphi2chisel.py -v -f ./example/mutual.m -c 2 3 -o mutual
# python murphi2chisel.py -p -f ./example/mutual.m -c 2 3 -o mutual
# python murphi2chisel.py -v -f ./example/german.m -c 2 2 -o german
# python murphi2chisel.py -v -f ./example/flash.m -c 2 2 -o flash
# python murphi2chisel.py -v -f ./example/protocol_noData.m -c 4 7 2 5 -o protocol_noData
# python murphi2chisel.py -p -f ./example/tilelink.m -c 2 3 2 5 -o tilelink


def parse_args():
    parser = argparse.ArgumentParser(
        prog='Murphi2Chisel',
        description='convert Murphi model to RTL in Chisel',
        epilog='Murphi2Chisel')
    parser.add_argument('-v', '--verify', action='store_true',
                        help='parse and verify')
    parser.add_argument('-v2', '--avr', action='store_true',
                        help='parse and verify')
    parser.add_argument('-v3', '--test', action='store_true',
                        help='parse and verify')
    parser.add_argument('-p', '--parse', action='store_true',
                        help='parse without verify')
    parser.add_argument('-f', '--file', dest="file",
                        type=str, help='input file in Muprhi')
    parser.add_argument("-c", "--constlist", dest="constlist",
                        type=int, nargs="+", help="const params in the protocol")
    parser.add_argument("-o", "--out", dest="out",
                        type=str, help="output dirname")
    args = parser.parse_args()
    return args


if __name__ == "__main__":
    args = parse_args()
    inputfile = args.file
    outdir = args.out
    parser = murphi_parser(outdir, inputfile)
    protocolName = inputfile 
    if args.parse:
        parser.parse()
    elif args.verify:
        parser.parse()
        home = "../.."
        constlist = args.constlist
        print(constlist)
        t = []
        i = 0
        for x in constlist:
            t.append("args(%d).toInt" % i)
            i += 1
        gen_system_script = """
        import chisel3._
        import chiselsby.Check
        object gensystem extends App {
            Check.generateRTL(() => new system(%s))
        } 
        """ % ','.join(t)
        with open("../%s/gen_system.scala" % outdir, "w") as f:
            f.write(gen_system_script)
        os.system(
            "cp ../%s/gen_system.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/cache_pkg.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/node.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/router.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/system.scala ./external/chisel-template/src/main/scala" % outdir)
        os.chdir("./external/chisel-template")
        os.system("sbt \"runMain gensystem %s\"" %
                  ' '.join(str(const) for const in constlist))
        # delete random init, add init:reset==1
        f1 = open('./system_build/system.sv')
        os.chdir("../..")
        f2 = open('../%s/protocol.sv' % outdir, 'w')
        sv = ""
        flag = False
        for line in f1:
            if "`ifndef SYNTHESIS" in line:
                flag = True
            if flag == False:
                sv += line
            if "`endif // SYNTHESIS" in line:
                flag = False
            if "initial begin" in line:
                sv += """
                initial begin
                    assume(reset==1);
                end\n
                """
        f2.write(sv)
        f1.close()
        f2.close()
        os.chdir("../%s" % outdir)
        f3 = open("./gen.ys" , 'w')
        f3.write("""
        read_verilog -formal protocol.sv
        prep -top system
        flatten
        memory -nordff
        setundef -undriven -init -expose
        delete -output
        techmap
        abc -fast -g AND
        write_aiger -zinit protocol.aig
        """)
        f3.close()
        os.system("yosys ../%s/gen.ys" % outdir)
        os.system("cp protocol.aig ../src/external/abc-master")
        os.chdir("../src/external/abc-master")
        os.system("./abc -c \"r protocol.aig; fold; strash; pdr\" >out.log 2>&1 ")
        os.system("cp out.log ../../../%s/ " % outdir)
    elif args.avr:
        parser.parse()
        home = "../.."
        constlist = args.constlist
        print(constlist)
        t = []
        i = 0
        for x in constlist:
            t.append("args(%d).toInt" % i)
            i += 1
        gen_system_script = """
        import chisel3._
        import chiselsby.Check
        object gensystem extends App {
            Check.generateRTL(() => new system(%s))
        } 
        """ % ','.join(t)
        with open("../%s/gen_system.scala" % outdir, "w") as f:
            f.write(gen_system_script)
        os.system(
            "cp ../%s/gen_system.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/cache_pkg.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/node.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/router.scala ./external/chisel-template/src/main/scala" % outdir)
        os.system(
            "cp ../%s/system.scala ./external/chisel-template/src/main/scala" % outdir)
        os.chdir("./external/chisel-template")
        os.system("sbt \"runMain gensystem %s\"" %
                  ' '.join(str(const) for const in constlist))
        # delete random init, add init:reset==1
        f1 = open('./system_build/system.sv')
        os.chdir("../..")
        f2 = open('../%s/protocol.sv' % outdir, 'w')
        sv = ""
        flag = False
        for line in f1:
            if "`ifndef SYNTHESIS" in line:
                flag = True
            if flag == False:
                sv += line
            if "`endif // SYNTHESIS" in line:
                flag = False
            if "initial begin" in line:
                sv += """
                initial begin
                    assume(reset==1);
                end\n
                """
        f2.write(sv)
        f1.close()
        f2.close()
        os.chdir("../%s" % outdir)
        f3 = open("./gen.ys" , 'w')
        f3.write("""
        read -formal ./protocol.sv;
        prep -top system;
        flatten;
        memory -nomap;
        hierarchy -check;
        setundef -undriven -expose;
        write_btor protocol.btor2;
        """)
        f3.close()
        os.system("yosys ../%s/gen.ys" % outdir)
        os.system("cp protocol.btor2 ../src/external/avr-master")
        os.chdir("../src/external/avr-master")
        os.system("python3 avr.py -o ../../../%s -n bar ./protocol.btor2 " % outdir)
        os.system("cp out.log ../../../%s/ " % outdir)
    elif args.test:
        # parser.parse()
        # home = "../.."
        # constlist = args.constlist
        # print(constlist)
        # t = []
        # i = 0
        # for x in constlist:
        #     t.append("args(%d).toInt" % i)
        #     i += 1
        # gen_system_script = """
        # import chisel3._
        # import chiselsby.Check
        # object gensystem extends App {
        #     Check.generateRTL(() => new system(%s))
        # } 
        # """ % ','.join(t)
        # with open("../%s/gen_system.scala" % outdir, "w") as f:
        #     f.write(gen_system_script)
        # os.system(
        #     "cp ../%s/gen_system.scala ./external/chisel-template/src/main/scala" % outdir)
        # os.system(
        #     "cp ../%s/cache_pkg.scala ./external/chisel-template/src/main/scala" % outdir)
        # os.system(
        #     "cp ../%s/node.scala ./external/chisel-template/src/main/scala" % outdir)
        # os.system(
        #     "cp ../%s/router.scala ./external/chisel-template/src/main/scala" % outdir)
        # os.system(
        #     "cp ../%s/system.scala ./external/chisel-template/src/main/scala" % outdir)
        # os.chdir("./external/chisel-template")
        # os.system("sbt \"runMain gensystem %s\"" %
        #           ' '.join(str(const) for const in constlist))
        # # delete random init, add init:reset==1
        # f1 = open('./system_build/system.sv')
        # os.chdir("../..")
        f1 = open('../%s/german.sv' % outdir)
        f2 = open('../%s/protocol.sv' % outdir, 'w')
        sv = ""
        flag = False
        for line in f1:
            if "`ifndef SYNTHESIS" in line:
                flag = True
            if flag == False:
                sv += line
            if "`endif // SYNTHESIS" in line:
                flag = False
            if "initial begin" in line:
                sv += """
                initial begin
                    assume(reset==1);
                end\n
                """
        f2.write(sv)
        f1.close()
        f2.close()
        os.chdir("../%s" % outdir)
        f3 = open("./gen.ys" , 'w')
        f3.write("""
        read_verilog -formal protocol.sv
        prep -top german
        flatten
        memory -nordff
        setundef -undriven -init -expose
        delete -output
        techmap
        abc -fast -g AND
        write_aiger  protocol.aig
        """)
        f3.close()
        os.system("yosys ../%s/gen.ys" % outdir)
        os.system("cp protocol.aig ../src/external/abc-master")
        os.chdir("../src/external/abc-master")
        os.system("./abc -c \"r protocol.aig; fold; strash; pdr\" >out.log 2>&1 ")
        os.system("cp out.log ../../../%s/ " % outdir)