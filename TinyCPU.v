`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:10:35 11/22/2015 
// Design Name: 
// Module Name:    TinyCPU 
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
module TinyCPU( 
	input [11:0] In,
	input Clk,
	output [7:0] Result, RegA, RegB
	
);

	wire [3:0] instr;
	wire [7:0] datain, mOut, aOut, bOut, m8Out, m1, m2, m3, m4, m5, m6, m7, m8;
	wire [3:0] S;
	wire CLR, enA, enB, enOut;
	
	
	//always @(posedge Clk) begin
		
		BusSplit bs(.ln(In), .data(datain), .instruction(instr));
		
		InstructionDecoder ID (.instruction(instr), .Clr(CLR), .EnA(enA), .EnB(enB), .EnOut(enOut), .S(S));
		
		// Register A
		Register8Bit RegisterA(.D(datain), .Clk(Clk), .En(enA), .CLR(CLR), .Qout(RegA));
		
		// Register B
		Mux2To1 mux2(.a(datain), .b(Result), .sel(S[3]), .w(mOut));
		
		Register8Bit RegisterB(.D(mOut), .Clk(Clk), .En(enB), .CLR(CLR), .Qout(RegB));
		
		ALU alu(.A(RegA), .B(RegB), .o1(m1), .o2(m2), .o3(m3), .o4(m4), .o5(m5), .o6(m6), .o7(m7), .o8(m8));
		
		Mux8To1 mux8(.A(m1), .B(m2), .C(m3), .D(m4), .E(m5), .F(m6), .G(m7), .H(m8), .Sel(S[2:0]), .Y(m8Out));
		
		//Register Out
		Register8Bit RegOut(.D(m8Out), .Clk(Clk), .En(enOut), .CLR(CLR), .Qout(Result));
		initial begin
		$monitor("m1 %d m2 %d m3 %d m4 %d ", m1, m2, m3, m4);
			end
	//end
endmodule
