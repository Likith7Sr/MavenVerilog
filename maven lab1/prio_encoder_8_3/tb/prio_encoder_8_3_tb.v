module prio_encoder_8_3_tb;
reg [7:0]IN;
wire [2:0]OUT;
integer i;
prio_encoder_8_3 dut(IN,OUT);
initial
begin
IN=8'b0000_0000;
end
initial
begin
for(i=0;i<256;i=i+1)
begin
IN=i;
#10;
end
end
endmodule

