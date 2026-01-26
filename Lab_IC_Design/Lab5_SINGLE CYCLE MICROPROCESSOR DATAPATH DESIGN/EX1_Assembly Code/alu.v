module alu(
	input [2:0] alufn,
	input [7:0] ra,
	input [7:0] rb_or_imm,
	output reg [7:0] aluout,
	output reg zero
);

always @(*) begin
		case(alufn)
			3'b000 : aluout = ra + rb_or_imm;
			3'b001 : aluout = ra - rb_or_imm;
			3'b010 : aluout = ra & rb_or_imm;
			3'b011 : aluout = ra | rb_or_imm;
			3'b100 : aluout = ~ra;
			3'b101 : aluout = ra + rb_or_imm;
			3'b110 : aluout = ra + rb_or_imm;
			3'b111 : begin
				zero = (ra==rb_or_imm)?1'b1:1'b0; 
				aluout = ra - rb_or_imm;
			end
		endcase
end
endmodule
