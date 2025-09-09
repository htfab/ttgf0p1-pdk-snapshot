/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `or2_x1`               */
/*                                                                      */


`timescale 1 ps/1 ps

module or2_x1 (q, i0, i1);

  output q;
  input  i0;
  input  i1;

  wire nq;

  assign nq = (~(i0) & ~(i1));

  assign q = ~(nq);

endmodule
