# Murphi2Chisel

Read a protocol modeled in Murphi and translate it into chisel. Then we turn chisel into verilog/netlist(btor) , and finally perform model checking with avr.

### Build from source 

* Download/clone the GitHub repository

  ```
  git clone git@github.com:murphi2chisel/murphi2chisel.git
  ```

* Install and config AVR environment

  ```
  git clone git@github.com:aman-goel/avr.git avr-master
  cd avr-master
  ./build.sh
  cd ..
  ```

* install chiselFV (Chisel Frontend)

  ```
  cd chiselFV
  sbt 
  cdc ..
  ```

* install yosys

  ```
  sudo apt-get install yosys
  ```

* install python requirement

  ```
  pip install lark
  ```

  

### How to run

```
python3 <path>/<file>.m -o <output-path> -c <const-list>
(verify the <path>/<file>.m ; the generated chisel/verilog/btor2 and the verification result will in <output-path>)

Example:   python3 verify.py ./example/mutual.m -c 2 -o out 
```

