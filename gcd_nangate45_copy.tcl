# gcd flow pipe cleaner
source "helpers.tcl"
source "flow_helpers.tcl"
source "Nangate45/Nangate45.vars"

set design "my_ALU_design"
set synth_verilog "detailed_design.v"
set top_module "mulSelector"
set sdc_file "alu.sdc"
set die_area {0 0 80 80}
set core_area {10 11 60 70}
set platform "Nangate45"

source "flow.tcl" 
