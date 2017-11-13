vlib presynth
vmap presynth ./presynth
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/quad_counter.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/jamma.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/vga.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/memory.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/cgaega.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/scanconv.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/hdl/jammaone.v
vlog +incdir+D:/Actelprj/JamaOneChip/hdl -work presynth D:/Actelprj/JamaOneChip/stimulus/egavga.v
vsim -L ex -t 10ns presynth.testbench
add wave /testbench/*
run 10000ns
