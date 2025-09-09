/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `inv_x2`               */
/*                                                                      */


`timescale 1 ps/1 ps

module inv_x2 (i, nq);

  input  i;
  output nq;


  assign nq = ~(i);

endmodule
