set current_folder [file dirname [file normalize [info script]]]
# Technology lib

set ::env(LIB_TYPICAL) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/gf180mcu_c4m_sc_mcu9t3v3__tt_025C_3v30.lib"
set ::env(LIB_FASTEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/gf180mcu_c4m_sc_mcu9t3v3__ff_n20C_3v63.lib"
set ::env(LIB_SLOWEST) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/gf180mcu_c4m_sc_mcu9t3v3__ss_085C_2v97.lib"

set ::env(LIB_SYNTH) $::env(LIB_TYPICAL)

# MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux2_map.v"

# Placement site for core cells
# This can be found in the technology lef
set ::env(PLACE_SITE) "unithd"
set ::env(PLACE_SITE_WIDTH) 0.02
set ::env(PLACE_SITE_HEIGHT) 7.43

# welltap and endcap cell
set ::env(FP_WELLTAP_CELL) "tie_diff_w2"
set ::env(FP_ENDCAP_CELL) "tie_diff_w2"

# defaults (can be overridden by designs):
set ::env(SYNTH_DRIVING_CELL) "inv_x2"
set ::env(SYNTH_DRIVING_CELL_PIN) "nq"
set ::env(SYNTH_CLK_DRIVING_CELL) "inv_x4"
set ::env(SYNTH_CLK_DRIVING_CELL_PIN) "nq"

# update these
set ::env(OUTPUT_CAP_LOAD) "2.28" ; # femtofarad from pin I in liberty file
set ::env(SYNTH_MIN_BUF_PORT) "buf_x2 i q"
set ::env(SYNTH_TIEHI_PORT) "one_x1 one"
set ::env(SYNTH_TIELO_PORT) "zero_x1 zero"

# Placement defaults
set ::env(PL_LIB) $::env(LIB_TYPICAL)

# Fillcell insertion
set ::env(FILL_CELL) "fill*"
set ::env(DECAP_CELL) "decap*"

# Diode Insertion
# A fake diode has to be created, for now don't use any strategy that uses fake diode
# set ::env(FAKEDIODE_CELL) ""
set ::env(DIODE_CELL) "diode_w1"
set ::env(DIODE_CELL_PIN) "i"
set ::env(DIODE_INSERTION_STRATEGY) {4}

set ::env(CELL_PAD_EXCLUDE) "fill*"

# TritonCTS configurations
set ::env(CTS_ROOT_BUFFER) "buf_x4"
set ::env(CTS_CLK_BUFFER_LIST) "buf_x1 buf_x2 buf_x4"
set ::env(CTS_MAX_CAP) 0.5

set ::env(FP_PDN_RAIL_WIDTH) 0.6

set ::env(MAX_TRANSITION_CONSTRAINT) 1.5
set ::env(MAX_FANOUT_CONSTRAINT) 8
set ::env(MAX_CAPACITANCE_CONSTRAINT) 0.2

set ::env(GPL_CELL_PADDING) {0}
set ::env(DPL_CELL_PADDING) {0}

set ::env(TRISTATE_CELL_PREFIX) ""
