module tb;

reg clk;
reg rst_n;
reg load;
reg shift_en;
reg serial_in;
reg [7:0] data_in;
wire [7:0] data_out;
integer i;

shift_register uut (
    .clk(clk),
    .rst_n(rst_n),
    .load(load),
    .shift_en(shift_en),
    .serial_in(serial_in),
    .data_in(data_in),
    .data_out(data_out)
);

initial begin 
    clk <= 0;
end
always #5 clk <= ~clk;

initial begin 
    rst_n <= 0;
    load <= 0;
    data_in <= 0;
    shift_en <= 0;
    serial_in <= 0;

    $dumpfile("shift_register_tb.vcd");
    $dumpvars(0,tb);

    //test 1 apply reset already covered above 
    #7
    rst_n <= 1;

    // test 2 parallel load
    #10
    load <= 1;
    data_in <= 8'b11001010;
    #10
    //test 3 shift left 5 times
    
    load <= 0;
    shift_en <= 1;
    serial_in <= 1;
    #50
    //test 4 hold for 3 clock cycles
    
    load <= 0;
    shift_en <=0;
    #30
    //test 5 loading another value 
    
    load <= 1;
    data_in <= 8'b00111100;
    #10
    //test 6 shift using alternative bits
    
    for (i=1 ; i<5 ; i=i+1) begin
        load <= 0;
        shift_en <= 1; 
        serial_in <= i%2;
        #10;
    end
    $finish;
end
endmodule

