vcom top.vhd
vsim -t ns top

add wave *

force clk 0, 1 5 -r 10
force SW 10001000
force btn 0000

run 400ns