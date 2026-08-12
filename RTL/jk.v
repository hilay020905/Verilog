module jk (
    input j,
    input k,
    input clk,
    input rst_n,
    output reg q
);

always @ (posedge clk) begin
    if (!rst_n) begin 
        q <= 0;
    end
    else if (!j && !k) begin
        q <= q;
    end
    else if (!j && k) begin
        q <= 0;
    end
    else if (j && !k) begin
        q <= 1;
    end
    else if (j && k) begin
        q <= ~q;
    end
end
endmodule
