module alu (
    input [3:0] a,
    input [3:0] b,
    input [2:0] sel,
    output reg [3:0] result
);

always @(*) begin 
    if (sel==7) begin
        result <= 4'b0000;
    end
    else if (sel==6) begin
        result <= a >> 1;
    end
    else if (sel==5) begin 
        result <= a <<1;
    end
    else if (sel==4) begin
        result <= a^b;
    end
    else if (sel==3) begin 
        result <= a | b;
    end
    else if (sel==2) begin 
        result <= a & b;
    end
    else if (sel==1) begin 
        result <= a - b;
    end
    else begin
        result <= a + b;
    end
end
endmodule 
