module tb;

reg t;
reg clk;
reg rst_n;
wire q;

tff uut (
    .t(t),
    .clk(clk),
    .rst_n(rst_n),
    .q(q)
);

initial begin 
    clk = 0;
end

always #5 clk = ~clk;

initial begin 
    rst_n = 0;
    t = 0;

    $dumpfile("tff.vcd");
    $dumpvars(0, tb);

    #10 rst_n = 1;
    #25 rst_n = 0;

    for (integer i = 0; i < 2; i = i + 1) begin 
        t <= i;
        #10;
    end
    $finish;
end
endmodule