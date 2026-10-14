`timescale 1ns / 1ps

module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] fun,
    output [31:0] o
);

endmodule
//fun (4b)
//0000 add
//1000 sub
//0110 or
//0100 xor
//0101 srl
//0001 sll
//1101 sra
//0010 slt
//0011 sltu
//1001 lui-copy