/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `buf_x4`               */
/*                                                                      */


`timescale 1 ps/1 ps

module buf_x4 (i, q);

  input  i;
  output q;

  wire v_i_n;

  assign v_i_n = ~(i);

  assign q = ~(v_i_n);

endmodule
