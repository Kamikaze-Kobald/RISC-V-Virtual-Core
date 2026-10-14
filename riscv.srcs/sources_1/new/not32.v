`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 01:38:30 AM
// Design Name: 
// Module Name: not32
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


module not32(
    input [31:0] i,
    output [31:0] o
);
	not (o[0], i[0]);
	not (o[1], i[1]);
	not (o[2], i[2]);
	not (o[3], i[3]);
	not (o[4], i[4]);
	not (o[5], i[5]);
	not (o[6], i[6]);
	not (o[7], i[7]);
	not (o[8], i[8]);
	not (o[9], i[9]);
	not (o[10], i[10]);
	not (o[11], i[11]);
	not (o[12], i[12]);
	not (o[13], i[13]);
	not (o[14], i[14]);
	not (o[15], i[15]);
	not (o[16], i[16]);
	not (o[17], i[17]);
	not (o[18], i[18]);
	not (o[19], i[19]);
	not (o[20], i[20]);
	not (o[21], i[21]);
	not (o[22], i[22]);
	not (o[23], i[23]);
	not (o[24], i[24]);
	not (o[25], i[25]);
	not (o[26], i[26]);
	not (o[27], i[27]);
	not (o[28], i[28]);
	not (o[29], i[29]);
	not (o[30], i[30]);
	not (o[31], i[31]);
endmodule
