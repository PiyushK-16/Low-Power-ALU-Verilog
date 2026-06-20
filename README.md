# Low-Power-ALU-Verilog
Industry-oriented Low-Power ALU Design using Verilog featuring operand isolation, simulation, synthesis, waveform verification, FPGA implementation flow, and power-aware RTL design.
# Low-Power ALU Design Using Verilog

## Overview

This project implements an 8-bit Low-Power ALU using Verilog.

The ALU supports arithmetic and logical operations and demonstrates operand isolation for reducing unnecessary switching activity.

---

## Features

- Addition
- Subtraction
- AND
- OR
- XOR
- Shift Left
- Shift Right
- Increment
- Decrement
- Compare
- Zero Flag
- Carry Flag
- Negative Flag
- Operand Isolation

---

## Architecture

Operand A<br>
↓<br>
Operand B<br>
↓<br>
Opcode<br>
↓<br>
Low-Power Control<br>
↓<br>
ALU<br>
↓<br>
Flags<br>
↓<br>
Output<br>

---

## Waveforms

### Addition

![ADD](waveforms/add_waveform.png)

### Subtraction

![SUB](waveforms/sub_waveform.png)

### Compare

![COMPARE](waveforms/compare_waveform.png)

### Operand Isolation

![LOWPOWER](waveforms/operand_isolation.png)

---

## Tools Used

- Verilog
- EDA Playground
- GTKWave

---

## Author

Piyush k. Ahirwar
