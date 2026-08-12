module tb;

reg s;
reg r;
reg clk;
reg rst_n;
wire q;
integer i;

sr uut (
    .s(s),
    .r(r),
    .clk(clk),
    .rst_n(rst_n),
    .q(q)
);

initial begin 
    clk = 0;
end
always #5 clk = ~clk;

/* intial begin 
    clk  = 0;
    forever #5 clk = ~clk;
end
*/

initial begin 
    rst_n <= 0;
    s <= 0;
    r <= 0;

    $dumpfile("sr_tb.vcd");
    $dumpvars(0, tb);

    #10 rst_n <= 1;
    #35 rst_n <= 0;

    for (i = 0; i < 4; i = i + 1) begin
        {s,r} <= i;
        #10;    
    end
    $finish;
end
endmodule 