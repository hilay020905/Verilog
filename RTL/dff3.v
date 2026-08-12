module dff3 (
    input d,
    input clk,
    input rst_n,
    output reg q
);

always @(posedge clk) begin
    if (!rst_n) begin
        q <= 1'b0;
    end
    else begin
        q <= d;
    end
end
endmodule