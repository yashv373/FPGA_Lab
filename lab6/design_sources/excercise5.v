`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:22:28
// Design Name: 
// Module Name: excercise5
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
primitive dff_pedge (q, clock, reset, d);
  output reg q;
  input clock, reset, d;
  initial q = 0;
  table
    //clock   reset   d  :  q  :  q_next
        ?       1     ?  :  ?  :  0; 
        ?      (10)   ?  :  ?  :  -; 
      (01)      0     1  :  ?  :  1; 
      (01)      0     0  :  ?  :  0;
      (1x)      0     ?  :  ?  :  -; 
      (?0)      0     ?  :  ?  :  -; 
      (x1)      0     ?  :  ?  :  -; 
       ?        0   (??) :  ?  :  -; 
  endtable
endprimitive