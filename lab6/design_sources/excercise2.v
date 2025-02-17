`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:22:28
// Design Name: 
// Module Name: excercise2
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

primitive XOR2 (Y, A, B);
    output Y;
    input A, B;
    table
    // A B : Y
       0  0 : 0;
       0  1 : 1;
       1  0 : 1;
       1  1 : 0;
    endtable
endprimitive
module BinaryToGray (Gray, Binary);
    input [3:0] Binary;
    output [3:0] Gray;
    XOR2 G3 (Gray[3], Binary[3], 0);
    XOR2 G2 (Gray[2], Binary[3], Binary[2]);
    XOR2 G1 (Gray[1], Binary[2], Binary[1]);
    XOR2 G0 (Gray[0], Binary[1], Binary[0]);
endmodule

