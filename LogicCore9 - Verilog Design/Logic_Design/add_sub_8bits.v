module add_sub_8bits(A,B,select,result);
input[7:0] A,B;
input select;
wire [7:0]Cin,Cout,xB;
output [7:0]result;
//body
xor (xB[0],select,B[0]);
xor (xB[1],select,B[1]);
xor (xB[2],select,B[2]);
xor (xB[3],select,B[3]);
xor (xB[4],select,B[4]);
xor (xB[5],select,B[5]);
xor (xB[6],select,B[6]);
xor (xB[7],select,B[7]);

	full_adder inst0(A[0],xB[0],select,result[0],Cout[0]);
	full_adder inst1(A[1],xB[1],Cout[0],result[1],Cout[1]);
	full_adder inst2(A[2],xB[2],Cout[1],result[2],Cout[2]);
	full_adder inst3(A[3],xB[3],Cout[2],result[3],Cout[3]);
	full_adder inst4(A[4],xB[4],Cout[3],result[4],Cout[4]);
	full_adder inst5(A[5],xB[5],Cout[4],result[5],Cout[5]);
	full_adder inst6(A[6],xB[6],Cout[5],result[6],Cout[6]);
	full_adder inst7(A[7],xB[7],Cout[6],result[7],Cout[7]);
endmodule
