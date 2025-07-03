`timescale 1ns / 1ps

module dualport_ram (
    input clk,
    input rst,
    input [7:0] w_addr,
    input wr,
    input [15:0] din,
    input [7:0] r_addr,
    output reg [15:0] dout
);

    reg [15:0] mem [255:0]; //256x16
integer i;

always @(posedge clk) begin
    if (rst) begin
        for (i = 0; i < 256; i = i + 1)
            mem[i] <= 16'h0000;
        mem[i] <= 16'h0000;
    end else begin
        if (wr)
            mem[w_addr] <= din;
        dout <= mem[r_addr];
    end
end

endmodule
