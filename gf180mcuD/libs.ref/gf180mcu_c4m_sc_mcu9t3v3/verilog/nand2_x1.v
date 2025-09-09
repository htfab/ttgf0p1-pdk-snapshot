/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `nand2_x1`             */
/*                                                                      */


`timescale 1 ps/1 ps

module nand2_x1 (nq, i0, i1);

  output nq;
  input  i0;
  input  i1;


  assign nq = (~(i1) | ~(i0));

endmodule
