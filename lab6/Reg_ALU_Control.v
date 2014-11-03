
`timescale 1ns / 1ps
 
module Reg_ALU_Control(clock, WriteReg, MemWrite, MemRead, ALUOp, FuncCode, WriteReg, WriteDataReg, Zero, ReadDataMem, rs, rt, rd, signExtend);
	
	input        WriteReg, clock, MemWrite, MemRead, RegDst; 
	input [ 1:0] ALUOp; 
	input [ 5:0] FuncCode;
	input [ 4:0] ReadReg1, ReadReg2, WriteReg, rs, rt, rd;  // inputs to Reg
	input [31:0] WriteData, signExtend;

	output reg        Zero;
	output reg [31:0] ReadData;
	
   wire [ 4:0] ALUCtl;
	wire [31:0] A, B, ALUOut;	
	
	wire [ 4:0] writeReg;

	
	wire [31:0] ReadData2, signExtend;
	
	

	 Two2One_5b_mux RegDst (.In0(rt), .In1(rd), .Sel(Sel), .Out(writeReg));
	


	 Two2One_32b_mux MemtoReg (.In0(B), .In1(signExtend), .Sel(Sel), .Out(B));
	 
	 Register REG (.Read1(Read1), .Read2(Read2), .WriteReg(writeReg), .WriteData(ReadData), .RegWrite(RegWrite), .Data1(A), .Data2(B), .clock(clock));
	 ALUControl ALUC (.ALUOp(ALUOp), .FuncCode(FuncCode), .ALUctl(ALUCtl));
    ALU alu (.ALUctl(ALUCtl), .A(A), .B(B), .ALUOut(ALUOut), .Zero(Zero)); 	
	 DataMemory DM (.WriteData(B), .Address(ALUOut), .clock(clock), .MemWrite(MemWrite), .MemRead(MemRead), .ReadData(ReadData));
endmodule