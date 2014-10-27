`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:20:21 10/23/2014 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(
	 input [31:0] WriteData,
	 input [7:0] Address,
	 input clock,
	 input MemWrite,
	 input MemRead,
	 output reg [31:0] ReadData
    );
	 
	reg [7:0] DM [0:255]; //DM - Data Memory denoting say, Hard Drive. 
	
	initial begin
		DM[0] = 8'h00;
		DM[1] = 8'h00;
		DM[2] = 8'h00;
		DM[3] = 8'h00;
		DM[4] = 8'h11;
		DM[5] = 8'h11;
		DM[6] = 8'h11;
		DM[7] = 8'h11;
		DM[8] = 8'h22;
		DM[9] = 8'h22;
		DM[10] = 8'h22;
		DM[11] = 8'h22;
		DM[12] = 8'h33;
		DM[13] = 8'h33;
		DM[14] = 8'h33;
		DM[15] = 8'h33;
		DM[16] = 8'h44;
		DM[17] = 8'h44;
		DM[18] = 8'h44;
		DM[19] = 8'h44;
		DM[20] = 8'h55;
		DM[21] = 8'h55;
		DM[22] = 8'h55;
		DM[23] = 8'h55;
		DM[24] = 8'h66;
		DM[25] = 8'h66;
		DM[26] = 8'h66;
		DM[27] = 8'h66;
		DM[28] = 8'h77;
		DM[29] = 8'h77;
		DM[30] = 8'h77;
		DM[31] = 8'h77;
		DM[32] = 8'h88;
		DM[33] = 8'h88;
		DM[34] = 8'h88;
		DM[35] = 8'h88;
		DM[36] = 8'h99;
		DM[37] = 8'h99;
		DM[38] = 8'h99;
		DM[39] = 8'h99;
		DM[40] = 8'haa;
		DM[41] = 8'haa;
		DM[42] = 8'haa;
		DM[43] = 8'haa;
		DM[44] = 8'hbb;
		DM[45] = 8'hbb;
		DM[46] = 8'hbb;
		DM[47] = 8'hbb;
		DM[48] = 8'hcc;
		DM[49] = 8'hcc;
	end

	always @ (posedge clock) 
	begin 
		if (MemWrite ==1)  
			DM[Address[7:0] + 0] = WriteData [31:24]; 
			DM[Address [7:0] + 1] = WriteData [23:16]; 
			DM[Address [7:0] + 2] = WriteData [15:8]; 
			DM[Address [7:0] + 3] = WriteData [7:0]; // This is "Big Endian" 
			
		if (MemRead ==1) 
			assign ReadData = {DM[Address[7:0] + 0], DM[Address[7:0] + 1], DM[Address[7:0] + 2], DM[Address[7:0] + 3]} ; 
	end
endmodule
