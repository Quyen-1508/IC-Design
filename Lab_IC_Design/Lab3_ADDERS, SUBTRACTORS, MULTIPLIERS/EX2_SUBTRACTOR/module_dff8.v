module dff8(
    input  [7:0] d,
    input        clk,
    input        clrn,   // asynchronous active-low reset
    output reg [7:0] q
);
    always @(posedge clk or negedge clrn) begin
        if (!clrn)
            q <= 8'b0;
        else
            q <= d;
    end
endmodule
