module comparator (
    input [3:0] a,
    input [3:0] b,
    output reg [3:0] eq,
    output g,
    output e,
    output l
);

always @(*) begin 
    eq[3] <= a[3] ~^ b[3];
    eq[2] <= a[2] ~^ b[2];
    eq[1] <= a[1] ~^ b[1];
    eq[0] <= a[0] ~^ b[0];
end
assign e = eq[3] & eq[2] & eq[1] & eq[0];
assign g = a[3] & ~b[3] | a[2] & ~b[2] & eq[3] | a[1] & ~b[1] & eq[3] & eq[2] | a[0] & ~b[0] & eq[3] & eq[2] & eq[1];
assign l = ~a[3] & b[3] | ~a[2] & b[2] & eq[3] | ~a[1] & b[1] & eq[3] & eq[2] | ~a[0] & b[0] & eq[3] & eq[2] & eq[1];
endmodule