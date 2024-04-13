vlib work
vmap work work 

vcom -work work ./MemCtrlBuf.vhd
vsim -t ns work.MemCtrlBuf(OutputLookAhead)
add wave *
force clk 0, 1 25 -r 50
force rst 1,0 50
force mem 0
force mem 1 300, 0 450
force mem 1 700
run 1us