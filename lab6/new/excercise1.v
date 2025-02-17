`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:22:28
// Design Name: 
// Module Name: excercise1
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
primitive MUX4to1 (Y,S1, S0, D0, D1, D2, D3);
    output Y;
    input S1, S0, D0, D1, D2, D3;
    table
    // S1 S0 D0 D1 D2 D3 : Y
       0  0  0  ?  ?  ?  : 0;
       0  0  1  ?  ?  ?  : 1;
       0  1  ?  0  ?  ?  : 0;
       0  1  ?  1  ?  ?  : 1;
       1  0  ?  ?  0  ?  : 0;
       1  0  ?  ?  1  ?  : 1;
       1  1  ?  ?  ?  0  : 0;
       1  1  ?  ?  ?  1  : 1;
    endtable
endprimitive
