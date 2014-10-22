`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:45:47 10/21/2014
// Design Name:   Reg_ALU_Control
// Module Name:   C:/Users/User/dev/cecs341/lab6/Reg_ALU_ControlTB.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Reg_ALU_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Reg_ALU_ControlTB;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] FuncCode;
	reg A;
	reg B;
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	Reg_ALU_Control uut (
		.ALUOp(ALUOp), 
		.FuncCode(FuncCode), 
		.ALUOut(ALUOut), 
		.Zero(Zero), 
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		FuncCode = 0;
		A = 0;
		B = 0;
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
				// Add stimulus here
		clock = 0;
		RegWrite = 1;
		WriteReg = 5;
		WriteData = 32'h55555555;
		#50
		clock = 1;
		Read1 = 5;
		Read2 = 5;
		#50
		ALUOp = 2'b10;
		FuncCode = 6'b100000;
		clock = 0;
		RegWrite = 0;
		#50
		clock = 1;

	end
      
endmodule

