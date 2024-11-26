`timescale 1ns / 1ps


module Overflow(
    input clk,reset,D,en,
    output logic Q,OF
    );
    Flip_FLop FF(.*);
    
    assign OF = (~D)&Q;
    
     
endmodule
