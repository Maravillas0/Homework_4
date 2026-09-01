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
    logic [1:0] a4;     
    logic [3:0] out4;
    
    logic [2:0] a8;     
    logic [7:0] out8;  



    decoder #(.WIDTH(4)) dut( 
            .a(a4),
            .out(out4)
            );
    decoder #(.WIDTH(8)) dut1( 
    .a(a8),
    .out(out8)
     );
                 
                 
                 
     initial begin

        // WIDTH = 4
        a4 = 2'd3;
        #100;

        a4 = 2'd1;
        #100;

        a4 = 2'd0;
        #100;

        a4 = 2'd2;
        #100;


        // WIDTH = 8
        a8 = 3'd5;
        #100;

        a8 = 3'd7;
        #100;

        a8 = 3'd3;
        #100;

        a8 = 3'd0;
        #100;

        a8 = 3'd6;
        #100;

        a8 = 3'd4;
        #100;

        a8 = 3'd2;
        #100;

        a8 = 3'd1;
        #100;


        $finish;
    
    
    
    end
endmodule
