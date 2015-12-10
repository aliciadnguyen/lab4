`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:03 11/25/2015 
// Design Name: 
// Module Name:    Mux2To1 
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
module Mux2To1( 
	input [7:0] a,
   input [7:0] b,
   input sel,
   output [7:0] w
);

	reg [7:0] w;
	always @(sel or a or b)
		begin
			if(sel == 0) w = a;
			if(sel == 1) w = b;
		end

endmodule
