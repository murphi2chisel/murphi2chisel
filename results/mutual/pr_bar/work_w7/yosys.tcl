yosys read_verilog -noopt -nolatches -sv mutual/pr_bar/work_w7/mutual.sv;
yosys hierarchy -auto-top;
yosys hierarchy -libdir mutual/pr_bar/work_w7;
yosys hierarchy -check;
yosys rename -top main;
yosys delete -output main;
yosys expose main/prop_neg;
yosys proc;
yosys clean;
yosys splitnets -driver;
yosys clean;
yosys pmuxtree;
yosys clean;
yosys memory;
yosys clean;
yosys flatten;
yosys clean -purge;
yosys setundef -undriven -expose -undef;
yosys clean;
yosys check;
yosys write_ilang mutual/pr_bar/work_w7/w7.ilang;
yosys write_verilog -attr2comment mutual/pr_bar/work_w7/w7_y.v;
yosys write_btor mutual/pr_bar/work_w7/w7.btor2;
