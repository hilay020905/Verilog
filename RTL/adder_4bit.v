module adder_4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
integer i;

wire [4:0] c;
always @(*)begin
    for (i=0; i<4; i = i+1) begin
        cin = c[i] 
        sum[i] = a[i]^b[i]^cin;
        cout = a&b | a&cin | b&cin;
        c[i+1] = cout;
    end
end
endmodule