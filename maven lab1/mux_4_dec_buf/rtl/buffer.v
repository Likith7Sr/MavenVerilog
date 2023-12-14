module buffer(in,control,out);
input in,control;
output out;
assign out=(control==1)?in:out;
endmodule
