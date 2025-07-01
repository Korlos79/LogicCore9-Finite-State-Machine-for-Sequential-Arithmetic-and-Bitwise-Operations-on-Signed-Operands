module Square_verilog(Input1,Input2,clk,Start,Result);
//define
	input clk, Start;
	input [7:0] Input1, Input2;
	output [7:0] Result;
	wire [7:0]E,F,B5,B7,B2;
	wire In,AU1B3,AU1B4,Done;
	wire [4:0] LR,nLR;
	wire [3:0] OP;
	wire [1:0] Bus2,Bus5,Bus7;
//body
	Controller_of_datapath Inst (Start,clk,In,Bus2,AU1B3,AU1B4,Bus5,Bus7,LR,OP,Done);
	not_5 inst_not(nLR,LR);
	datapath_SRA Inst1 (Input1,Input2,clk,In,Bus2,AU1B3,AU1B4,Bus5,Bus7,nLR,OP,Done,Result,AU1,AU2,E,F,B5,B7,B2);
endmodule
