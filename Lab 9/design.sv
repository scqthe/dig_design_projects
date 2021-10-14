// Top level module - Design a 4-bit LFSR as per the block diagram on the lab pdf

`include "dff.sv"

module lfsr(clk, preset, q);
  //INITIALIZE INPUTS AND OUTPUTS BASED ON MANUAL INSTRUCTIONS
  input clk, preset;
  output reg [3:0]q;
  
  //CREATE THE 4 D-FF SHIFT REGISTER
  wire out1;
  
  dff_asyncpre DFF3(clk, out1, q[3], preset);
  dff_asyncpre DFF2(clk, q[3], q[2], preset);
  dff_asyncpre DFF1(clk, q[2], q[1], preset);
  dff_asyncpre DFF0(clk, q[1], q[0], preset);
  xor xor1(out1, q[3], q[0]);

  
endmodule