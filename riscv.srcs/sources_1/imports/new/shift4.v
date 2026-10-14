`timescale 1ns / 1ps

//4-Bit Shift Register
module shift4 (input sin, input clk, output [3:0] q);

    wire c0, c1, c2;
    dff b0 (.d(sin), .clk(clk), .q(c0));
    dff b1 (.d(c0), .clk(clk), .q(c1));
    dff b2 (.d(c1), .clk(clk), .q(c2));
    dff b3 (.d(c2), .clk(clk), .q(q[3]));
    assign q[0] = c0;
    assign q[1] = c1;
    assign q[2] = c2;
endmodule

//too lazy to make a new file
module main (input sysclk, input reset, input sin, output [3:0] led);
    wire clk1;
    slowClock timer (.clk(sysclk), .reset(reset), .clk_1hz(clk1));
    shift4 regi (.sin(sin), .clk(clk1), .q(led));
endmodule