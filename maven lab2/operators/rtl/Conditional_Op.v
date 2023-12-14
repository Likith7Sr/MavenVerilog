module Conditional_Op( input condition,input  true_result,input  false_result,output result);
assign result = (condition) ? true_result : false_result;
endmodule
