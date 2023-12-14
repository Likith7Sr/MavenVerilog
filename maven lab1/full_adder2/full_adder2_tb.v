module full_adder2_tb;
reg a,b,c;
wire sum,carry;
integer i;
full_adder2 dut(a,b,c,sum,carry);
initial
	begin
	a=1'b0;b=1'b0;c=1'b0;
	end
initial
	begin
	for(i=0;i<8;i=i+1)
        begin
	{a,b,c}=i;
	#10;
	end
	end

endmodule
