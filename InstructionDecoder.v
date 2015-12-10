`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:11:49 11/22/2015 
// Design Name: 
// Module Name:    InstructionDecoder 
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
module InstructionDecoder(
	input [3:0] instruction,
	output Clr, EnA, EnB, EnOut,
	output [3:0] S
);

	reg Clr, EnA, EnB, EnOut;
	reg [3:0] S;

	always@(instruction)
		case(instruction)
			0: begin
					Clr = 1;
					EnA = 1;
					EnB = 1;
					EnOut = 1;
					S = 4'bxxxx;
				end
			1: begin
					Clr = 0;
					EnA = 1;
					EnB = 0;
					EnOut = 0;
					S = 4'bxxxx;
				end
			2:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 1;
					EnOut = 0;
					S = 4'b0xxx;
				end
			3:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 1;
					EnOut = 0;
					S = 4'b1xxx;
				end
			4:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx000;
				end
			5:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx001;
				end
			6:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx010;
				end
			7: 
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx011;
				end
			8: 
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx100;
				end
			9: 
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx101;
				end
			10: 
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx110;
				end
			11: 
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 1;
					S = 4'bx111;
				end
			default:
				begin
					Clr = 0;
					EnA = 0;
					EnB = 0;
					EnOut = 0;
					S = 4'bxxxx;
				end
		endcase

endmodule
