`timescale 1ns / 1ps


module Overflow_TB;


  logic clk,reset,en,D;
  logic Q,OF;
  
  Overflow overf(.*);
  
  initial begin 
clk = 0;

forever #2 clk = ~clk;
end

  initial begin
  
  reset = 0; en = 0; #5;
  reset = 1; en = 1; D = 0; #5;
  D = 1; #5;
  D = 0; #5;
  $finish;
  end
  
  
  endmodule
