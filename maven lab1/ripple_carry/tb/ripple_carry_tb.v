module ripple_carry_tb;
reg [3:0]A;
reg [3:0]B;
reg CIN;
wire SUM,CARRY;
integer i;
ripple_carry dut(A,B,CIN,SUM,CARRY);
initial
begin
A=3'b000;
B=3'b000;
CIN=1'b0;
end
initial
begin
for(i=0;i<128;i=i+1)
begin
{A,B,CIN}=i;
#10;
end
end
endmodule

