module bi_dir_buf(send_data,recv_data,data_to_buffer);
input send_data,recv_data;
output[2:0] data_to_buffer;
wire [2:0]data_to_buffer;
wire [2:0] temp;
 assign temp=recv_data?data_to_buffer:3'bzzz; 
 assign data_to_buffer=send_data?temp:data_to_buffer;
endmodule
