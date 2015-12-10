`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:55 11/22/2015 
// Design Name: 
// Module Name:    BusSplit 
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
module BusSplit(
	input [11:0] ln,
	output [7:0] data,
	output [3:0] instruction
);

	assign data = ln[7:0];
	assign instruction = ln[11:8];

endmodule
