`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:22:28
// Design Name: 
// Module Name: excercise3
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
module XOR_Function (output Y, input A, B);
    assign Y = xor_func(A, B);
    function xor_func;
        input A, B;
        xor_func = (A & ~B) | (~A & B);
    endfunction
endmodule


