module encoder_8_3_tb;
reg [7:0]in;
wire [2:0]out;
integer i;
encoder_8_3 dut(in,out);

initial
	begin
        for(i=0;i<256;i=i+5)
		begin
		in=i;
		#10;
		end
	end
endmodule

