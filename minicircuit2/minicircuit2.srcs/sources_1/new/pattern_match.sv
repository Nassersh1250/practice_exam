`timescale 1ns / 1ps

module pattern_match(
    input logic [4:0]reg1,reg2,
    output logic match
    );
    
always@(*) begin
    if(reg1 == reg2)
        match = 1;
    else match = 0;
end
endmodule
