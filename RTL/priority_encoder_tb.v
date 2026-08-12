module tb;

reg [3:0] req;
wire valid;
wire [1:0] grant;
integer i;

pe uut (
    .req(req),
    .valid(valid),
    .grant(grant)
);

initial begin 
    req = 4'b0000;
    $dumpfile("pe_tb.vcd");
    $dumpvars(0,tb);

    for (i=0; i<16; i=i+1) begin
        req = i;
        #5;
    end
end
endmodule

