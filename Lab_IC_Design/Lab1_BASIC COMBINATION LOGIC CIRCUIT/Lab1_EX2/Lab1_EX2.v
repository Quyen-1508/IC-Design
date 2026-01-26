module Lab1_EX2(SW, LEDG, LEDR);
    input  [17:0] SW;    
    output [7:0]  LEDG;  
    output [17:0] LEDR;  
    assign LEDR = SW;    
    half_adder_DF DUT (
        .a(SW[1]),
        .b(SW[0]),
        .S(LEDG[0]),      
        .Cout(LEDG[1])    
    );

    assign LEDG[7:2] = 6'b0;
endmodule

module half_adder_DF(a, b, S, Cout);
    input a, b;
    output S, Cout;
    assign S    = a ^ b;   
    assign Cout = a & b;   
endmodule
