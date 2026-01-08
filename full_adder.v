`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:42 01/06/2026 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(input a,b,c, output sum ,carry);
wire t1,t2,t3;
xor(sum,a,b,c);
and(t1,a,c);
and(t2,b,c);
and(t3,a,b);
or(carry,t1,t2,t3);

endmodule
