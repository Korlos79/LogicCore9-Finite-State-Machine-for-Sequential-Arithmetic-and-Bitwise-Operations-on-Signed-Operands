module tri_8(o,i,c);
input [7:0] i;
input c;
output[7:0]o;

bufif1 (o[0],i[0],c);
bufif1 (o[1],i[1],c);
bufif1 (o[2],i[2],c);
bufif1 (o[3],i[3],c);
bufif1 (o[4],i[4],c);
bufif1 (o[5],i[5],c);
bufif1 (o[6],i[6],c);
bufif1 (o[7],i[7],c);
endmodule