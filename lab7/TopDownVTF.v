`timescale 1ns / 1ps

module TopDownVTF;

	// Inputs
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [15:0] immediate;
	reg [5:0] FuncCode;
	reg RegDst;
	reg ALUSrc;
	reg ALUOp;
	reg MemWrite;
	reg MemRead;
	reg MemToReg;
	reg RegWrite;
	reg clock;

	// Outputs
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	Reg_ALU_Control uut (
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.immediate(immediate), 
		.FuncCode(FuncCode), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.ALUOp(ALUOp), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.MemToReg(MemToReg), 
		.RegWrite(RegWrite),
		.clock(clock), 
		.Zero(Zero)
	);
	
//	always begin
//		#50 clock = ~clock;
//	end

	initial begin
		// Initialize Inputs
		rs = 0;
		rt = 0;
		rd = 0;
		immediate = 0;
		FuncCode = 0;
		RegDst = 0;
		ALUSrc = 0;
		ALUOp = 0;
		MemWrite = 0;
		MemRead = 0;
		MemToReg = 0;
		RegWrite = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		//Load word
		clock = 1;
		#50
		clock = 0;
		immediate = 16'h0014;
		rs = 0;
		ALUSrc = 1;
		ALUOp = 2'b10;
		FuncCode = 6'b000000;
		rd = 5;
		RegDst = 1;
		RegWrite = 1;
		#50
		clock = 1; 
		#50
		clock = 0;
		#50
		clock = 1;
		#50
		clock = 0;
		
		
		
		
		//Store Word
		rs = 0;
		clock = 1;
		rt = 1;
		RegDst = 0;
		immediate = 16'h0000;
		ALUSrc = 1;
		#50
		MemWrite = 1;
		MemRead = 1;
		MemToReg = 1;
		clock = 0; 
		#50
		clock = 1;

		
		
		
		//#50
		//rt = 10;
		//#50
		//rt = 0;
		//#50
		//rs = 5;
		//#50
		//#50
		//RegWrite = 0;
		//#50
		//immediate = 16'h0014;
		//rs = 0;
		//ALUSrc = 1;
		//ALUOp = 2'b10;
		//FuncCode = 6'b000000;
		//rd = 5;
		//RegDst = 1;
		//RegWrite = 1;
		//#50  
		//rs = 0;
	end
      
endmodule

