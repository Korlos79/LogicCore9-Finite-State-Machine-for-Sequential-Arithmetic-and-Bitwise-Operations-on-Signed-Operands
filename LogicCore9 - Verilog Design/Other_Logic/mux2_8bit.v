module mux2_8bit(S0,S1,select,out);
input [7:0] S0,S1;
input select;
output  [7:0] out;
// if select = 0 out = S0, else out = S1
assign out = select ? S1 : S0;
endmodule 