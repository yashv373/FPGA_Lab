`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 09:46:28
// Design Name: 
// Module Name: excercise7
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator(gt,lt,eq,a,b);
input a,b;
output gt,lt,eq;
assign gt=a&~b;
assign lt=~a&b;
assign eq=a^~b;
endmodule