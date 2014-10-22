`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:41:33 10/21/2014 
// Design Name: 
// Module Name:    Register 
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
module Register(Read1, Read2, WriteReg, WriteData, RegWrite, Data1, Data2, clock);
	 
	 input [4:0] Read1, Read2, WriteReg;
	 input [31:0] WriteData;
	 input RegWrite, clock; 
	 output [31:0] Data1, Data2; 
	 reg[31:0] RF [0:31]; 
	 assign Data1 = RF[Read1];
	 assign Data2 = RF[Read2];
	always begin @(posedge clock)
	 if(RegWrite == 1) RF[WriteReg] <= WriteData;
	end
endmodule

