`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:46:17 10/21/2014
// Design Name:   Register
// Module Name:   C:/Users/User/dev/cecs341/lab6/RegisterVTF.v
// Project Name:  lab6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterVTF;

	// Inputs
	reg [4:0] Read1;
	reg [4:0] Read2;
	reg [4:0] WriteReg;
	reg [31:0] WriteData;
	reg RegWrite;
	reg clock;

	// Outputs
	wire [31:0] Data1;
	wire [31:0] Data2;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.Read1(Read1), 
		.Read2(Read2), 
		.WriteReg(WriteReg), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.Data1(Data1), 
		.Data2(Data2), 
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		Read1 = 0;
		Read2 = 0;
		WriteReg = 0;
		WriteData = 0;
		RegWrite = 0;
		clock = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
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
		clock = 0;
		RegWrite = 0;
		#50
		clock = 1;
		

	end
      
endmodule

