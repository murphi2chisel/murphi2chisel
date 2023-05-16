yosys read_verilog -noopt -nolatches -sv /home/czh/murphi2chisel/src/external/avr-master/czh2/work_bar/protocol.sv;
yosys hierarchy -auto-top;
yosys hierarchy -libdir /home/czh/murphi2chisel/src/external/avr-master/czh2/work_bar;
yosys hierarchy -check;
yosys rename -top system;
yosys delete -output system;
yosys expose system/prop_neg;
yosys proc;
yosys splitnets -driver;
yosys pmuxtree;
yosys memory;
yosys flatten;
yosys setundef -undriven -expose -undef;
yosys check;
yosys write_ilang /home/czh/murphi2chisel/src/external/avr-master/czh2/work_bar/bar.ilang;
yosys write_verilog -attr2comment /home/czh/murphi2chisel/src/external/avr-master/czh2/work_bar/bar_y.v;
yosys write_btor /home/czh/murphi2chisel/src/external/avr-master/czh2/work_bar/bar.btor2;
