`timescale 1ns/1ps

module tb_fulladd;

    reg  [3:0] a;
    reg  [3:0] b;
    reg        c_in;

    wire [3:0] sum;
    wire       c_out;

    integer i;

    // Instantiate DUT
    fulladder fa0 (
        .a(a),
        .b(b),
        .c_in(c_in),
        .c_out(c_out),
        .sum(sum)
    );

    initial begin
        // Generate VCD file
        $dumpfile("fulladder_tb.vcd");
        $dumpvars(0, tb_fulladd);

        // Initialize inputs
        a    = 4'd0;
        b    = 4'd0;
        c_in = 1'b0;

        // Display values whenever they change
        $monitor("Time=%0t  a=0x%0h  b=0x%0h  c_in=%0b  c_out=%0b  sum=0x%0h",
                  $time, a, b, c_in, c_out, sum);

        // Apply random test vectors
        for (i = 0; i < 5; i = i + 1) begin
            #10;
            a    = $random;
            b    = $random;
            c_in = $random;
        end

        #10;
        $finish;
    end

endmodule