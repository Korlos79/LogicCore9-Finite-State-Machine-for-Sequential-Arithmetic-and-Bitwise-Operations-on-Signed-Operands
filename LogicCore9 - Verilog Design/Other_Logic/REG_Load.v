module REG_Load(clk, in ,select, out );
input clk, select;
input [7:0] in;
wire [7:0] D;
output reg [7:0]out;
mux2_8bit inst0(in,out,select,D);
always @(posedge clk)
	begin
		 out<=D; 
	end
endmodule
