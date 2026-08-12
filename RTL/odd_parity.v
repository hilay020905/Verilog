module op (
    input a,
    input b,
    input c,
    output p,
    output ch
);

// assign p = ~(a ^ b ^ c); // odd
assign p = (a ^ b ^ c); //even 
assign ch = a ^ b ^ c ^ p;

endmodule