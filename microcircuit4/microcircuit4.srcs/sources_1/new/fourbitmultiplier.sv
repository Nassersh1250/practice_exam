`timescale 1ns / 1ps

module fourbitmultiplier(
    input logic [3:0] a,b,
    output logic [7:0] prod
        );
        wire [3:0] sum1,sum2,sum3;
        wire cout1,cout2,cout3;
        
        fulladder FA1(
        .A({1'b0,a[3]&b[0],a[2]&b[0],a[1]&b[0]}),
        .B({a[3]&b[1],a[2]&b[1],a[1]&b[1],a[0]&b[1]}),
        .sum(sum1),
        .cout(cout1),
        .cin(0)
        );
        
        fulladder FA2(
        .A({cout1,sum1[3],sum1[2],sum1[1]}),
        .B({a[3]&b[2],a[2]&b[2],a[1]&b[2],a[0]&b[2]}),
        .sum(sum2),
        .cout(cout2),
        .cin(0)
        );
        
        fulladder FA3(
        .A({cout1,sum2[3],sum2[2],sum2[1]}),
        .B({a[3]&b[3],a[2]&b[3],a[1]&b[3],a[0]&b[3]}),
        .sum(sum3),
        .cout(cout3),
        .cin(0)
        );
        
        assign prod[0] = a[0]&b[0];
        assign prod[1] = sum1[0];
        assign prod[2] = sum2[0];
        assign prod[3] = sum3[0];
        assign prod[4] = sum3[1];
        assign prod[5] = sum3[2];
        assign prod[6] = sum3[3];
        assign prod[7] = cout3;
            
endmodule
