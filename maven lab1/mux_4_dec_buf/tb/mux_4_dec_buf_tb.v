module mux_4_dec_buf_tb;
reg [1:0]sel;
reg [3:0]in;
wire out;
integer i;
mux_4_dec_buf i1(in,sel,out);
initial
begin
sel=2'b00;
in=4'b0000;
end
initial
begin
for(i=0;i<64;i=i+1)
begin
{sel,in}=i;
#10;
end
end
endmodule
