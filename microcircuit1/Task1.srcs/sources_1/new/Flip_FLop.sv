`timescale 1ns / 1ps


module Flip_FLop(
    input clk,reset,D,en,
    output logic Q
    );
    
    always_ff@(posedge clk, negedge reset) begin
        if (en == 1)
            Q<=D;
        else if (reset == 0)
            Q<=0;
        else Q<=Q;
     end
endmodule
