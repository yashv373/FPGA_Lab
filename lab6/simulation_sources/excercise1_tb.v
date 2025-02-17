`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:41:08
// Design Name: 
// Module Name: excercise1_tb
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
module MUX4to1_Test;
    reg S1, S0, D0, D1, D2, D3;
    wire Y;
    MUX4to1 U1 (Y, S1, S0, D0, D1, D2, D3);
    initial begin
        S1 = 0; S0 = 0; D0 = 1; D1 = 0; D2 = 0; D3 = 0; #10;
        S1 = 0; S0 = 1; D0 = 0; D1 = 1; D2 = 0; D3 = 0; #10;
        S1 = 1; S0 = 0; D0 = 0; D1 = 0; D2 = 1; D3 = 0; #10;
        S1 = 1; S0 = 1; D0 = 0; D1 = 0; D2 = 0; D3 = 1; #10;
        $finish;
    end
endmodule
