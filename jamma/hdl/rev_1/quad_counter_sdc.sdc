# Top Level Design Parameters

# Clocks
create_clock -period 20.000000 -waveform {0.000000 10.000000} -name clk clk
create_clock -period 20.000000 -waveform {0.000000 10.000000} -name nDiow nDiow
create_clock -period 20.000000 -waveform {0.000000 10.000000} -name nDior nDior

# Virtual Clocks

# False Paths Between Clocks

# Multicycle Constraints

# False Path Constraints

# Output Load Constraints

# Driving Cell Constraints

# Input Delay Constraints

# Output Delay Constraints

# Wire Loads
set_wire_load_mode top

# Other Constraints

