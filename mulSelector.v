`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:58 10/02/2025 
// Design Name: 
// Module Name:    mulSelector 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mulSelector(input [7:0] a, b, input s,clk,reset, input [1:0] s1, output reg[15:0] out
    );
	 reg [7:0] a_reg, b_reg;reg s_reg ; reg [1:0] s1_reg; 
	 wire [15:0] out1, out2;
	  Airthmatic Airth(a_reg,b_reg,s1_reg,~s_reg,clk,out1);
	 Logic Logi(a_reg,b_reg,s1_reg,s_reg,clk, out2);	
	 always @(posedge clk)
	 begin
	 if(reset) begin
	  a_reg =0;
	 b_reg =0;
	 s_reg =0;
	 s1_reg =0;
	 end
	 else 
	 begin
	 a_reg =a;
	 b_reg =b;
	 s_reg =s;
	 s1_reg =s1;
	 end
	 end
	 
always @(posedge clk)
begin	 
	 out <= out1+out2;
	 end
endmodule
