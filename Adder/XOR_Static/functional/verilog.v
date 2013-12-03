//Verilog HDL for "Adder", "XOR_Static" "functional"

`timescale 1ns/10ps

module XOR_Static ( Y, A, B, B_ );

  output Y;
  input B_;
  input A;
  input B;
  wire A_;
  wire L,R;

  not #(1) n1(A_,A);
  and #(3) a1(L,A,B);
  and #(3) a2(R,A_,B_);
  or (Y,L,R);

endmodule