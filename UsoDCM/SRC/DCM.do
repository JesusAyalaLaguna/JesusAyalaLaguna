 vlib work
 vmap work work

# vcom -work work ./AOI22.vhd
# vcom -work work ./DEBEDGE_bb.vhd
# vcom -work work ./DISPLAY_bb.vhd
# vcom -work work ./MUX2.vhd
vcom -work work ./miDCM.vhd

vsim -t ps work.miDCM(behavioral)
add wave -position insertpoint  \
sim:/midcm/CLKIN_IN
add wave -position insertpoint  \
sim:/midcm/RST_IN
add wave -position insertpoint  \
sim:/midcm/CLK0_OUT
add wave -position insertpoint  \
sim:/midcm/LOCKED_OUT
add wave -position insertpoint  \
sim:/midcm/CLKFX_OUT


force clkin_in 0, 1 10ns -r 20ns
force rst_in 1, 0 60ns
force rst_in 1 400ns
run 600ns
