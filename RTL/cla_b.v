module tb;

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

integer i;

cla_4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin 
    a <= 0;
    b <= 0;
    cin <= 0;

    $dumpfile("cla_tb.vcd");
    $dumpvars(0,tb);

    for (i=0; i<10; i=i+1) begin
        {a,b,cin} <= $random;
        #5;
    end

end
endmodule
