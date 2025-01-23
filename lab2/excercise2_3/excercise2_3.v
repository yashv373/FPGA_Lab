module maj_func(
input a,b,c,
output f
);
assign f=~(a^b^c);
endmodule