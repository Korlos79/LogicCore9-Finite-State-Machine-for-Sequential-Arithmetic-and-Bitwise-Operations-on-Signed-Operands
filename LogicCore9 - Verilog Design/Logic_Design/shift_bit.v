module shift_bit(in,out,temp);
	input [7:0]in;
	input [2:0] temp;
	output [7:0]out;
	assign out = (in >> temp);
endmodule 
