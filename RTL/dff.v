module dff (
    input clk,
    input rstn,
    input d,
    output reg q 
);

always @(posedge clk or negedge rstn) begin 
    if (!rstn) begin 
        q <= 1'b0;
    end else begin 
        q <= d;
    end
end

endmodule