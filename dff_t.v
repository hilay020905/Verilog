module tb;

reg clk;
reg rst_n;
reg d;

integer i;

wire q;

dff3 uut (
    .clk(clk),
    .rst_n(rst_n),
    .q(q),
    .d(d)
);

initial begin 
    clk <= 0;
end

always #5 clk <= ~clk;

initial begin 
    rst_n <= 0;
    d <= 0;

    $dumpfile("df_tb.vcd");
    $dumpvars(0,tb);

    #10 rst_n <= 1;
    

    for (i = 0; i<10; i = i+1) begin 
        {d} <= $random;
        {rst_n} <= $random;
        #5;
    end
    $finish;
end

endmodule
