module control_ALU1(C,Sign,S);
input [1:0] C;
input Sign;
wire X0,X1;
output [1:0]S;

and (X0,C[1],Sign);
nor (X1,C[1],Sign);
or(S[0],C[1],C[0]);
or(S[1],X1,X0);
endmodule 