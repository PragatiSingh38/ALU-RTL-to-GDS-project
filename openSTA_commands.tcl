read_liberty NangateOpenCellLibrary_typical.lib
read_verilog detailed_design.v
link_design mulSelector
read_sdc alu.sdc
report_checks -path_delay max -format full
#setup
report_checks -path_delay min -format full
#hold
set_power_activity -global -activity 0.1
report_power
#power
