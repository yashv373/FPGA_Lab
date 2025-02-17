`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:08:06
// Design Name: 
// Module Name: example4
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
module Func_exm (b0, b1,b2,g0,g1,g2); 
input b0, b1,b2; 
output g0,g1,g2; 
reg g0,g1,g2; 
always @ (b0,b1,b2) 
begin 
g0= exp (b0, b1); 
g1= exp (b1, b2); 
g2= exp (0, b2); 
end 
function exp ; 
input a, b; 
begin 
exp = a ^ b; 
end 
endfunction 
endmodule