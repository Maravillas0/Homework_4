`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 10:47:01
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
    parameter WIDTH = 4;
    logic [1:0] a;     
    logic [WIDTH-1:0] out;  



    decoder #(.WIDTH(WIDTH)) dut( 
            .a(a),
            .out(out)
            );
                 
                 
                 
    initial begin
    a = 2'd0;
    #100;
    a = 2'd2;
    #100;
    a = 2'd3;
    #100;
    a = 2'd1;
    #100;
    $finish;
    
    
    
    end
endmodule
