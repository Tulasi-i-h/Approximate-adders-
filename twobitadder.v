`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2025 16:03:26
// Design Name: 
// Module Name: twobitadder
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


module twobitadder(          //with Cin EAA2
    input [1:0] in0,
    input [1:0] in1,
    input  cin,
    output  [1:0] out,
    output  cout
);
  wire w1, w2, w3, w4,w5,w6,w7;
   (* dont_touch = "yes" *)(* dont_touch = "yes" *)cxor g1(w1, in0[0], in1[0]);
   (* dont_touch = "yes" *)cxor g2(out[0], w1, cin);
   (* dont_touch = "yes" *)cand a1 (w3, w1,cin);
   (* dont_touch = "yes" *)cand a2 (w2,in0[0],in1[0]);
   (* dont_touch = "yes" *)cor o1 (w4,w3,w2);
   (* dont_touch = "yes" *)cxor g3 (w5,in0[1],in1[1]);
   (* dont_touch = "yes" *)cand a3 (w6, in0[1],in1[1]);
   (* dont_touch = "yes" *)cand a4 (w7,w5,w4);
   (* dont_touch = "yes" *)cxor g4 (out[1],w4,w5);
   (* dont_touch = "yes" *)cor o2 (cout,w7,w6);
 endmodule

