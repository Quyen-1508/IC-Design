module Lab1_EX3(SW, LEDG, LEDR);
    input [17:0] SW;      
    output [7:0] LEDG;    
    output [17:0] LEDR;   

    assign LEDR = SW;

    full_adder_GL FA1(
        .a(SW[0]),
        .b(SW[1]),
        .cin(SW[2]),
        .S(LEDG[0]),
        .Cout(LEDG[1])
    );
endmodule

module full_adder_GL(a, b, cin, S, Cout);
    output S, Cout;
    input a, b, cin;
    wire x, y, z;

    xor g1(x, a, b);
    xor g2(S, x, cin);
    and g3(y, x, cin);
    and g4(z, a, b);
    or  g5(Cout, z, y);
endmodule
