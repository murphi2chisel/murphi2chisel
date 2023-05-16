from load import *
import os
import psutil

# transform of if else body lalr generate

from threading import Timer
class czh():
    mem = 0
    def __init__(self) -> None:
        pass

def printmem():
    x = (psutil.virtual_memory().used/(1024*1024))
    czh.mem = max(czh.mem,x)
    # print(czh.mem)

class RepeatingTimer(Timer): 
   def run(self):
       while not self.finished.is_set():
           self.function(*self.args, **self.kwargs)
           self.finished.wait(self.interval)


def init_ifstmt(args):
    if len(args) == 2:
        # if then
        return ifstmt(test=args[0], body=args[1], elsecode=None)
    elif len(args) == 3:
        # if then else
        return ifstmt(test=args[0], body=args[1], elsecode=args[2])
    elif len(args) > 3:
        # if then elif....
        return ifstmt(test=args[0], body=args[1], elsecode=init_ifstmt(args[2:]))
    else:
        raise syntax_error(str(args))


def indent(s, num_space, first_line=None):
    lines = s.split('\n')
    if first_line is None:
        return '\n'.join(' ' * num_space + line for line in lines)
    else:
        res = ' ' * first_line + lines[0]
        if len(lines) > 1:
            res += '\n' + '\n'.join(' ' * num_space +
                                    line for line in lines[1:])
        return res


def parse_file(parser, filename):
    with open(filename, "r") as f:
        return parser.parse(f.read())


def mkdir(path):
    folder = os.path.exists(path)
    if not folder:
        os.makedirs(path)


def gen_system_script(para: str):
    return """
    import chisel3._
    import chiselsby.Check
    object gensystem extends App {
        Check.generateRTL(() => new system(%s))
    } 
    """ % para

def sby_script():
    return """
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
