`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:43 11/22/2015 
// Design Name: 
// Module Name:    Adder 
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
module Adder(
	input [7:0] A,
	input [7:0] B,
	output [7:0] Out0
);

	reg [7:0] Out0;
	
	always@(A or B)
	begin
		Out0 <= A + B;
	end
	
	

endmodule
