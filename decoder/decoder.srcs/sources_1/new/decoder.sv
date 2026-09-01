`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2026 09:53:20
// Design Name: 
// Module Name: decoder
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


module decoder #(
    parameter WIDTH = 4 
)(
    input  logic [$clog2(WIDTH)-1:0] a,         
    output logic [WIDTH-1:0] out  
);

    always_comb begin
        
        for (int i = 0; i < WIDTH; i++) begin
            out[i] = (a == i);
        end
    end

endmodule
