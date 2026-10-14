`timescale 1ns / 1ps

//S-R Latch
module srlatch (input sn, input rn, output q, output qn);
    nand (q, sn, qn);
    nand (qn, rn, q);
endmodule

//D Latch
module dlatch(input d, input en, output q, output qn);
    wire sw, rw, dn;
    not (dn, d);
    nand (sw, d, en);
    nand (rw, dn, en);
    srlatch sub (.sn(sw), .rn(rw), .q(q), .qn(qn));
endmodule

//D Flip-Flop
module dff(input d, input clk, output q, output qn);
    wire clkn, qm, qmn;
    not(clkn, clk);
    dlatch master (.d(d), .en(clkn), .q(qm), .qn(qmn));
    dlatch slave (.d(qm), .en(clk), .q(q), .qn(qn));
endmodule