module mux_4_dec_buf(input [3:0]IN,input [1:0]SEL, output OUT);
wire [3:0]C;
wire [3:0]ot;

decoder d1(SEL,C);
buffer i1(IN[0],C[0],ot[0]);
buffer i2(IN[1],C[1],ot[1]);
buffer i3(IN[2],C[2],ot[2]);
buffer i4(IN[3],C[3],ot[3]);

assign OUT=(SEL==2'b00)?ot[0]:
           (SEL==2'b01)?ot[1]:
			  (SEL==2'b10)?ot[2]:
			  (SEL==2'b11)?ot[3]:4'b0000;
endmodule 			  
			  