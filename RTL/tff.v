module tff (
    input t,
    input clk,
    input rst_n,
    output reg q
);

always @(posedge clk) begin 
    if (!rst_n) begin 
        q <= 1'b0;
    end
    else if (t) begin 
        q <= ~q;
    end
end

endmodule