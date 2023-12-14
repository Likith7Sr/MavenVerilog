module decoder_2_4(input enable, input [1:0] in, output [3:0] out);
  assign out[0] = (in == 2'b00) ? enable : 1'b0;
  assign out[1] = (in == 2'b01) ? enable : 1'b0;
  assign out[2] = (in == 2'b10) ? enable : 1'b0;
  assign out[3] = (in == 2'b11) ? enable : 1'b0;
endmodule
