module ALU(input [7:0]a,input [7:0]b,input [2:0]opcode,input clk,input rst,output reg [7:0]result);

always@(posedge clk)
	begin
		if(rst)
			begin
			result=8'b0;
			end
		else
			begin
			case(opcode)
			3'b000: result<=a+b;
			3'b001: result<=a-b;
			3'b010: result<=a*b;
			3'b011: result<=a/b;
			3'b100: result<=a&b;
			3'b101: result<=a|b;
			3'b110: result<=a^b;
			3'b111: result<=(a>b)?8'b1:8'b0;
			endcase
			end
	end
endmodule 