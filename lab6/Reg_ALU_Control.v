`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:06:51 10/21/2014 
// Design Name: 
// Module Name:    Reg_ALU_Control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Reg_ALU_Control(ALUOp, FuncCode,ALUOut, Zero, Read1, Read2, 
WriteReg, WriteData, RegWrite, clock);
	 
	//Register
	input [4:0] Read1, Read2, WriteReg; 
	input [31:0] WriteData;
	input RegWrite,
		clock;
	
	//ALU
	wire [3:0] ALUCtl;
	wire [31:0] A,B;
	output[31:0] ALUOut;
	output Zero;
	
	//ALUControl
	input [1:0] ALUOp;
	input [5:0] FuncCode;
	
	 
	ALUControl ALUC (.ALUOp(ALUOp), .FuncCode(FuncCode), .ALUctl(ALUCtl)); 
	ALU alu (.ALUctl(ALUCtl), .A(A), .B(B), .ALUOut(ALUOut), .Zero(Zero)); 
	Register REG (.Read1(Read1), .Read2(Read2), .WriteReg(WriteReg), .WriteData(WriteData), .RegWrite(RegWrite), .Data1(A), .Data2(B), .clock(clock));

endmodule