module cmp (
    input a,
    input b,
    output eq,
    output lt,
    output gt
);

    xnor (eq, a, b);
    assign lt = !a & b;
    assign gt = a & !b;
endmodule