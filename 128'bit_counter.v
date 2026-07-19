`timescale 1ns / 1ps

module counter(

    input clk,
    input reset
);
reg [127:0] count;
always @(posedge clk or posedge reset)
begin
    if (reset)
        count <= 128'd0;
    else
        count <= count + 1'b1;
end

ila_0 ila (
	.clk(clk),       // input wire clk
    .probe0(reset),  // input wire [0:0]  probe0  
	.probe1(count)   // input wire [127:0]  probe1
);
endmodule
