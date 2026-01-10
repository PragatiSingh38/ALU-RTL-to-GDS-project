read_verilog full_adder.v
read_verilog common_circuit.v
read_verilog multiplication.v
read_verilog division.v
read_verilog Airthmatic.v
read_verilog Logic.v
read_verilog mulSelector.v
hierarchy -top mulSelector
# till now readed all verilog files
proc
#converted sequential circuit to netlist
clean 
# remove unused
opt
# performing optimisation area
share -aggressive
# resource sharing
opt
clean
techmap
#netlist convertion
dfflibmap -liberty NangateOpenCellLibrary_typical.lib
abc -liberty NangateOpenCellLibrary_typical.lib -constr alu.sdc
#mapping with library
opt
hilomap -hicell TIEHI_X1 Z -locell TIELO_X1 Z
# tie high low, z outpin
clean
stat -liberty NangateOpenCellLibrary_typical.lib
write_verilog -noattr detailed_design.v


