module tb;

reg a;
reg b;
reg c;
reg d;
wire y;

combinational uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
);

initial begin 
    a <= 1'b0; b <= 1'b0; c <= 1'b0; d <= 1'b0;

    $dumpfile("combinational_tb.vcd");
    $dumpvars(0, tb);

    for (integer i = 0; i < 16; i = i + 1) begin
        {a, b, c, d} <= i;
        #5;
    end
end
endmodule
