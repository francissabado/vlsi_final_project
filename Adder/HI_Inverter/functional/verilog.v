//Verilog HDL for "Adder", "HI_Inverter" "functional"

`timescale 1ns/10ps

module HI_Inverter ( Vout, Vin );

  input Vin;
  output Vout;

  not #(0.833,1.666) n1(Vout,Vin);

endmodule
