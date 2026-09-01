`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 12:20:27
// Design Name: 
// Module Name: latch_tb
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


module latch_tb();
logic sel;
logic out;

latch dut ( .sel(sel), .out(out));

initial begin
sel = 0;
#100
sel = 1;
#100
sel = 0;
#100
$finish;
end
endmodule
