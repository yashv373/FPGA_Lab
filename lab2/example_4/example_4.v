`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2025 09:36:11
// Design Name: 
// Module Name: example_4
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

module binarytogray( 
input [0:3] b, 
output [0:3] g 
); 
assign g[3]=b[3]; 
assign g[2]=b[3]^b[2]; 
assign g[1]=b[2]^b[1]; 
assign g[0]=b[0]^b[1]; 
endmodule 
