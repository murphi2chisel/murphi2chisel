"""
check every reachable state in Murphi is reachable in Chisel
"""

import os 
import sys
sys.path.append("../src")
from load import *
sys.path.append("../equivalence_check")

cmurphi_path = '/home/czh/murphi2chisel/src/external/cmurphi'
protocol_dir = '/home/czh/murphi2chisel/equivalence_check/protocol'
constlist = [2,2]
cwd = os.getcwd()
chisel_dir = f"{cwd}/../src/external/chisel-template"

def reachablestateset():
    reachable_state_set = []
    with open("%s/reachablestate.txt" % protocol_dir,'r') as f:
        reachable_state = {}
        for line in f.readlines():
            line=line.strip('\n')
            if 'State' in line and '.State' not in line:
                reachable_state = {}
            elif ":" in line:
                l = line.split(":")
                reachable_state[l[0]]=l[1]
            else:
                reachable_state_set.append(reachable_state)
    print(len(reachable_state_set))
    # print((reachable_state_set))
    return reachable_state_set

def chisel2verilog():
    out_dir = protocol_dir
    t = [f"args({i}).toInt" for i in range(len(constlist))]
    s = gen_system_script(','.join(t))
    with open(f"{out_dir}/gen_system.scala", 'w') as f:
        f.write(s)
    for file_name in ['gen_system.scala', 'cache_pkg.scala', 'node.scala', 'router.scala', 'system.scala']:
        os.system(f"cp {out_dir}/{file_name} {chisel_dir}/src/main/scala")
    os.chdir(chisel_dir)
    os.system(f"sbt \"runMain gensystem {' '.join(str(const) for const in constlist)}\"")
    # remove initial reg init & add init of reset==1 && io_en_a==0
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


def log(protocol_dir:str, s:str):
    with open("%s/equivalence_log.txt" % protocol_dir,"a+") as f:
        f.write(s)
    
def checkreachablestateset():
    i=0
    reachable_state_set = reachablestateset()
    # sys.path.append("../equivalence_check/german2")
    os.chdir(protocol_dir)

    # murphi
    f1 = open('protocol.m','r')
    f2 = open('protocol-check%d.m' % i ,'w')
    for s in f1:
        f2.write(s)
    

    l2 = []
    for j in range(len(reachable_state_set)):
        l = []
        reachable_state = reachable_state_set[j]
        for key in reachable_state:
            value= reachable_state[key]
            l.append("%s = %s" % (key,value))
        t= "(%s)" % "&".join(l)
        l2.append(t)
    t = "invariant \"unreachableStateN\"\n"
    t += "(%s)" % "|".join(l2) 
    f2.write(t)
    f1.close()
    f2.close()
    os.chdir(protocol_dir)
    parser = murphi_parser("german2%d" % i, "%s/protocol-check%d.m" % (protocol_dir,i))
    parser.dir = protocol_dir
    parser.parse()
    # chisel
    chisel2verilog()
    s = sby_script()
    with open("v%d.sby" % j,"w") as f:
        f.write(s)
    os.system("sby -f v%d.sby" % j)

    
    # check
    flag_chisel = not os.path.exists("./v%d/FAIL" % j)
    if not flag_chisel:
        s = "State %d %s is checked \n" % (j,str(reachable_state))
        log(protocol_dir,s) 
    else:
        print("check failed "+str(j))
        log(protocol_dir,"check failed")
        exit(1)

    


    

def remove():
    with open("%s/reachablestate.txt" % protocol_dir,'r') as f , open("%s/reachablestate2.txt" % protocol_dir,'w') as f2:
        for line in f.readlines():
            if "Undefined" not in line:
                f2.write(line)  
            # if "CurPtr" not in line:
            #     f2.write(line)  

if __name__ == '__main__':
    # remove()
    with open("%s/equivalence_log.txt" % protocol_dir,"w+") as f:
        f.write("start\n")
    checkreachablestateset()

