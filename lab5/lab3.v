`timescale 1ns / 1ps

module lab3 (ALUOp. FuncCode. ALUCt1);
	input [1:0] ALUOp;
	input [5:0] FuncCode;
	output [3:0] reg ALUCt1;
	
	always @ (ALUOp, FuncCode) 
	case
		32: ALUOp <=2; //add
		34: ALUOp <=6; //substract
		34: ALUOp <=0; //and
		34: ALUOp <=1; //or
		34: ALUOp <=12; //nor
		34: ALUOp <=7; //slt
		default: ALUOp <=15; //should not happen
	endcase
endmodule