 vlib work
 vmap work work


vcom -work work ./FIFO.vhd

vsim -t ps  work.FIFO(FWFT)
add wave *



force clk 0, 1 10ns -r 20ns
force rst 1, 0 20ns

force push 0, 1 20ns 
force push 0 40ns, 1 60ns
force push 0 80ns, 1 100ns
force push 0 120ns, 1 140ns
force push 0 160ns, 1 180ns
force push 0 200ns
force pop 0,1 240ns
force pop 0 260ns,1 280ns
force pop 0 300ns,1 320ns
force pop 0 340ns,1 360ns
force pop 0 380ns,1 400ns
force pop 0 420ns
run 1us