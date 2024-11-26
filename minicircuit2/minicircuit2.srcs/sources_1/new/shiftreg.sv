`timescale 1ns / 1ps

module shiftreg(
    input logic  D,
    input logic en,reset,clk,
    output logic [4:0] Q
    );
    
    
always_ff@(posedge clk, negedge reset) begin
    if (en == 1) begin
        Q[0] <= D;
        Q[1] <=Q[0];
        Q[2] <=Q[1];
        Q[3] <=Q[2];
        Q[4] <=Q[3];
        end
     else if (reset == 0)
        Q <= 0;
    else Q<=Q;
    
end 
endmodule
