`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 01:20:18 PM
// Design Name: 
// Module Name: fadd
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

module fadd(
        input a, b, cin,
        output s, c
    );

    wire carry1, sum, carry2;
    hadd ha1 (.a(a), .b(b), .s(sum), .c(carry1));
    hadd ha2 (.a(cin), .b(sum), .s(s), .c(carry2));
    assign c = carry1 | carry2;
endmodule
