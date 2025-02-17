`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.02.2025 09:08:06
// Design Name: 
// Module Name: example3
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
//UDP for a 3-input exclusive-OR 
primitive udp_xor2 (z1, x1, x2,x3); 
input x1, x2, x3; 
output z1; 
//define state table 
table 
//inputs are in the same order as the input list 
// x1 x2 x3 : z1; comment is for readability 
0 0 0 : 0; 
0 0 1 : 1; 
0 1 0 : 1; 
0 1 1 : 0; 
1 0 0 : 1; 
1 0 1 : 0; 
1 1 0 : 0; 
1 1 1 : 1; 
endtable 
endprimitive 
//full adder using a UDP and built-in primitives 
module full_adder_udp (a, b, cin, sum, cout); 
input a, b, cin; 
output sum, cout; 
//define internal nets 
wire net1, net2, net3; 
//instantiate the udps and built-in primitive 
udp_xor2 (sum, a, b, cin); 
and inst1 (net1, a, b); 
and inst2 (net2, b, cin); 
and inst3 (net3, a, cin); 
or inst4 (cout, net3, net2, net1); 
endmodule 
