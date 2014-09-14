`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CSULB
// Engineer: Cody Gildea 008933663
// 
// Create Date:    13:00:27 09/09/2014 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MIPSALU (ALUctl, A, B, ALUOut, Zero);
	input[3:0] ALUctl;
	input[31:0] A, B;
	output reg[31:0] ALUOut;
	output Zero;
	
	assign Zero = (ALUOut==0); // Zero is true if ALUOut is 0
	always @(ALUctl, A, B) begin //reevaluate if these change
		case(ALUctl)
			0: ALUOut <= A & B;
			1: ALUOut <= A | B;
			2: ALUOut <= A + B;
			6: ALUOut <= A - B;
			7: ALUOut <= A < B ? 1 : 0;
			default: ALUOut <= 0;
		endcase
	end
endmodule
