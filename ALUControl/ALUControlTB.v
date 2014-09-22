`timescale 1ns / 1ps


module ALUControlTB;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] FuncCode;

	// Outputs
	wire [3:0] ALUctl;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.FuncCode(FuncCode), 
		.ALUctl(ALUctl)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		FuncCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 FuncCode = 5'b100000;
		#100 FuncCode = 5'b100010; 
		#100 FuncCode = 5'b100100;
		#100 FuncCode = 5'b100101; 
		#100 FuncCode = 5'b101010;

	end
      
endmodule

