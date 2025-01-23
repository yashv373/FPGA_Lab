module logic_function(f,a,b,c);
input a,b,c;
output f;
assign f=(a|b|c)&(~a|b|c)&(a|~b|~c)&(~a|~b|~c);
endmodule