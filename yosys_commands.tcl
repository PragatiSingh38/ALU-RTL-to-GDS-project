read_verilog full_adder.v
read_verilog common_circuit.v
read_verilog multiplication.v
read_verilog division.v
read_verilog Airthmatic.v
read_verilog Logic.v
read_verilog mulSelector.v
hierarchy -top mulSelector
proc
clean 
opt
share -aggressive
opt
clean
techmap
dfflibmap -liberty NangateOpenCellLibrary_typical.lib
abc -liberty NangateOpenCellLibrary_typical.lib -constr alu.sdc
opt
#synth -tie_cells 1 -liberty NangateOpenCellLibrary_typical.lib
hilomap -hicell TIEHI_X1 Z -locell TIELO_X1 Z
clean
stat -liberty NangateOpenCellLibrary_typical.lib
write_verilog -noattr detailed_design.v

