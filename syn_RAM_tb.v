`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 03:35:03 PM
// Design Name: 
// Module Name: syn_RAM_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module syn_RAM_tb();
    reg clk;
    reg we;
    reg [15:0]data_in;
    reg [7:0]write_address,read_address;
    wire [15:0]data_out;
syn_RAM uut(data_out, we,data_in,read_address,write_address,clk);
always
begin
    
    #5; clk=~clk;  //clock generation
end
initial
begin
     clk=1;
     #10;
     we=1'b1;
     data_in=16'hA;
     write_address=8'd0;
     #10;
      we=1'b1;
     data_in=16'hB;
     write_address=8'd1;
     #10;
      we=1'b1;
     data_in=16'hC;
     write_address=8'd2;
     #10;
      we=1'b1;
     data_in=8'b11000000;
     write_address=8'd3;
     #10;
     we=1'b0;
     read_address=8'd4;
     #10;
     read_address=8'd5;
     #10;
     read_address=8'd6;
end
endmodule
