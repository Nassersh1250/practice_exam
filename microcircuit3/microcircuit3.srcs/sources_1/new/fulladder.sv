`timescale 1ns / 1ps

module fulladder(
    input logic cin,
    input logic [3:0] A,B,
    output logic [3:0] sum,
    output logic cout
    );
    always@(*) begin
    assign {cout, sum} = A+B+cin;
    end
endmodule
