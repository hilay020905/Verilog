module tb;

reg a;
reg b;

wire sum;
wire c;

integer i;

half uut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum)
);

initial begin
    a <= 0;
    b <= 0;

    $dumpfile("half_tb.vcd");
    $dumpvars(0,tb);

    for (i = 0; i <10 ; i = i + 1) begin
        //{a,b} <= i;
        {a,b} <= $random; 
        #5;
    end
end
endmodule