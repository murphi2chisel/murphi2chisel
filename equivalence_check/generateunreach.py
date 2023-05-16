
name = "flash"
protocol_dir = '/home/czh/murphi2chisel/equivalence_check/%s' % name
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

import random
 
print(random.randint(0,9))

reachable_state_set = reachablestateset()

def NN(x):
    if x=="1":
        return "2"
    else:
        return "1"

with open('./%s/unreachablestate.txt'%name,'w') as f:
    idx=0
    for reachable_state in reachable_state_set:
        idx+=1
        x = random.randint(0,1)
        if x==0:
            reachable_state["Sta.Proc[1].CacheState"] = "CACHE_E"
            reachable_state["Sta.Proc[2].CacheState"] = "CACHE_E"
            reachable_state["Sta.HomeProc.CacheState"] = "CACHE_E"
        if x==1:
            reachable_state["Sta.Proc[1].CacheState"] = "CACHE_E"
            reachable_state["Sta.Proc[2].CacheState"] = "CACHE_E"
            reachable_state["Sta.Proc[1].CacheData"] = NN( reachable_state["Sta.CurrData"])
            reachable_state["Sta.Proc[2].CacheData"] = NN(reachable_state["Sta.CurrData"])

        f.write("State %d:\n" % idx)
        for k in reachable_state:
            v = reachable_state[k]
            f.write("%s:%s\n" % (k,v))
        f.write("\n")


# with open('./%s/unreachablestate.txt'%name,'w') as f:
#     idx=0
#     for reachable_state in reachable_state_set:
#         idx+=1
#         x = random.randint(0,1)
#         if x==1:
#             i = 1 
#             j = 2
#             ran = random.randint(0,2)
#             if ran==0:
#                 reachable_state["Cache[%d].State"%i] = "E"
#                 reachable_state["Cache[%d].State"%j] = "E"
#             if ran==1:
#                 reachable_state["Cache[%d].State"%i] = "E"
#                 reachable_state["Cache[%d].State"%j] = "S"
#             if ran==2:
#                 reachable_state["Cache[%d].State"%i] = "S"
#                 reachable_state["Cache[%d].State"%j] = "E"
#         else:
#             i = 2 
#             j = 1
#             ran = random.randint(0,2)
#             if ran==0:
#                 reachable_state["Cache[%d].State"%i] = "E"
#                 reachable_state["Cache[%d].State"%j] = "E"
#             if ran==1:
#                 reachable_state["Cache[%d].State"%i] = "E"
#                 reachable_state["Cache[%d].State"%j] = "S"
#             if ran==2:
#                 reachable_state["Cache[%d].State"%i] = "S"
#                 reachable_state["Cache[%d].State"%j] = "E"
#         f.write("State %d:\n" % idx)
#         for k in reachable_state:
#             v = reachable_state[k]
#             f.write("%s:%s\n" % (k,v))
#         f.write("\n")

