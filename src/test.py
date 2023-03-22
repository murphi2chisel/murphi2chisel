from load import *
import os 


os.system("python murphi2chisel.py -v1 -f example/mutual.m -c 2 -o ../mutualv1")
os.system("python murphi2chisel.py -v2 -f example/mutual.m -c 2 -o ../mutualv2")
os.system("python murphi2chisel.py -v3 -f example/mutual.m -c 2 -o ../mutualv3")

os.system("python murphi2chisel.py -v1 -f example/german.m -c 2 2 -o ../germanv1")
os.system("python murphi2chisel.py -v2 -f example/german.m -c 2 2 -o ../germanv2")
os.system("python murphi2chisel.py -v3 -f example/german.m -c 2 2 -o ../germanv3")


os.system("python murphi2chisel.py -v1 -f example/flash.m -c 2 2 -o ../flashv1")
os.system("python murphi2chisel.py -v2 -f example/flash.m -c 2 2 -o ../flashv2")
os.system("python murphi2chisel.py -v3 -f example/flash.m -c 2 2 -o ../flashv3")

os.system("python murphi2chisel.py -v1 -f example/tilelink.m -c 2 3 2 5 -o ../tilelinkv1")
os.system("python murphi2chisel.py -v2 -f example/tilelink.m -c 2 3 2 5 -o ../tilelinkv2")
os.system("python murphi2chisel.py -v3 -f example/tilelink.m -c 2 3 2 5 -o ../tilelinkv3")
