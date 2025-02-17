`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:41:08
// Design Name: 
// Module Name: excercise2_tb
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
module BinaryToGray_Test;
    reg [3:0] Binary;
    wire [3:0] Gray;
    BinaryToGray U2 (Gray, Binary);
    initial begin
        Binary = 4'b0000; #10;
        Binary = 4'b0001; #10;
        Binary = 4'b0010; #10;
        Binary = 4'b0100; #10;
        Binary = 4'b1000; #10;
        $finish;
    end
endmodule

