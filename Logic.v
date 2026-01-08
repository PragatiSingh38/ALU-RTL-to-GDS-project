`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:19 10/02/2025 
// Design Name: 
// Module Name:    Logic 
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
module Logic(
    input [7:0] a, b,input [1:0] s2, input en2,clk,
    output reg[15:0] out2
    );
   always @(posedge clk)
	begin
   if(en2)
   begin
   case(s2)
   2'b00: out2 = a & b;
   2'b01 : out2 = a| b;
   2'b10 : out2 = a^b;
   2'b11 : out2 = ~a;
endcase
end
else
out2= 16'h0000;
end	
endmodule
