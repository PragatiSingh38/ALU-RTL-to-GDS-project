`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:35:22 01/06/2026 
// Design Name: 
// Module Name:    division 
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
module division(input [7:0]a,b, output reg [15:0]out);
reg[15:0] quoitent ; reg [7:0] reg_rem;
integer i;
always @(*) begin
reg_rem = 8'h00;
quoitent = 16'h0000;
for(i=7 ; i>=0 ;i=i-1)begin
reg_rem= {reg_rem[6:0],a[i]};
if(reg_rem >=b)
begin
quoitent[i] =1'b1;
reg_rem = reg_rem-b;
end
end
out= quoitent;
end
endmodule
