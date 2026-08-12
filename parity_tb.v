module tb;

reg a;
reg b;
reg c; 
wire p;
wire ch;

integer i;

op uut (
    .a(a),
    .b(b),
    .c(c),
    .p(p),
    .ch(ch)
);

initial begin 
    a <= 0;
    b <= 0;
    c <= 0;

    $dumpfile("odd_parity_tb.vcd");
    $dumpvars(0,tb);

    for (i = 0 ; i < 9 ; i = i + 1) begin 
        {a,b,c} <= i;
        #5;
    end
end
endmodule