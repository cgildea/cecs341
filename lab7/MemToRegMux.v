`timescale 1ns / 1ps

module MemToRegMux(
    input [31:0] ReadData, ALUOut,
    input [1:0] Sel,
    output reg [31:0] Out
    );
	always @(ReadData, ALUOut, Sel)
	case(Sel)
	0: Out <=ALUOut;
	1: Out <=ReadData;
	endcase


endmodule