`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:48 10/23/2014
// Design Name:   DataMemory
// Module Name:   C:/Users/User/dev/cecs341/lab7/DataMemoryVTF.v
// Project Name:  lab7
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DataMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

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
	
	always begin
		#50 clock = ~clock;
	end

	initial begin
		// Initialize Inputs
		WriteData = 0;
		Address = 0;
		clock = 0;
		MemWrite = 0;
		MemRead = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

