/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `nexor2_x0`            */
/*                                                                      */


`timescale 1 ps/1 ps

module nexor2_x0 (i0, i1, q);

  input  i0;
  input  i1;
  output q;

  wire i1_n;
  wire i0_n;

  assign i0_n = ~(i0);
  assign i1_n = ~(i1);

  assign q = ((~(i0_n) & ~(i1)) | (~(i0_n) & ~(i0)) | (~(i1_n) & ~(i1)) |
(~(i1_n) & ~(i0)));

endmodule
