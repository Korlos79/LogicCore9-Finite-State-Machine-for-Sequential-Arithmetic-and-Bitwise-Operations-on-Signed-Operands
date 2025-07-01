module half_adder(A,B,Cin,Sum,Cout);
input A,B,Cin;
output Sum,Cout;

xor(X1, A,B);
xor(Sum, X1,Cin);

and (X3,X1,Cin);
and (X4, A,B);
or (Cout,X3,X4);
endmodule 