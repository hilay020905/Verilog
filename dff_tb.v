`timescale 1ns / 1ps
module dff_tb;

    reg clk;
    reg rstn;
    reg d;
    wire q;

    dff uut (
        .clk(clk),
        .rstn(rstn),
        .d(d),
        .q(q)
    );

initial begin 
    $dumpfile("dff_tb.vcd");
    $dumpvars(0, dff_tb);

    clk = 0;
    rstn = 0;
    d = 0;

    #10 rstn = 1; // Release reset after 10 time units
    #10 d = 1; // Set d to 1 after 10 time units
    #10 rstn = 0; // Assert reset again after 10 time units
    #10 $finish; // Finish simulation after 10 time units
end
always #5 clk = ~clk; // Clock generation with a period of 10 time units
endmodule