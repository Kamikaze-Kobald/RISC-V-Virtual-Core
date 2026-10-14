`timescale 1ns / 1ps

module rcadd4 (
    input [3:0] a,
    input [3:0] b,
    output [3:0] s,
    input ci,
    output co
    );
    
    wire c1, c2, c3;
    
    fadd bit0 (.a(a[0]), .b(b[0]), .s(s[0]), .cin(ci), .c(c1));
    fadd bit1 (.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .c(c2));
    fadd bit2 (.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .c(c3));
    fadd bit3 (.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .c(c));
endmodule
