`timescale 1ns / 1ps

//J-K Flip-Flop
module jkff (input j, input k, input clk, output q, output qn);
    wire set, reset, kn, d;
    not (kn, k);
    and (set, qn, j);
    and (reset, q, kn);
    or (d, set, reset);
    dff sub (.d(d), .clk(clk), .q(q), .qn(qn));
endmodule
