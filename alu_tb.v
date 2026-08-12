module tb;

reg [3:0] a;
reg [3:0] b;
reg [2:0] sel;
wire [3:0] result;

integer i;

alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
);

initial begin 
    a <= 4'b0101;
    b <= 0011;

    $dumpfile("alu_tb.vcd");
    $dumpvars(0,tb);

    for (i=0; i<8; i=i+1) begin 
        sel <= i;
        #5;
    end

    a <= 4'b1010;
    b <= 4'b0110;

    for (i=0; i<8; i=i+1) begin 
        sel <= i;
        #5;
    end

    a <= 4'b1111;
    b <= 4'b0001;

    for (i=0; i<8; i=i+1) begin 
        sel <= i;
        #5;
    end

end
endmodule




