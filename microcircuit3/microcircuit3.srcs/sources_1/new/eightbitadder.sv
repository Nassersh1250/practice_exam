`timescale 1ns / 1ps

module eightbitadder(
    input logic [7:0] A,B,
    input logic cin,
    output logic [7:0] sum,
    output logic cout
    );
    wire [3:0] fourA1,fourB1,fourA2,fourB2,foursum1,foursum2;
    wire cout_temp;
    assign fourA1= A[3:0];
    assign fourB1=B[3:0];
    assign fourA2=A[7:4];
    assign fourB2=B[7:4];
    assign sum[3:0]=foursum1;
    assign sum[7:4] = foursum2;
    fulladder add1(.A(fourA1),.B(fourB1),.sum(foursum1),.cout(cout_temp),.cin(cin));
    fulladder add2(.A(fourA2),.B(fourB2),.sum(foursum2),.cout(cout),.cin(cout_temp));
endmodule
