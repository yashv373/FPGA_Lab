`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:41:08
// Design Name: 
// Module Name: excercise5_tb
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
module udp_tb;
  reg clock, reset, d;
  wire q;
  dff_pedge dff(q, clock, reset, d);
  initial clock = 0;
  always #5 clock=~clock;
  initial begin
    $monitor("At time = %0t: clock = %b, reset = %b, d = %b, q = %b", $time, clock, reset, d, q);
    reset = 1;
    #10 reset = 0;
    d = 1;
    #20;
    d = 0;
    #10 $finish;
  end
endmodule
