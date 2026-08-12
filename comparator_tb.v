module tb;

reg [3:0] a;
reg [3:0] b;
wire [3:0] eq;
wire g;
wire l;
wire e;

integer i;

comparator uut (
    .a(a),
    .b(b),
    .eq(eq),
    .g(g),
    .l(l),
    .e(e)
);

initial begin 
    a <= 0;
    b <= 0;

    $dumpfile("comparator_tb.vcd");
    $dumpvars(0,tb);

    for (i=0; i<10; i = i+1) begin 
        {a,b} = $random;
        #5;
    end
end
endmodule
