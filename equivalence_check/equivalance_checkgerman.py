import os 
import sys
sys.path.append("../src")
from load import *
sys.path.append("../equivalence_check")

cmurphi_path = '/home/czh/murphi2chisel/src/external/cmurphi'
protocol_dir = '/home/czh/murphi2chisel/equivalence_check/german'
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

def unreachablestateset():
    unreachable_state_set = []
    with open("%s/unreachablestate.txt" % protocol_dir,'r') as f:
        unreachable_state = {}
        for line in f.readlines():
            line=line.strip('\n')
            if 'State' in line and '.State' not in line:
                unreachable_state = {}
            elif ":" in line:
                l = line.split(":")
                unreachable_state[l[0]]=l[1]
            else:
                unreachable_state_set.append(unreachable_state)
    return unreachable_state_set

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
    
    reachable_state_set = reachablestateset()
    # sys.path.append("../equivalence_check/german")
    os.chdir(protocol_dir)
    for j in range(len(reachable_state_set)):
        reachable_state = reachable_state_set[j]
        i = 0
        
        # murphi
        f1 = open('protocol.m','r')
        f2 = open('protocol-check%d.m' % i ,'w')
        for s in f1:
            f2.write(s)
        t = "invariant \"reachableStateN\"\n"
        l = []
        for key in reachable_state:
            value= reachable_state[key]
            l.append("%s = %s" % (key,value))
        t+= "!(%s)" % "&".join(l)
        f2.write(t)
        f1.close()
        f2.close()

        os.chdir(protocol_dir)
        parser = murphi_parser("german%d" % i, "%s/protocol-check%d.m" % (protocol_dir,i))
        parser.dir = protocol_dir
        parser.parse()

        status = os.system('%s/src/mu -c protocol-check%i.m' % (cmurphi_path,i))
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system('g++ -o protocol.o protocol-check%i.cpp -I %s/include' % (i,cmurphi_path))
        if status:
            print('g++ failed to compile')
            exit(1)
        


        

        # chisel
        chisel2verilog()
        s = sby_script()
        with open("v%d.sby" % j,"w") as f:
            f.write(s)
        os.system("sby -f v%d.sby" % j)
        # -ta all the states
        os.system("./protocol.o -k322583 -vdfs >./v%d/trace%d.txt" % (j,i))
        
        # check
        flag_murphi = False
        with open('./v%d/trace%d.txt' % (j,i), 'r') as f:
            for line in f.readlines():
                if "No error found" in line:
                    flag_murphi = True 
        flag_chisel = not os.path.exists("./v%d/FAIL" % j)
        if not flag_murphi and not flag_chisel:
            s = "State %d %s is checked \n" % (j,str(reachable_state))
            log(protocol_dir,s) 
        else:
            print("check failed "+str(j))
            log(protocol_dir,"check failed")
            exit(1)

def checkunreachablestateset():
    
    unreachable_state_set = unreachablestateset()
    # sys.path.append("../equivalence_check/german")
    os.chdir(protocol_dir)
    for j in range(len(unreachable_state_set)):
        unreachable_state = unreachable_state_set[j]
        i = 0

        # murphi
        f1 = open('protocol.m','r')
        f2 = open('protocol-check%d.m' % i ,'w')
        for s in f1:
            f2.write(s)
        t = "invariant \"unreachableStateN\"\n"
        l = []
        for key in unreachable_state:
            value= unreachable_state[key]
            l.append("%s = %s" % (key,value))
        t+= "!(%s)" % "&".join(l)
        f2.write(t)
        f1.close()
        f2.close()

        os.chdir(protocol_dir)
        parser = murphi_parser("german%d" % i, "%s/protocol-check%d.m" % (protocol_dir,i))
        parser.dir = protocol_dir
        parser.parse()

        status = os.system('%s/src/mu -c protocol-check%i.m' % (cmurphi_path,i))
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system('g++ -o protocol.o protocol-check%i.cpp -I %s/include' % (i,cmurphi_path))
        if status:
            print('g++ failed to compile')
            exit(1)

        os.chdir(protocol_dir)


        

        # chisel
        chisel2verilog()
        s = sby_script()
        with open("v%d.sby" % (j+len(reachablestateset())),"w") as f:
            f.write(s)
        os.system("sby -f v%d.sby" % (j+len(reachablestateset())))
        # -ta all the states
        os.system("./protocol.o -k322583 -vdfs >./v%d/trace%d.txt" % (j+len(reachablestateset()),i))
        
        # check
        flag_murphi = False
        with open('./v%d/trace%d.txt' % (j+len(reachablestateset()),i), 'r') as f:
            for line in f.readlines():
                if "No error found" in line:
                    flag_murphi = True 
        flag_chisel = not os.path.exists("./v%d/FAIL" %  (j+len(reachablestateset())))
        if flag_murphi and flag_chisel:
            s = "State %d %s is checked \n" % ((j+len(reachablestateset())),str(unreachable_state))
            log(protocol_dir,s) 
        else:
            print("check failed "+str((j+len(reachablestateset()))))
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
    checkunreachablestateset()

