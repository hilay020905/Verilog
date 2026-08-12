module sr ( 
    input s,
    input r,
    input clk,
    input rst_n,
    output reg q 
);

always @(posedge clk or negedge rst_n) begin 
    if (!rst_n) begin 
        q <= 0;
    end
    else if (!s && !r) begin 
        q <= q;
    end
    else if (!s && r) begin 
        q <= 0;
    end
    else if (s && !r) begin 
        q <= 1;
    end
    else if (s && r) begin 
        q <= 1'bx;
    end
end
endmodule