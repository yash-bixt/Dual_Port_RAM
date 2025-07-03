`timescale 1ns / 1ps

module tb_dualport_ram;

reg clk;
reg rst;
reg [7:0] w_addr;
reg wr;
reg [15:0] din;
reg [7:0] r_addr;
wire [15:0] dout;

dualport_ram dut (
    .clk(clk),
    .rst(rst),
    .w_addr(w_addr),
    .wr(wr),
    .din(din),
    .r_addr(r_addr),
    .dout(dout)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

initial begin
    rst = 1;
    wr = 0;
    w_addr = 8'h00;
    r_addr = 8'h00;
    din = 16'h0000;

    #20 rst = 0;

    #10;
    w_addr = 8'h05;
    din = 16'hCAFE;
    wr = 1;
    #10 wr = 0;

    #10;
    r_addr = 8'h05;

    #20 
    $finish;
end

endmodule
