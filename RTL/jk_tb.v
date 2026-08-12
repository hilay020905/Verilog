module tb;

reg j;
reg k;
reg clk;
reg rst_n;

wire q;

integer i;

jk uut (
    .j(j),
    .k(k),
    .clk(clk),
    .rst_n(rst_n),
    .q(q)
);

initial begin 
    clk <= 0;
end
always #5 clk <= ~clk;

initial begin 
    j <= 0;
    k <= 0;
    rst_n <= 0;

    $dumpfile("jk.vcd");
    $dumpvars(0,tb);

    #10 rst_n <= 1;

    for (i=0; i<4; i=i+1) begin 
        {j,k} <= i;
        #10;
    end
    $finish;
end
endmodule