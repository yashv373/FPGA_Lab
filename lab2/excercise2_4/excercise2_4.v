module xnor_3(
input a,b,c,
output f
);
assign f=~(a^b^c);
endmodule