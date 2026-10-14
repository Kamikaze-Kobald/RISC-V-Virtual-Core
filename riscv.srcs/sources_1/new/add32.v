`timescale 1ns / 1ps

module add32 (
    input [31:0] a,
    input [31:0] b,
    output [31:0] o,
    output c
);
    wire c1,c2,c3,c4,c5,c6,c7;
    rcadd4 n1 (.a(a[3:0]), .b(b[3:0]), .s(o[3:0]), .co(c1));
    rcadd4 n2 (.a(a[7:4]), .b(b[7:4]), .s(o[7:4]), .co(c2));
    rcadd4 n3 (.a(a[11:8]), .b(b[11:8]), .s(o[11:8]), .co(c3));
    rcadd4 n4 (.a(a[15:12]), .b(b[15:12]), .s(o[15:12]), .co(c4));
    rcadd4 n5 (.a(a[19:16]), .b(b[19:16]), .s(o[19:16]), .co(c5));
    rcadd4 n6 (.a(a[23:20]), .b(b[23:20]), .s(o[23:20]), .co(c6));
    rcadd4 n7 (.a(a[27:24]), .b(b[27:24]), .s(o[27:24]), .co(c7));
    rcadd4 n8 (.a(a[31:28]), .b(b[31:28]), .s(o[31:28]), .co(c));
endmodule