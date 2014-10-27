`timescale 1ns / 1ps

module RegDstMux(
    input [5:0] rt, rd,
    input [1:0] Sel,
    output reg [5:0] Out
    );
	always @(rt, rd, Sel)
	case(Sel)
	0: Out <=rt;
	1: Out <=rd;
	endcase


endmodule