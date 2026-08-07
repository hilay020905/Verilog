module ha_tb;

reg a, b;
wire sum, carry;
integer i;

ha uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
);

initial begin
    a <= 0;
    b <= 0;
    $dumpfile("halfadder_tb.vcd");
    $dumpvars(0, ha_tb);
    for (i = 0; i < 4; i = i + 1) begin
    {a, b} = i;
    #10;
end
end



endmodule