`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:23 11/22/2015 
// Design Name: 
// Module Name:    Register8Bit 
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
module Register8Bit(
	input [7:0] D,
	input Clk,
	input En,
	input CLR,
	output [7:0] Qout
);

	reg [7:0] Qout;

	always@(posedge Clk)
	begin
		if (En)
		begin
			if(CLR)
				Qout <= 8'b0000000;
			else
				Qout <= D;
		end
	end
		

endmodule
