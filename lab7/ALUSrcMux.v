`timescale 1ns / 1ps

module ALUSrcMux(
    input [31:0] ReadData2, SignExtend,
    input [1:0] Sel,
    output reg [31:0] Out
    );
	always @(ReadData2, SignExtend, Sel)
	case(Sel)
	0: Out <=ReadData2;
	1: Out <=SignExtend;
	endcase


endmodule