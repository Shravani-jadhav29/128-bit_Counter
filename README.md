# 128-Bit Counter Implementation on Basys 3 Using Vivado ILA Debug IP

## Overview

This project implements a **128-bit binary counter** on the **Digilent Basys 3 FPGA** using **Verilog HDL**. The design is verified using the **Integrated Logic Analyzer (ILA)** from the Vivado IP Catalog. Since a 128-bit counter cannot be displayed using the onboard LEDs or seven-segment display, the ILA Debug IP is used to monitor the counter values in real time through Vivado Hardware Manager.

## Features

- 128-bit synchronous binary counter
- Verilog HDL implementation
- Uses the onboard 100 MHz clock
- Asynchronous reset support
- Real-time debugging using Vivado Integrated Logic Analyzer (ILA)
- Compatible with Digilent Basys 3 (Artix-7 FPGA)

## Hardware Requirements

- Digilent Basys 3 FPGA Board
- Xilinx Vivado Design Suite
- USB cable for programming and debugging

## Project Structure

```text
128bit-Counter/
├── src/
│   └── counter.v
├── constraints/
│   └── basys3.xdc
├── debug/
│   └── ila_0.xci
└── README.md
```

## Working Principle

The design consists of a **128-bit counter** that increments by one on every rising edge of the onboard **100 MHz** clock.

- When the reset signal is asserted, the counter is cleared to zero.
- On every clock cycle, the counter increments by one.
- The internal counter value is connected to the **Vivado ILA Debug IP**, allowing real-time observation without using external output pins.

## Debugging Using Vivado ILA

The Integrated Logic Analyzer (ILA) captures the internal counter signal and displays it in the Vivado Hardware Manager.

### Debug Flow

1. Design the 128-bit counter in Verilog.
2. Add the **Integrated Logic Analyzer (ILA)** IP from the Vivado IP Catalog.
3. Configure the ILA with:
   - Probe0: Reset (1 bit)
   - Probe1: Counter (128 bits)
4. Connect the counter output to the ILA probe.
5. Generate the bitstream.
6. Program the Basys 3 FPGA.
7. Open Vivado Hardware Manager.
8. Trigger and capture the waveform to observe the counter operation.

## Applications

- Learning FPGA debugging techniques
- Internal signal monitoring
- Digital system verification
- FPGA design validation
- Demonstration of wide binary counters
- Hardware debugging using Vivado ILA

## Getting Started

1. Open Xilinx Vivado.
2. Create a new RTL project.
3. Add the Verilog source file (`counter.v`).
4. Add the Basys 3 constraints (`.xdc`) file.
5. Generate and configure the ILA IP.
6. Run Synthesis and Implementation.
7. Generate the Bitstream.
8. Program the Basys 3 FPGA.
9. Open Hardware Manager and capture the counter waveform using the ILA.

## Tools Used

- Verilog HDL
- Xilinx Vivado Design Suite
- Vivado Integrated Logic Analyzer (ILA)
- Digilent Basys 3 FPGA (Artix-7)

## Future Improvements

- Add a clock divider for slower counting.
- Implement an up/down counter.
- Add a programmable counter preload value.
- Integrate a Virtual Input/Output (VIO) IP to control the reset signal.
- Display selected counter bits on the onboard LEDs.

**Developed using Verilog HDL, Xilinx Vivado, and the Integrated Logic Analyzer (ILA) Debug IP on the Digilent Basys 3 FPGA.**
Shravani jadhav
