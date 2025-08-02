`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 16:07:52
// Design Name: 
// Module Name: eightbitadder_2bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module eightbitadder_2bit (
  input [7:0] in0, in1,
  output [7:0] out,
  output cout
);

  wire [2:0] c;

 (* dont_touch = "yes" *) twobitadder2 f1(in0[1:0],in1[1:0],out[1:0],c[0]);
  (* dont_touch = "yes" *)twobitadder4 f2 (in0[3:2],in1[3:2],c[0],out[3:2],c[1]);
  (* dont_touch = "yes" *)twobitadder4 f3 (in0[5:4],in1[5:4],c[1],out[5:4],c[2]);
  (* dont_touch = "yes" *)twobitadder f4(in0[7:6],in1[7:6],c[2],out[7:6],cout);
endmodule

