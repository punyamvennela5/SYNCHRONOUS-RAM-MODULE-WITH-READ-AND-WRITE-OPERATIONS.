`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 03:05:05 PM
// Design Name: 
// Module Name: syn_RAM
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

// (8 bits address, 16 bit data) 16*8 Synchronous RAM 
module syn_RAM(data_out, we,data_in,read_address,write_address,clk);
    input clk;      //clock signal
    input we;  //write enable signal
    input [15:0] data_in;  //data writen into RAM
    input [7:0] read_address,write_address;  // address of data read from RAM,write into address 
    output [15:0] data_out;   // Get data from RAM
    reg [15:0]memory_array[(2**8)-1:0];    // memory to store or get data
    reg [7:0] address_read;
always@(posedge clk)
begin
    memory_array[04]=16'haa;
    memory_array[05]=16'hbb;
    memory_array[06]=16'hcc;
    memory_array[07]=16'hdd;
    if(we)
        begin
        memory_array[write_address] <= data_in;    //write operation
        end
     else
        begin
          address_read <= read_address;  
        end
    
end
 assign data_out=memory_array[address_read];


endmodule
