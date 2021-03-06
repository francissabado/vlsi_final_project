//Verilog HDL for "Adder", "CLU_Domino" "functional"

`timescale 1ns/10ps

module CLU_Domino ( C0_, C1, C1_, C2, C2_, C3, C3_, C4, C0, G0, G1, G2, G3,
P0, P1, P2, P3, PHI );

  input P2;
  output C3;
  input P3;
  input G3;
  input G1;
  input C0;
  output C2_;
  output C1;
  output C0_;
  input P1;
  output C3_;
  input G2;
  input P0;
  input G0;
  output C2;
  input PHI;
  output C4;
  output C1_;

  wire C1_io;
  wire C2_io;
  wire C3_io;
  wire C4_io;
  wire C4_;
  wire nn1;
  wire nn2;
  wire nn3;
  wire nn4;

  not #1 inv0(C0_, C0);
  
  and #(1.333) aa0(nn1,P0,C0);
  and #(1.333) aa1(nn2, P1,C1_io);
  and #(1.333) aa2(nn3, P2,C2_io);
  and #(1.333) aa3(nn4, P3,C3_io);
  or #(1.666) o0(C1_io,G0, nn1);
  or #(1.666) o1(C2_io,G1, nn2);
  or #(1.666) o2(C3_io,G2, nn3);
  or #(1.666) o3(C4_io,G3, nn4);

  nand #(2.666,1.333) a0(C1_, C1_io, PHI);
  nand #(2.666,1.333) a1(C2_, C2_io, PHI);
  nand #(2.666,1.333) a2(C3_, C3_io, PHI);
  nand #(2.666,1.333) a3(C4_, C4_io, PHI);
  not #(0.833,1.666) n0(C1,C1_);
  not #(0.833,1.666) n1(C2,C2_);
  not #(0.833,1.666) n2(C3,C3_);
  not #(0.833,1.666) n3(C4,C4_);

endmodule
