module control_ALU2(C,Sign,S);
input [1:0] C;
input Sign;
wire nC;
output [1:0]S;
not (nC,C[0]);
and (S[0],C[1],nC);
nand (S[1],C[1],nC,Sign);

endmodule 