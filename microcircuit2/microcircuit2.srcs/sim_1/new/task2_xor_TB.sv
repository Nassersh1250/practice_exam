`timescale 1ns / 1ps


module task2_xor_TB;


  logic clk,reset,en;
  logic [7:0] D;
  logic [7:0]Q;
  logic out;
  
  eightbitreg regs(
    .D(D),
    .clk(clk),
    .reset(reset),
    .en(en),
    .Q(Q)
    );
    
   task2_xor eightxor(
       .in(Q),
       .out(out)
       );
        
        
  
  initial begin 
clk = 0;

forever #2 clk = ~clk;
end

  initial begin
  
  reset = 0; en = 0; #5;
  reset = 1; en = 1; D = 8'b00000000; #5;
  D = 8'b00010001; #5;
  D = 8'b01010100; #5;
  D = 8'b01111000; #5;
  D = 8'b01010001; #5;
  D = 8'b11111111; #5;
  
  $finish;
  end
  
  
  endmodule
