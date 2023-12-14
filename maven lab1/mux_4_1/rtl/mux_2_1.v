module mux_2_1(a,b,sel,out);
input a,b,sel;
output out;
assign out=(sel==1'b0)?a:b;
endmodule
