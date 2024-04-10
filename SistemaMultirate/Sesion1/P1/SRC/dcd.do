vcom midcd.vhd
vsim -t ns dcd(behavioral)

add wave -hex -ports *
add wave -divider "internals"
add wave -hex -internal *

force c 0, 1 5ns -r 10ns
force r 0, 1 40ns, 0 80ns
force mode 00, 01 50us

run 100us

