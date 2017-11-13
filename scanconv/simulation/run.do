vlib presynth
vmap presynth ./presynth
vlog +incdir+D:/Actelprj/scanconv/hdl -work presynth 
vlog +incdir+D:/Actelprj/scanconv/hdl -work presynth D:/Actelprj/scanconv/hdl/scanconv.v
vlog +incdir+D:/Actelprj/scanconv/hdl -work presynth D:/Actelprj/scanconv/stimulus/egavga.v
vsim -L ex -t 10ns presynth.testbench
add wave /testbench/*
run 22000000ns
