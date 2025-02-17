`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:08:06
// Design Name: 
// Module Name: example1
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
module task_logical; 
reg[7:0] a, b; 
reg[7:0] a_and_b, a_nand_b, a_or_b, a_nor_b, a_xor_b, a_xnor_b; 
initial 
begin 
a=8'b1010_1010; b=8'b1100_1100; 
logical (a, b, a_and_b, a_nand_b, a_or_b,  
a_nor_b, a_xor_b, a_xnor_b);  
//invoke the task 
a=8'b1110_0111; b=8'b1110_0111; 
logical (a, b, a_and_b, a_nand_b, a_or_b,  
a_nor_b,a_xor_b, a_xnor_b); 
//invoke the task 
a=8'b0000_0111; b=8'b0000_0111; 
logical (a, b, a_and_b, a_nand_b, a_or_b,  
a_nor_b,a_xor_b, a_xnor_b);  
//invoke the task 
a=8'b0101_0101; b=8'b1010_1010; 
logical (a, b, a_and_b, a_nand_b, a_or_b,  
a_nor_b,a_xor_b, a_xnor_b);  
end 
task logical; 
input [7:0] a, b; 
output [7:0] a_and_b, a_nand_b, a_or_b,  
a_nor_b,a_xor_b, a_xnor_b; 
begin 
a_and_b = a & b; 
a_nand_b = ~(a & b); 
a_or_b = a | b; 
a_nor_b = ~(a | b); 
a_xor_b = a ^ b; 
a_xnor_b = ~(a ^ b); 
$display ("a=%b, b=%b, a_and_b=%b, a_nand_b=%b,  a_or_b=%b, a_nor_b=%b, a_xor_b=%b, a_xnor_b=%b", a, b, a_and_b, a_nand_b, a_or_b, a_nor_b, a_xor_b, a_xnor_b); 
end 
endtask 
endmodule 