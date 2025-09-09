/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `nsnrlatch_x1`         */
/*                                                                      */


`timescale 1 ps/1 ps

module nsnrlatch_x1 (nset, nrst, q, nq);

  input  nset;
  input  nrst;
  inout  q;
  inout  nq;


  assign nq = (~(nrst) | ~(q));
  assign q = (~(nq) | ~(nset));

endmodule
