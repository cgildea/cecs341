`timescale 1ns / 1ps

module DataMemoryVTF;

	// Inputs
	reg [31:0] WriteData;
	reg [7:0] Address;
	reg clock;
	reg MemWrite;
	reg MemRead;

	// Outputs
	wire [31:0] ReadData;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.WriteData(WriteData), 
		.Address(Address), 
		.clock(clock), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.ReadData(ReadData)
	); 
	
	//always begin
		//#50 clock = ~clock;
//	end

	initial begin
		clock = 0;
		MemRead = 0;
		MemWrite = 0;
		Address = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		MemRead = 1; 
		Address = 20;
		#50
		clock = 1;
		#50
		clock = 0;
		Address = 40;
		#50
		clock = 1;
		#50
		clock = 0;
		MemWrite = 1;
		MemRead = 0;
		Address = 20;
		WriteData = 32'ha5a5a5a5;
		#50
		clock = 1;
		#50
		clock = 0;
		MemRead = 1; 
		MemWrite = 0;
		#50
		clock = 1;
		#50
		clock = 0;
		MemRead = 0;
		Address = 40;
		MemWrite = 1;
		WriteData = 32'h5a5a5a5a;
		#50
		clock = 1;
		#50
		clock = 0;
		MemRead = 1;
		MemWrite = 0;
		#50
		clock = 1;
		#50
		clock = 0;
	end
      
endmodule

