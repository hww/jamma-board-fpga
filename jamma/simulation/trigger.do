onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /testbench/nReset
add wave -noupdate -format Logic /testbench/nCS0
add wave -noupdate -format Logic /testbench/nCS1
add wave -noupdate -format Literal /testbench/da
add wave -noupdate -format Logic /testbench/nDiow
add wave -noupdate -format Logic /testbench/nDior
add wave -noupdate -format Literal /testbench/dd
add wave -noupdate -format Logic /testbench/iordy
add wave -noupdate -format Literal /testbench/CoinCounter
add wave -noupdate -format Literal /testbench/CoinLockout
add wave -noupdate -format Literal /testbench/P
add wave -noupdate -format Logic /testbench/clk
add wave -noupdate -format Logic /testbench/jamma_0/lcCookie/out
add wave -noupdate -format Logic /testbench/jamma_0/lcAfterCookie/out
add wave -noupdate -format Literal /testbench/jamma_0/packetCounter/counter
add wave -noupdate -format Literal /testbench/jamma_0/ibCounter/counter
add wave -noupdate -format Logic /testbench/jamma_0/ilookCntr/mt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {0 ns}
WaveRestoreZoom {0 ns} {2875 ns}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 2
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
