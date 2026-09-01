`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 14:05:16
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();
    logic       clk;
    logic       rst;
    logic [3:0] led;
counter dut (
.clk(clk), .rst(rst), .led(led)
);

initial begin
clk = 0;



end



always #5 clk = ~clk;



initial begin
        rst = 1;
        #20;
        rst = 0;

        #200;
        $finish;
        
 end
endmodule
