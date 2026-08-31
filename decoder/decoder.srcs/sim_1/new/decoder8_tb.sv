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


module decoder8_tb();
    parameter WIDTH = 8;
    logic [2:0] a;     
    logic [WIDTH-1:0] out;  



    decoder #(.WIDTH(WIDTH)) dut( 
            .a(a),
            .out(out)
            );
                 
                 
                 
    initial begin
    a = 3'd0;
    #100;
    a = 3'd2;
    #100;
    a = 3'd3;
    #100;
    a = 3'd1;
    #100;
    a = 3'd6;
    #100;
    a = 3'd5;
    #100;
    a = 3'd4;
    #100;
    a = 3'd7;
    #100;
    $finish;
    
    
    
    end
endmodule