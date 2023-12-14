module bi_dir_buf_tb;

  // Inputs
  reg send_data, recv_data;

  // Outputs
  wire [2:0] data_to_buffer;

  // Instantiate the bidirectional buffer module
  bi_dir_buf uut (
    .send_data(send_data),
    .recv_data(recv_data),
    .data_to_buffer(data_to_buffer)
  );

  // Testbench stimulus
  initial begin
    $display("Testing Bidirectional Buffer");

    // Test Case 1 (Send data)
    send_data = 1; recv_data = 0;
    #10 $display("Case 1: send_data=%b, recv_data=%b, data_to_buffer=%b", send_data, recv_data, data_to_buffer);

    // Test Case 2 (Receive data)
    send_data = 0; recv_data = 1;
    #10 $display("Case 2: send_data=%b, recv_data=%b, data_to_buffer=%b", send_data, recv_data, data_to_buffer);

    // Test Case 3 (No data transfer)
    send_data = 0; recv_data = 0;
    #10 $display("Case 3: send_data=%b, recv_data=%b, data_to_buffer=%b", send_data, recv_data, data_to_buffer);

    // Stop simulation
    #10 $finish;
  end

endmodule

