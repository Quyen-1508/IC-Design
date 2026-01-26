module full_adder(
    input  a, b, cin,      // inputs
    output sum, cout          // outputs
);
    wire d;

    assign d = a ^ b;           // intermediate sum (a xor b)
    assign sum = d ^ cin;          // sum output
    assign cout = (b & ~d) | (d & cin); // carry-out
endmodule