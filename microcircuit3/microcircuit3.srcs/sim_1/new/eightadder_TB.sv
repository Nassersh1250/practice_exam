`timescale 1ns / 1ps


module eightadder_TB;


  logic cin,cout;
  logic [7:0] A,B;
  logic [7:0]sum;
  
eightbitadder EBA(.*);
 

  initial begin
  
  A=0; B = 0; cin = 0; #5;
  A=8'b00010001; B = 8'b00000001; #5;
  A=8'b01000001; B = 8'b00010001; #5;
  A=8'b00111000; B = 8'b01000001; #5;
  A=8'b00000001; B = 8'b11111111; #5;
    
  
  $finish;
  end
  
  
  endmodule
