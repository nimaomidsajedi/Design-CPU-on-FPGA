`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create directive in Verilog 
// By: Nima Omidsajedi
// Multiplexer implementation
//////////////////////////////////////////////////////////////////////////////////


module test_1(
input [11:0] din,  // din[5:4] din[3:2] din[1:0]
output reg [2:0] dout
    );

`define sel din[11:9]
`define in1 din[8:6]
`define in2 din[5:3]
`define in3 din[2:0]

always@(*)

begin
if (`sel == 3'b001)  // If no prefix given, number is assumed to be 32 bits therefore here it is determined 3bit length
dout = `in2;
else if (`sel == 3'b010)
dout = `in2;
else
dout = `in3;
end

endmodule
