module g2b(
input [3:0] binary,
output [3:0] gray
);
assign binary[3]=gray[3];
assign binary[2]=gray[3]^gray[2];
assign binary[1]=binary[2]^gray[1];
assign binary[0]=binary[1]^gray[0];
endmodule