import argparse
from load import *
import os

# export PATH=/home/ubuntu/oss-cad-suite/bin:$PATH
# python murphi2chisel.py -v3 -f example/mutual.m -c 2 -o ../mutual
# python murphi2chisel.py -p -f example/mutual.m -c 2 3 -o ../mutual
# python murphi2chisel.py -v -f example/german.m -c 2 2 -o ../german
# python murphi2chisel.py -v -f example/flash.m -c 2 2 -o ../flash
# python murphi2chisel.py -v -f example/protocol_noData.m -c 4 7 2 5 -o ../protocol_noData
# python murphi2chisel.py -p -f ./example/tilelink.m -c 2 3 2 5 -o ../tilelink


protocol_dir = ""
out_dir = ""
chisel_dir = ""
avr_dir = ""
cmurphi_dir = ""
constlist = []


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        prog='Murphi2Chisel',
        description='convert Murphi model to RTL in Chisel',
        epilog='Murphi2Chisel')
    parser.add_argument('-v1', '--verifyabc', action='store_true',
                        help='parse and verify in abc')
    parser.add_argument('-v2', '--verifyavr', action='store_true',
                        help='parse and verify in abc')
    parser.add_argument('-v3', '--verifycmurphi', action='store_true',
                        help='parse and verify in avr')
    parser.add_argument('-p', '--parse', action='store_true',
                        help='parse without verify in cmurphi')
    parser.add_argument('-f', '--file', dest="file",
                        type=str, help='input file in Muprhi')
    parser.add_argument("-c", "--constlist", dest="constlist",
                        type=int, nargs="+", help="const params in the protocol")
    parser.add_argument("-o", "--out", dest="out",
                        type=str, help="output dirname")
    args = parser.parse_args()
    return args

def chisel2verilog():
    t = [f"args({i}).toInt" for i in range(len(constlist))]
    s = gen_system_script(','.join(t))
    with open(f"{out_dir}/gen_system.scala", 'w') as f:
        f.write(s)
    for file_name in ['gen_system.scala', 'cache_pkg.scala', 'node.scala', 'router.scala', 'system.scala']:
        os.system(f"cp {out_dir}/{file_name} {chisel_dir}/src/main/scala")
    os.chdir(chisel_dir)
    os.system(f"sbt \"runMain gensystem {' '.join(str(const) for const in constlist)}\"")
    with open(f"{chisel_dir}/system_build/system.sv") as f1, open(f"{out_dir}/protocol.sv", 'w') as f2:
        sv = ""
        flag = False
        for line in f1:
            if "`ifndef SYNTHESIS" in line:
                flag = True
            if not flag:
                sv += line
            if "`endif // SYNTHESIS" in line:
                flag = False
            if "initial begin" in line:
                sv += """
                initial begin
                    assume(reset==1 && io_en_a==0);
                end\n
                """
        f2.write(sv)
    os.chdir(out_dir)



if __name__ == "__main__":
    args = parse_args()
    cwd = os.getcwd()
    protocol_dir = f"{cwd}/{args.file}" if args.file else cwd
    out_dir = f"{cwd}/{args.out}" if args.out else cwd
    chisel_dir = f"{cwd}/external/chisel-template"
    avr_dir = f"{cwd}/external/avr-master"
    cmurphi_dir = f"{cwd}/external/cmurphi"
    parser = murphi_parser(out_dir, protocol_dir)
    constlist = args.constlist
    if args.parse:
        parser.parse()
    elif args.verifyabc:
        parser.parse()
        chisel2verilog()
        s = sby_script()
        with open("v.sby","w") as f:
            f.write(s)
        os.system("sby -f v.sby")

    elif args.verifyavr:
        parser.parse()
        chisel2verilog()
        with open("./gen.ys", 'w') as f:
            f.write("""
            read -formal ./protocol.sv;
            prep -top system;
            flatten;
            memory -nomap;
            hierarchy -check;
            setundef -undriven -expose;
            write_btor protocol.btor2;
            """)
        os.system("yosys ./gen.ys")
        os.system(f"cp protocol.btor2 {avr_dir}")
        os.chdir(avr_dir)
        os.system(f"python3 avr.py -o {out_dir} -n bar ./protocol.btor2 " )
        os.system(f"cp out.log {out_dir}/ " )
    elif args.verifycmurphi:
        parser.parse()
        chisel2verilog()