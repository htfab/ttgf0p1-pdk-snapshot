/*                                                                      */
/*  Avertec Release v3.4p5 (64 bits on Linux 6.15.8-1-default)          */
/*  Generation date Fri Aug 15 11:22:42 2025                            */
/*                                                                      */
/*  Verilog data flow description generated from `dffnr_x1`             */
/*                                                                      */


`timescale 1 ps/1 ps

module dffnr_x1 (i, clk, q, nrst);

  input  i;
  input  clk;
  output q;
  input  nrst;

  reg v_dff_m;
  reg v_dff_s;
  wire v_y;
  wire v_u;
  wire v_clk_buf;
  wire v_clk_n;

  assign v_clk_n = ~(clk);
  assign v_clk_buf = ~(v_clk_n);
  assign v_u = ~(i);
  assign v_y = (~(nrst) | ~(v_dff_m));

always @ (nrst or v_clk_n or v_dff_m)
begin
  if (nrst === 1'b0)
    v_dff_s <= 1'b1;
  else if ((nrst === 1'b1 && v_clk_n === 1'b0))
    v_dff_s <= ~(v_dff_m);
end

always @ (nrst or v_clk_n or v_u)
begin
  if ((nrst === 1'b0 && v_clk_n === 1'b0))
    v_dff_m <= 1'b0;
  else if (v_clk_n === 1'b1)
    v_dff_m <= ~(v_u);
end

  assign q = ~(v_dff_s);

endmodule
