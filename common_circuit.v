`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:12 01/06/2026 
// Design Name: 
// Module Name:    common_circuit 
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
module common_circuit(input [7:0] a,b, input Cin, output [7:0] out, output Co);
   wire t1,t2,t3,t4,t5,t6,t7;
	wire r1,r2,r3,r4,r5,r6,r7,r8;
	xor(r1,Cin,b[0]);
	xor(r2,Cin,b[1]);
	xor(r3,Cin,b[2]);
	xor(r4,Cin,b[3]);
	xor(r5,Cin,b[4]);
	xor(r6,Cin,b[5]);
	xor(r7,Cin,b[6]);
	xor(r8,Cin,b[7]);
	full_adder F1(a[0],r1,Cin,out[0],t1);
	full_adder F2(a[1],r2,t1,out[1],t2);
	full_adder F3(a[2],r3,t2,out[2],t3);
	full_adder F4(a[3],r4,t3,out[3],t4);
	full_adder F5(a[4],r5,t4,out[4],t5);
	full_adder F6(a[5],r6,t5,out[5],t6);
	full_adder F7(a[6],r7,t6,out[6],t7);
	full_adder F8(a[7],r8,t7,out[7],Co);
	
endmodule
