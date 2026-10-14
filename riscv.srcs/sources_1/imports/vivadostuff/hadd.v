`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2026 01:12:44 PM
// Design Name: 
// Module Name: hadd
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

module hadd(
    input a,
    input b,
    output s,
    output c
    );
    assign s = a ^ b;
    assign c = a & b;
endmodule
