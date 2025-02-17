`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:08:06
// Design Name: 
// Module Name: example2
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
//UDP for a 2-input AND gate 
primitive udp_and2 (z1, x1, x2); //output is listed first 
input x1, x2; 
output z1; 
//define state table 
table 
//inputs are the same order as the input list 
// x1 x2 : z1; comment is for readability 
0 0 : 0; 
0 1 : 0; 
1 0 : 0; 
1 1 : 1; 
endtable 
endprimitive 
//UDP for a 3-input OR gate 
primitive udp_or3 (z1, x1, x2, x3); //output is listed first 
input x1, x2, x3; 
output z1; 
//define state table 
table 
//inputs are the same order as the input list 
// x1 x2 x3 : z1; comment is for readability 
0 0 0 : 0; 
0 0 1 : 1; 
0 1 0 : 1; 
0 1 1 : 1; 
1 0 0 : 1; 
1 0 1 : 1; 
1 1 0 : 1; 
1 1 1 : 1; 
endtable 
endprimitive 
//sum of products using UDPs for the AND gate and OR gate 
module udp_sop (x1, x2, x3, x4, z1); 
input x1, x2, x3, x4; 
output z1; 
//define internal nets 
wire net1, net2, net3; 
//instantiate the udps 
udp_and2 (net1, x1, x2); 
udp_and2 (net2, x3, x4); 
udp_and2 (net3, ~x2, ~x3); 
udp_or3 (z1, net1, net2, net3); 
endmodule 
