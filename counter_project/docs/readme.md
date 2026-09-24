// 4-BIT UP_COUNTER_PROJECT
Project Structure
rtl  : Verilog RTL design 
tb   : Task-based testbench
docs : Waveform and synthesis(netlist+schematic view) results

// Design Specifications
Inputs  : clk, reset
Outputs : count[3:0]
Working : Increments from 0 to 15, then goes over to 0, Resets clear the counter to 0.

//Results
Waveform : [waveform Screenshot](waveform.png)
Synthesis  : [Netlist + Schematic Screenshot](up_counter_schematic.png)

// How to Run
1. Compile RTL and testbench using your simulator (e.g., Icarus Verilog, ModelSim or QuestaSim).  
2. Run simulation to generate "up_counter.vcd". 
3. Open ".vcd" in GTKWave to view waveform.  
4. Run synthesis in Synopsys DC ("dc_shell") to generate netlist + schematic view.

NOTE : To see waveform need ".vcd" file only for GKTWave users. For ModelSim/QuestaSim users can see built-in ".wlf" waveform directly 
