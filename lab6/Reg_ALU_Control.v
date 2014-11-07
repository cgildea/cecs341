
`timescale 1ns / 1ps
 
module Reg_ALU_Control(rs, rt, rd, immediate, FuncCode, RegDst, ALUSrc, ALUOp, MemWrite, MemRead, MemToReg, RegWrite, clock, Zero);

	
	input        RegDst, ALUSrc, ALUOp, MemWrite, MemRead, MemToReg, RegWrite, clock; 
	input [ 5:0] FuncCode;
	input [ 4:0] rs, rt, rd;  // inputs to Reg
	input [15:0] immediate;
	//input [31:0] WriteData;

	output        Zero;	
	
	
   wire [ 3:0] ALUCtl;
	wire [ 4:0] writeReg;
	wire [31:0] RegToMux2, A, B, signExtend, ALUOut, DM_ReadDataToMux3, ReadData;	
	
	

	Two2One_5b_mux MuxToReg (
			.In0(rt), 
			.In1(rd), 
			.Sel(RegDst), 
			.Out(writeReg));
	
	Register REG (
			.Read1(rs), 
			.Read2(rt), 
			.WriteReg(writeReg), 
			.WriteData(ReadData), 
			.RegWrite(RegWrite),
			.Data1(A), 
			.Data2(RegToMux2), 
			.clock(clock));
		
	Two2One_32b_mux MuxToALU (
			.In0(RegToMux2), 
			.In1(signExtend), 
			.Sel(ALUSrc), 
			.Out(B));
	 
	SignExtend signExtended (
			.in(immediate),
			.out(signExtend));
			
	ALUControl ALUC (
			.ALUOp(ALUOp), 
			.FuncCode(FuncCode), 
			.ALUctl(ALUCtl));
			
   ALU alu (
			.ALUctl(ALUCtl), 
			.A(A), 
			.B(B), 
			.ALUOut(ALUOut), 
			.Zero(Zero)); 
			
	DataMemory DM (
			.WriteData(RegToMux2), 
			.Address(ALUOut), 
			.clock(clock), 
			.MemWrite(MemWrite), 
			.MemRead(MemRead), 
			.ReadData(DM_ReadDataToMux3));
			
	Two2One_32b_mux DMToMux (
			.In0(ALUOut), 
			.In1(DM_ReadDataToMux3), 
			.Sel(MemToReg), 
			.Out(ReadData));
			
endmodule