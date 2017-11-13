vlib postsynth
vmap postsynth ./postsynth
vlog +incdir+E:/Actelprj/jamma/hdl -work postsynth E:/Actelprj/jamma/designer/jamma.v
vlog +incdir+E:/Actelprj/jamma/hdl -work postsynth E:/Actelprj/jamma/stimulus/trigger.v
vsim -L ex -t 1ns postsynth.testbench
add wave /testbench/*
run 7500ns
