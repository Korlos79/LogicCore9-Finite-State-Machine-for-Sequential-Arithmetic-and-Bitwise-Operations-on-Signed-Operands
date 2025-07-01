//`timescale 1ns/100ps
module Testbench();
//define
	reg clk, Start;
	reg [7:0] Input1, Input2;
	wire [7:0] Result;
	Square_verilog Inst (Input1,Input2,clk,Start,Result);
//body
	always begin
		#10 clk <= ~clk; // 1 state = 20
	end
	initial begin
		#0 clk = 0; Start = 0; Input1 = 8'dX; Input2 = 8'dX;
		#20 Start = 1; Input1 = 4; Input2 = 3;
		#20 Start = 0; Input1 = 8'dX; Input2 = 8'dX;

		#120 Input1 = 0; Input2 = 0;
		#20 Input1 = 8'bX; Input2 = 8'bX;
		
		#120 Input1 = 6; Input2 = -8;
		#20 Input1 = 8'bX; Input2 = 8'bX;
		
		#150 Input1 = -4; Input2 = 3;
		#20 Input1 = 8'bX; Input2 = 8'bX;
		
		#90 Input1 = -8; Input2 = -6;
		#20 Input1 = 8'bX; Input2 = 8'bX;
	end 
endmodule
