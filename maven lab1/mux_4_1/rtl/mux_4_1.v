module mux_4_1(input [1:0]sel,input [3:0]in,output out);
wire out1,out2;
mux_2_1 i1(.a(in[0]),.b(in[1]),.sel(sel[0]),.out(out1));
mux_2_1 i2(.a(in[2]),.b(in[3]),.sel(sel[0]),.out(out2));

mux_2_1 i3(.a(out1),.b(out2),.sel(sel[1]),.out(out));
endmodule
