module half_adder_tb;
reg a,b;
wire sum,carry;
half_adder dut(a,b,sum,carry);
initial 
begin
    $display("Testing Half Adder");

    // Test Case 1
    a = 0; b = 0;
    #10 $display("Case 1: a=%b, b=%b, Sum=%b, Carry=%b", a, b, sum, carry);

    // Test Case 2
    a = 0; b = 1;
    #10 $display("Case 2: a=%b, b=%b, Sum=%b, Carry=%b", a, b, sum, carry);

    // Test Case 3
    a = 1; b = 0;
    #10 $display("Case 3: a=%b, b=%b, Sum=%b, Carry=%b", a, b, sum, carry);

    // Test Case 4
    a = 1; b = 1;
    #10 $display("Case 4: a=%b, b=%b, Sum=%b, Carry=%b", a, b, sum, carry);

    // Stop simulation
    #10 $finish;
  end

endmodule
