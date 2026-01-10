create_clock -name CLK -period 150 [get_port clk]
set_input_delay 70 -clock CLK [get_ports a]
set_input_delay 70 -clock CLK [get_ports b]
set_output_delay 60 -clock CLK [get_ports out]
set_input_transition 15 [get_ports a]
set_input_transition 15 [get_ports b]
set_load 100 [get_ports out]
set_clock_uncertainty 15 CLK
