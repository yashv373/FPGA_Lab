module adder(sum,carry,a,b,cin);
input [3:0] a,b; 
input cin;
output carry; 
output [3:0] sum;
assign{carry,sum}=a+b+cin;
endmodule
