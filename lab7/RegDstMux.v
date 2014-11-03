`timescale 1ns / 1ps

module Two2One_5b_mux(
    input [4:0] In0, In1,
    input 		 Sel,
    output reg [4:0] Out
    );
	always @(In0, In1, Sel)
	case(Sel)
	0: Out <=In0;
	1: Out <=In1;
	endcase


endmodule