# Verilog-projects
Collection of RTL designs and Testbenches for learning Digital Design
# Verilog Projects Portfolio

This repository contains a collection of Verilog RTL designs, task-based testbenches, and synthesis results.  
Each project includes:
- RTL code
- Task-based testbench
- Waveform screenshots
- Synthesis netlist/schematic

---

##  Projects

- [Counter Project](counter_project/docs/readme.md)  
  4-bit up counter with task-based testbench, waveform, and synthesis schematic.

- [Down Counter Project](down_counter/docs/readme.md)  
  4-bit down counter with task-based testbench, waveform, and synthesis schematic.

- [Up/Down Counter Project](up_down_counter/docs/readme.md)  
  Combined up/down counter design with control signal.

- [FSM Project](fsm_project/docs/readme.md)  
  Finite State Machine design with verification and synthesis results.

- [APB/SPI Project](apb_spi_project/docs/readme.md)  
  Protocol-based design including APB slave and SPI modules.


##  How to Run
1. Compile RTL and testbench using your simulator (Icarus Verilog, ModelSim, or QuestaSim).  
2. Run simulation to generate `.vcd` or `.wlf` waveform files.  
3. View waveforms in GTKWave (`.vcd`) or QuestaSim (`.wlf`).  
4. Run synthesis in Synopsys DC (`dc_shell`) to generate netlist and schematic.

##  Results
Each project folder contains its own "docs/" directory with waveform and schematic screenshots.
