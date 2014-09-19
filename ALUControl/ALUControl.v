`timescale 1ns / 1ps


module ALUControl (ALUOp, FuncCode, ALUCtl);
	input [1:0] ALUOp;
	input [5:0] FuncCode;
	output reg [3:0] ALUCtl;
	
	always @ (ALUOp, FuncCode) 
	case(FuncCode)
		5'b100000: ALUOp <=4'b0010; //add
		5'b100010: ALUOp <=4'b0110; //substract
		5'b100100: ALUOp <=4'b0000; //and
		5'b100101: ALUOp <=4'b0001; //or
		5'b101010: ALUOp <=4'b0111; //slt
		default: ALUOp <=4'b1111; //should not happen
	endcase
	
endmodule
