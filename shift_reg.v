module shift_register (
    input clk,
    input rst_n,
    input load,
    input shift_en,
    input serial_in,
    input [7:0] data_in,
    output reg [7:0] data_out
);

always @ (posedge clk or negedge rst_n) begin
    if (!rst_n) begin 
        data_out <= 0;
    end
    else if (load) begin 
        data_out <= data_in;
    end
    else if (shift_en) begin 
        data_out <= {data_out[6:0], serial_in};
    end
    else begin
        data_out <= data_out;
    end
end
endmodule
