
`timescale 1ns / 1ps
 
module Reg_ALU_Control(clock, RegWrite, MemWrite, MemRead, ALUOp, FuncCode, Read1, Read2, WriteReg, WriteData, Zero, ReadData);
	
	input        RegWrite, clock, MemWrite, MemRead; 
	input [ 1:0] ALUOp; 
	input [ 5:0] FuncCode;
	input [ 4:0] Read1, Read2, WriteReg;  // inputs to Reg
	input [31:0] WriteData;

	output wire        Zero;
	output wire [31:0] ReadData;
	
   wire [ 4:0] ALUCtl;
	wire [31:0] A, B, ALUOut;	

	 Register REG (.Read1(Read1), .Read2(Read2), .WriteReg(WriteReg), .WriteData(ReadData), .RegWrite(RegWrite), .Data1(A), .Data2(B), .clock(clock));
	 ALUControl ALUC (.ALUOp(ALUOp), .FuncCode(FuncCode), .ALUctl(ALUCtl));
    ALU alu (.ALUctl(ALUCtl), .A(A), .B(B), .ALUOut(ALUOut), .Zero(Zero)); 	
	 DataMemory DM (.WriteData(B), .Address(ALUOut), .clock(clock), .MemWrite(MemWrite), .MemRead(MemRead), .ReadData(ReadData));
endmodule