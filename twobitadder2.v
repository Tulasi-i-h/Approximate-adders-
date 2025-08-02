`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 16:05:12
// Design Name: 
// Module Name: twobitadder2
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


module twobitadder2 (in0,in1,out,cout);  //without Cin proposed approx adder (PAA1)
    input  [1:0]in0,in1;
    output  [1:0] out;
    output  cout;
  wire  w1, w2, w3, w4;
  (* dont_touch = "yes" *) cxor g1(out[1], w2, w1);
  (* dont_touch = "yes" *) cxor g2(out[0], in0[0], in1[0]);
  (* dont_touch = "yes" *) cxor g3(w2, in0[1], in1[1]);
  (* dont_touch = "yes" *) cand g4(w3, in0[1], in1[1]);
  (* dont_touch = "yes" *) cand g5(w1, in0[0], in1[0]);
 //and g7(w4, w1, w2);
  (* dont_touch = "yes" *) cor g6(cout, w1, w3);  
endmodule
