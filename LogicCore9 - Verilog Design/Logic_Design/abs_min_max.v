module abs_min_max(A,B,select,clk,out);
input [7:0] A, B;
input [1:0] select;
wire [7:0] InA,Result,S,mux_1;
wire [1:0] choose;
wire z;
reg [7:0]Q1,Q2,Q3;
reg [1:0]C;
input clk;
output [7:0]out;
or (z,select[1],select[0]);
assign InA = z ? A  : 1'b0;
add_sub_8bits inst0(InA,B,1,Result);
always@ (posedge clk)
	begin
		Q1<=A;
		Q2<=Result;
		Q3<=B;
		C<=select;
	end
control_ALU1 inst1(C,Q2[7],choose);
mux2_8bit inst2(Q2,Q1,choose[0],mux_1);
mux2_8bit inst3(Q3,mux_1,choose[1],out);

endmodule  
