`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 16:01:36
// Design Name: 
// Module Name: twobitadder1
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


module twobitadder1 (in0,in1,out,cout);    //without Cin existing accurate adder (EAA1)
 input  [1:0]in0,in1;
output  [1:0] out;
 output  cout;
 wire  w1, w2, w3, w4;
 (* dont_touch = "yes" *)cxor g1(out[1], w2, w1);
  (* dont_touch = "yes" *)cxor g2(out[0], in0[0], in1[0]);
  (* dont_touch = "yes" *)cxor g3(w2, in0[1], in1[1]);
  (* dont_touch = "yes" *)cand g4(w3, in0[1], in1[1]);
  (* dont_touch = "yes" *)cand g5(w1, in0[0], in1[0]);
  (* dont_touch = "yes" *)cand g7(w4, w1, w2);
  (* dont_touch = "yes" *)cor g6(cout, w4, w3);
   endmodule

