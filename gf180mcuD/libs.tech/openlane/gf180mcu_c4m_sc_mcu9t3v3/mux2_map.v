module \$_MUX_ (
    output Y,
    input A,
    input B,
    input S
    );
  gf180mcu_as_sc_mcu7t3v3__mux2_2 _TECHMAP_MUX (
      .q(Y),
      .i0(A),
      .i1(B),
      .cmd(S)
  );
endmodule
