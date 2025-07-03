# 256x16 Dual-Port RAM in Verilog HDL

# Overview:
This project implements a 256-word deep, 16-bit wide dual-port RAM module in synthesizable Verilog. It allows simultaneous read and write operations through independent read and write ports on a single clock.

>Features:

1.256 words of 16-bit wide memory (256x16).

2.Dual-port capability: supports reading from one address and writing to another in the same clock cycle.

3.Independent read and write addresses for flexible data access.

4.Synchronous write operation on the rising edge of the clock.

5.Asynchronous read output updated on every clock cycle.

6.Reset signal to clear all memory locations to zero.

>Ports:

clk : Clock input.

rst : Active-high synchronous reset.

w_addr : 8-bit write address input.

wr : Write enable input (active high).

din : 16-bit data input for write port.

r_addr : 8-bit read address input.

dout : 16-bit data output for read port.

>Files:

ram.v : Verilog module implementing the dual-port RAM.

tb.v : Basic testbench for simulating the dual-port RAM.

>How It Works:

When 'rst' is high, all memory locations are cleared to 0.

When 'wr' is high on the rising edge of 'clk', 'din' is written to the memory location pointed by 'w_addr'.

At every clock cycle, 'dout' outputs the data stored at the memory location pointed by 'r_addr'.

