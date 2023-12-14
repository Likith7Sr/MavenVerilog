module ALU_tb;
reg [7:0]a;
reg [7:0]b;
reg [2:0]opcode;
reg clk,rst;
wire [7:0]result;
integer i;
ALU dut(a,b,opcode,clk,rst,result);
initial
	begin
	a=8'b01100011;
	b=8'b00011001;
	clk=0;
	rst=0;
	opcode=8'b0;
	end
always
	begin
	#5 clk=~clk;
	end 
initial 
	begin
	rst=1;
	#10 rst=0;
        for(i=0;i<8;i=i+1)
        	begin 
		opcode = i;
	 	#10;
		end
	end

endmodule
