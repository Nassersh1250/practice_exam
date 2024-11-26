`timescale 1ns / 1ps


module multiplier_TB;


  
  logic [3:0] a,b;
  logic [7:0]prod;
  
fourbitmultiplier FBM(.*);
 

  initial begin
  
  a=0; b = 0; #5;
  a=4'b0001; b = 4'b0001; #5;
  a=4'b0111; b = 4'b0011; #5;
  a=4'b1010; b = 4'b0101; #5;
  a=4'b0101; b = 4'b1111; #5;
    
  
  $finish;
  end
  
  
  endmodule
