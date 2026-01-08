`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:18 01/06/2026 
// Design Name: 
// Module Name:    multiplication 
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
module multiplication(input [7:0] a,b,output reg[15:0] out);
integer i;
always @(*) begin
out = 16'b0;
for( i=0; i<8; i= i+1) begin
if(b[i])begin
out= out+ (a<<i);
end
end
end
endmodule
