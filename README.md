8 bit ALU "RTL to GDS"
This project implements an 8-bit Arithmetic Logic Unit (ALU) using an open-source EDA flow.
Tools Used: Verilog HDL, Yosys (Synthesis), OpenROAD (P&R), OpenSTA(timming).
PDK Used: Silvaco’s Open-Cell 45nm PDK.
Performance Metrics (PPA)
Metric	                        Value	    Notes
Max Operating Frequency	      ~6.7 GHz	  Post-STA Verified
Optimized Core Area          	1525 µm²	  Achieved 52% Utilization
Total Power (Typical)       	0.23 mW	    
Design Status	GDSII                       error free
Design & Constraints
Defined realistic operational constraints including input transition times, clock uncertainty, and output loads to simulate real-world scenarios.
Executed floorplanning and standard cell placement focusing on optimized area utilization (52% core utilization) to reduce congestion

