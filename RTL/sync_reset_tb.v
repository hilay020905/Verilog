module sync_reset_tb;
    reg clk;
    reg rst_n;
    wire q;
    integer i;

    syncdff uut (
        .clk(clk),
        .rst_n(rst_n),
        .q(q)
    );

    always  #5 clk = ~clk;

    initial begin
        $dumpfile("sync_reset_tb.vcd");
        $dumpvars(0, sync_reset_tb);

        for (i = 0; i < 1; i = i + 1) begin
            rst_n = i;
            #5;
        end
    end
endmodule
