module mu_tb;
reg [3:0]in;
reg [1:0]sel;
wire out;
integer i;
integer j;
mu dut(in,sel,out);
initial
	begin
	for(i=0;i<4;i=i+1)
		begin
		sel=i;
		#10;
		end
	for(j=0;j<16;j=j+1)
		begin
		in=j;
		#10;
		end
	end
endmodule
