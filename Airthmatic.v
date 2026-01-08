`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:33 10/02/2025 
// Design Name: 
// Module Name:    Airthmatic 
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
module Airthmatic(input [7:0] a,b, input [1:0]s1,input en1,clk, output reg[15:0] out1 
    );
	 wire [7:0] ADD, SUB; wire[15:0] MUL,DIV; wire max,borr;
	 common_circuit C1(a,b,1'b0,ADD,max);
	 common_circuit C2(a,b,1'b1,SUB,borr);
	 multiplication M1(a,b,MUL);
	 division D1(a,b,DIV);
	 always @(posedge clk)
	 begin
	 if(en1)
	 begin
	 case (s1)
	 2'b00 :  begin out1 = {7'b0,max,ADD};end
	 2'b01 :  begin out1 = {7'b0,borr,SUB};end
	 2'b10 :  out1 = MUL ;
	 2'b11 :  out1 = DIV ;
	 endcase
	 end
	 else 
	 out1= 16'h0000;
    end
	 
endmodule
