vlib work
vmap work work 

vcom -work work C:/intelFPGA/work/Lab5i/SRC/MemCtrl.vhd
vsim -t ns work.MemCtrl(MultiSeg)
add wave *
force clk 0, 1 21.25 -r 42.5
force rst 1 42.5,0 120
force mem 0
force mem 1 300, 0 450
force mem 1 700
run 1us