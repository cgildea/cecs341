`timescale 1ns / 1ps


module ALUControlTB;

	// Inputs
	reg [1:0] ALUOp;
	reg [5:0] FuncCode;

	// Outputs
	wire [3:0] ALUCtl;

	// Instantiate the Unit Under Test (UUT)
	ALUControl uut (
		.ALUOp(ALUOp), 
		.FuncCode(FuncCode), 
		.ALUCtl(ALUCtl)
	);

	initial begin
		// Initialize Inputs
		ALUOp = 0;
		FuncCode = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

