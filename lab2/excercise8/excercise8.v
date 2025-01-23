`timescale 1ns / 1ps

module n_bit_comparator #(parameter w=4)(
input [w-1:0]A,B,
output AgtB,AltB,AeqB
    );
    assign AgtB = (A>B)?1:0;
    assign AltB = (A<B);
    assign AeqB = (A==B);
endmodule
