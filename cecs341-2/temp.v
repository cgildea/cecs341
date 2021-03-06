`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:22:12 09/09/2014
// Design Name:   MIPSALU
// Module Name:   C:/Users/User/dev/cecs341-2/temp.v
// Project Name:  cecs341-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPSALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module temp;

	// Inputs
	reg [3:0] ALUctl;
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] ALUOut;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	MIPSALU uut (
		.ALUctl(ALUctl), 
		.A(A), 
		.B(B), 
		.ALUOut(ALUOut), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		ALUctl = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 ALUct1 = 0; A = 32'ha, B = 32'h5;
		#100 ALUct1 = 1; A = 32'ha, B = 32'h5; 
		#100 ALUct1 = 2; A = 32'ha, B = 32'h5; 
		#100 ALUct1 = 6; A = 32'ha, B = 32'h5;
		#100 ALUct1 = 7; A = 32'ha, B = 32'h5;

	end
      
endmodule

