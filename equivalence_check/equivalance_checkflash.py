import os 
import sys
sys.path.append("../src")
from load import *

cmurphi_path = '/home/czh/murphi2chisel/src/external/cmurphi'
protocol_dir = '/home/czh/murphi2chisel/equivalence_check/flash'
constlist = [2,2]

def reachablestateset():
    # reachable_state_set = [
    #     {
    #         "n[1]": "I",
    #         "n[2]": "I",
    #         "x":"true"
    #     },
    #     {
    #         "n[1]": "T",
    #         "n[2]": "I",
    #         "x":"true"
    #     }
    # ]
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
            
    print(len(unreachable_state_set))
    return unreachable_state_set



def log(protocol_dir:str, s:str):
    with open("%s/equivalence_log.txt" % protocol_dir,"a+") as f:
        f.write(s)
    
def checkreachablestateset():
    os.system("export PATH=/home/ubuntu/oss-cad-suite/bin:$PATH")
    
    reachable_state_set = reachablestateset()
    # sys.path.append("../equivalence_check/flash")
    os.chdir(protocol_dir)
    for i in range(len(reachable_state_set)):
        reachable_state = reachable_state_set[i]

        
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
        parser = murphi_parser("flash%d" % i, "%s/protocol-check%d.m" % (protocol_dir,i))
        parser.dir = protocol_dir
        parser.parse()
        os.chdir(protocol_dir)
        status = os.system('%s/src/mu -c protocol-check%i.m' % (cmurphi_path,i))
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system('g++ -o protocol.o protocol-check%i.cpp -I %s/include' % (i,cmurphi_path))
        if status:
            print('g++ failed to compile')
            exit(1)
        # -ta all the states
        os.system("./protocol.o -k322583 -vdfs >./trace%d.txt" % i)

        

        # chisel
        t = []
        j = 0
        for x in constlist:
            t.append("args(%d).toInt" % j)
            j += 1
        gen_system_script = """
        import chisel3._
        import chiselsby.Check
        object gensystem extends App {
            Check.generateRTL(() => new system(%s))
        } 
        """ % ','.join(t)
        with open("%s/gen_system.scala" % protocol_dir, "w") as f:
            f.write(gen_system_script)
        os.system(
            "cp %s/gen_system.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/cache_pkg.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/node.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/router.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/system.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.chdir("../../src/external/chisel-template")
        os.system("sbt \"runMain gensystem %s\"" %
                    ' '.join(str(const) for const in constlist))
        # delete random init, add init:reset==1
        f1 = open('./system_build/system.sv')
        f2 = open('%s/protocol.sv' % protocol_dir, 'w')
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
                    assume(reset==1&&io_en_a==0);
                end\n
                """
        f2.write(sv)
        f1.close()
        f2.close()
        sby_script = """
    [options]
    mode prove

    [engines]
    abc pdr

    [script]
    read -sv protocol.sv 
    prep -top system

    [files]
    protocol.sv

    """
        os.chdir(protocol_dir)
        print("v%d.sby" % i)
        with open("v%d.sby" % i,"w") as f:
            f.write(sby_script)
        os.system("sby -f v%d.sby" % i)
        
        # check
        flag_murphi = False
        with open('trace%d.txt' % i, 'r') as f:
            for line in f.readlines():
                if "failed" in line or "referenced" in line:
                    flag_murphi = True 
        flag_chisel = os.path.exists("./v%d/FAIL" % i)
        if flag_murphi and flag_chisel:
            s = "State %s is checked reachable both in Murphi and Chisel\nMurphi log can be found in trace%d.txt and Chisel log can be found in dir v%d\n" % (str(reachable_state),i,i)
            log(protocol_dir,s) 
        else:
            print("check failed ")
            exit(1)

def checkunreachablestateset():

    os.system("export PATH=/home/ubuntu/oss-cad-suite/bin:$PATH")
    
    unreachable_state_set = unreachablestateset()
    # sys.path.append("../equivalence_check/flash")
    os.chdir(protocol_dir)
    for j in range(len(unreachable_state_set)):
        unreachable_state = unreachable_state_set[j]
        i = len(reachablestateset())+j

        
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
        parser = murphi_parser("flash%d" % i, "%s/protocol-check%d.m" % (protocol_dir,i))
        parser.dir = protocol_dir
        parser.parse()
        os.chdir(protocol_dir)
        status = os.system('%s/src/mu -c protocol-check%i.m' % (cmurphi_path,i))
        if status:
            print('murphi failed to compile')
            exit(1)
        status = os.system('g++ -o protocol.o protocol-check%i.cpp -I %s/include' % (i,cmurphi_path))
        if status:
            print('g++ failed to compile')
            log(protocol_dir,"check failed un")
            exit(1)
        # -ta all the states
        os.system("./protocol.o -k322583 -vdfs >./trace%d.txt" % i)

        

        # chisel
        t = []
        j = 0
        for x in constlist:
            t.append("args(%d).toInt" % j)
            j += 1
        gen_system_script = """
        import chisel3._
        import chiselsby.Check
        object gensystem extends App {
            Check.generateRTL(() => new system(%s))
        } 
        """ % ','.join(t)
        with open("%s/gen_system.scala" % protocol_dir, "w") as f:
            f.write(gen_system_script)
        os.system(
            "cp %s/gen_system.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/cache_pkg.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/node.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/router.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.system(
            "cp %s/system.scala ../../src/external/chisel-template/src/main/scala" % protocol_dir)
        os.chdir("../../src/external/chisel-template")
        os.system("sbt \"runMain gensystem %s\"" %
                    ' '.join(str(const) for const in constlist))
        # delete random init, add init:reset==1
        f1 = open('./system_build/system.sv')
        f2 = open('%s/protocol.sv' % protocol_dir, 'w')
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
                    assume(reset==1&&io_en_a==0);
                end\n
                """
        f2.write(sv)
        f1.close()
        f2.close()
        sby_script = """
    [options]
    mode prove

    [engines]
    abc pdr

    [script]
    read -sv protocol.sv 
    prep -top system

    [files]
    protocol.sv

    """
        os.chdir(protocol_dir)
        print("v%d.sby" % i)
        with open("v%d.sby" % i,"w") as f:
            f.write(sby_script)
        os.system("sby -f v%d.sby" % i)
        
        # check
        flag_murphi = False
        with open('trace%d.txt' % i, 'r') as f:
            for line in f.readlines():
                if "failed" in line:
                    flag_murphi = True 
        flag_chisel = os.path.exists("./v%d/FAIL" % i)
        if not flag_murphi and not flag_chisel:
            s = "State %s is checked unreachable both in Murphi and Chisel\nMurphi log can be found in trace%d.txt and Chisel log can be found in dir v%d\n" % (str(unreachable_state),i,i)
            log(protocol_dir,s) 
        else:
            print("check failed")
            log(protocol_dir,"check failed un")
            exit(1)
     

if __name__ == '__main__':
    checkreachablestateset()
    checkunreachablestateset()

