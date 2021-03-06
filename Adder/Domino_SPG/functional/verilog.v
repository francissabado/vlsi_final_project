//Verilog HDL for "Adder", "Domino_SPG" "functional"

`timescale 1ns/10ps

module Domino_SPG ( G, P, A, B, CLK, Sub );

  input Sub;
  output P;
  input CLK;
  output G;
  input A;
  input B;

  wire A_;
  wire B_;
  wire Sub_;
  wire xor_normal;  
  wire node1;
  wire node2;
  wire node3;
  wire node4;
  wire node5;

  not #1 n0(Sub_,Sub);
  not #1 n1(B_,B);

  xor x1(xor_normal, Sub, A, B);
  nand #(5.333,2.666) a1(node1, xor_normal, CLK);
  not #(0.833,1.666) n3(P,node1);

  and a2(node2,Sub,A,B_);
  and a3(node3,Sub_,A,B);
  or no1(node4,node2,node3);  
  nand #(2.666,1.333) a4(node5,node4,CLK);
  not #(0.833,1.666) n4(G,node5);

endmodule
