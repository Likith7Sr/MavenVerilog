module ripple_carry(input [3:0]A,input [3:0]B,input CIN,output [3:0]SUM,output CARRY);
wire C1,C2,C3;
full_adder i1(A[0],B[0],CIN,SUM[0],C1);
full_adder i2(A[1],B[1],C1,SUM[1],C2);
full_adder i3(A[2],B[2],C2,SUM[2],C3);
full_adder i4(A[3],B[3],C3,SUM[3],CARRY);
endmodule 
