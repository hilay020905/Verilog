module tb;

reg clk;
reg rst_n;
reg en;
reg up;
wire [3:0] count;
integer i;

uc uut (
    .clk(clk),
    .rst_n(rst_n),
    .en(en),
    .up(up),
    .count(count)
);

initial begin
    clk <= 0;
end

always #5 clk = ~clk;

initial begin 
    rst_n <= 0;
    en <= 0;
    up <= 0;

    $dumpfile("updown_counter_tb.vcd");
    $dumpvars(0, tb);

    #10 rst_n <= 1;

    for (i = 0; i < 15; i = i + 1) begin
        en <= 1;
        up <= 1;
        #10;
    end

    #10 //wrap around

    for (i = 0; i < 3; i = i + 1) begin
        en <= 0;
        up <= 0;
        #10;
    end

    for (i = 0; i < 15; i = i + 1) begin
        en <= 1;
        up <= 0;
        #10;
    end
    #10; //wrap around
    $finish;
end
endmodule

