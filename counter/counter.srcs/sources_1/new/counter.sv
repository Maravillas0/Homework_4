`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 31.08.2026 14:04:51
// Design Name:
// Module Name: counter
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


module counter (
    input  logic       clk,
    input  logic       rst,
    output logic [3:0] led
);
    logic [3:0] count;

    always_ff @(posedge clk or negedge rst) begin
        if (rst) begin
            count <= 4'b0;
            led   <= 4'b0;
        end else begin

            if (count == 4'd15) count <= 4'b0; 
            else count <= count + 1'b1;
            end
        end

        assign led = count;
        
    endmodule
