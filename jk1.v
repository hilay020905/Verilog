module jkff1 (
    input clk,
    input rst_n,
    input j,
    input k,
    output reg q
);

always @ (posedge clk or negedge rst_n) begin 
    if (!rst_n) begin 
        q <= 0;
    end
    else if (!j && !k) begin
        q <= q;
    end
    else if (j && !k) begin
        q <= 1;
    end
    else if (!j && k) begin
        q <= 0;
    end
    else if (j && k) begin
        q <= ~q;
    end
end
endmodule
