module shift_bit3(in,out);
	input [7:0]in;
	wire [7:0] o1;
	output [7:0]out;
	assign o1 = (in >> 1);
	assign out=(o1>>1);
endmodule 
