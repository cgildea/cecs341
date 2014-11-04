`timescale 1ns / 1ps

module SignExtend(in, out);
	input [15:0] in;
	output reg[31:0] out;
	
	always @(in)
	begin
		assign out = {{16{in[15]}}, in};
	end
endmodule