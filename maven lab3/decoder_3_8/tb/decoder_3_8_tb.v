module decoder_3_8_tb;
reg [2:0]in;
wire [7:0]out;
integer i;
decoder_3_8 dut(in,out);
initial
	begin
	in=3'b000;
	end
initial
	begin
	for(i=0;i<8;i=i+1)
		begin
		in=i;
		#10;
		end
	end
endmodule

