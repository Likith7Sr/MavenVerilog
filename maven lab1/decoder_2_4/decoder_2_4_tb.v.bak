module decoder_2_4_tb;
reg enable;
reg[1:0]in;
wire [3:0]out;
integer i;
decoder_2_4 dut(enable,in,out);
initial 
begin
enable=1'b0;
in[0]=1'b0;
in[1]=1'b1;
end
initial 
begin
enable=1'b1;
for(i=0;i<4;i=i+1)
begin
{in[0],in[1]}=i;
#10;
end
end
endmodule
