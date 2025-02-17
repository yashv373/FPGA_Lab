`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:22:28
// Design Name: 
// Module Name: excercise4
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
module HalfAdder (Sum, Carry, A, B);
    output reg Sum, Carry;
    input A, B;
    task half_add;
        input A, B;
        output Sum, Carry;
        begin
            Sum = A ^ B;
            Carry = A & B;
        end
    endtask
    always @ (A or B)
        half_add(A, B, Sum, Carry);
endmodule

module FullAdder (Sum, Carry, A, B, Cin);
    output Sum, Carry;
    input A, B, Cin;
    wire Sum1, C1, C2;
    HalfAdder HA1 (Sum1, C1, A, B);
    HalfAdder HA2 (Sum, C2, Sum1, Cin);
    assign Carry = C1 | C2;
endmodule