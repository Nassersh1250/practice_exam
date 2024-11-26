`timescale 1ns / 1ps

module eightbitreg(
    input logic [4:0] D,
    input logic en,reset,clk,
    output logic [4:0] Q
    );
    
    
always_ff@(posedge clk, negedge reset) begin
    if (en == 1)
        Q <= D;
    else if (reset == 0)
        Q <= 0;
    else Q<=Q;
    
end 
endmodule
