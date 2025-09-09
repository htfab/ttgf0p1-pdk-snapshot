/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `or21nand_x1`          */
/*                                                                      */


`timescale 1 ps/1 ps

module or21nand_x1 (nq, i0, i1, i2);

  output nq;
  input  i0;
  input  i1;
  input  i2;


  assign nq = (~(i2) | (~(i1) & ~(i0)));

endmodule
