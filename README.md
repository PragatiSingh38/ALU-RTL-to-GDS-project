**8 bit ALU "RTL to GDS"**  
This project implements an 8-bit Arithmetic Logic Unit (ALU) using an open-source EDA flow.  
Tools Used:-  Verilog HDL, Yosys (Synthesis), OpenROAD (P&R), OpenSTA(timming).  
PDK Used:-  Silvaco’s Open-Cell 45nm PDK.
**Performance Metrics (PPA)**    
Metric ________________________________Value_____________________Notes        
Max Operating Frequency_____________~6.7 GHz_____________Post-STA Verified  
Optimized Core Area ___________________1525 µm²____________Achieved 52% Utilization  
Total Power (Typical)___________________0.23 mW	      
Design Status	GDSII ____________________-------________________error free    
Defined realistic operational constraints including input transition times, clock uncertainty, and output loads to simulate real-world scenarios.
Executed floorplanning and standard cell placement focusing on optimized area utilization (52% core utilization) to reduce congestion.  
Design & Con![openROAD_alu_design](https://github.com/user-attachments/assets/05e965f8-0737-452f-ac43-d205ff5bc34f)
![full_placement](https://github.com/user-attachments/assets/2b2dbc16-9121-4730-b0a1-2ae65fda4d42)
straints


