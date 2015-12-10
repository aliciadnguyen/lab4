`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:22 11/22/2015 
// Design Name: 
// Module Name:    Comparator 
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
module Comparator(
	input [7:0] A,
	input [7:0] B,
	output [7:0] Out7
);

	reg[7:0] Out7;
	always@(A or B)
	begin
		if (A >= B)
			Out7 <= 8'b11111111;
		else
			Out7 <= 8'b00000000;
	end

endmodule
