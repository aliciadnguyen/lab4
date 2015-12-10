`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:13:46 11/22/2015 
// Design Name: 
// Module Name:    Mux8To1 
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
module Mux8To1(
	input [7:0] A, B, C, D, E, F, G, H,
	input [2:0] Sel,
	output [7:0] Y
);

	reg [7:0] Y;
	always@(Sel or A or B or C or D or E or F or G or H)
	begin
		if(Sel == 0) Y = A;
		else if (Sel == 1) Y = B;
		else if (Sel == 2) Y = C;
		else if (Sel == 3) Y = D;
		else if (Sel == 4) Y = E;
		else if (Sel == 5) Y = F;
		else if (Sel == 6) Y = G;
		else if (Sel == 7) Y = H;
		$display("Y is: %d", Y);
	end
endmodule
