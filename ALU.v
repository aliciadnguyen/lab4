`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:59 11/25/2015 
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
module ALU(
	input [7:0] A, B,
	output [7:0] o1, o2, o3, o4, o5, o6, o7, o8
);

	Adder add(.A(A), .B(B), .Out0(o1));
	ShiftLeft sl(.A(A), .Out1(o2));
	ShiftRight sr(.A(A), .Out2(o3));
	assign o4 = (A & B);
	assign o5 = (A | B);
	assign o6 = (A ^ B);
	assign o7 = (A &~ B);
	Comparator comp(.A(A), .B(B), .Out7(o8));
	initial begin
	$monitor("o1: %d, o2: %d, o3: %d, o4: %d, o5: %d, o6: %d, o7: %d, o8: %d", o1, o2, o3, o4, o5, o6, o7, o8);
	end
endmodule
