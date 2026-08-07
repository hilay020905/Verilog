module uc ( 
    input clk,
    input rst_n,
    input en,
    input up,
    output reg [3:0] count
);

always @ (posedge clk or negedge rst_n) begin 
    if (!rst_n) begin 
        count <= 0;
    end
    else if (en && count < 16) begin
        if (up) begin 
            count <= count + 1;
        end
        else begin 
            count <= count - 1;
        end
    end
end
endmodule
