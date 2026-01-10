read_liberty NangateOpenCellLibrary_typical.lib
read_verilog opt_my_alu_design.v
link_design mulSelector
read_sdc alu.sdc
#report_checks -path_delay max -format full
#report_checks -path_delay min -format full
set_power_activity -global -activity 0.1
report_power
