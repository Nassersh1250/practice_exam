`timescale 1ns / 1ps


module pattern_match_TB;

logic clk,reset,en,serial;
logic [4:0] template,tempout,serial_out;
logic pattern_match;


eightbitreg reges1(
    .clk(clk),
    .reset(reset),
    .en(en),
    .D(template),
    .Q(tempout)
    );
    
shiftreg reges2(
    .clk(clk),
    .reset(reset),
    .en(en),
    .D(serial),
    .Q(serial_out)
    );

pattern_match matching(
    .reg1(tempout),    
    .reg2(serial_out),
    .match(pattern_match)
    );
    
initial begin 
clk = 0;

forever #1 clk = ~clk;
end

initial begin
  
  reset = 0; #5;
  en = 1; reset = 1; template = 5'b10110; serial = 1'b1; #5;
  serial = 0; #2;
  serial = 1; #5;
  serial = 0; #5;
    
  
$finish;
end

endmodule
