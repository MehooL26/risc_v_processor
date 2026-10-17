# RISC-V Processor Design

This project focuses on the RTL design and implementation of a single cycle RISC-V processor using Verilog HDL. It aims to explore processor architecture, instruction execution, datapath design, and control logic while developing a deeper understanding of computer architecture and digital system design.

The design will be verified through simulation and evaluated for FPGA implementation using Xilinx Vivado.

## Current Progress

- **ALU:** Implemented arithmetic and logical operations, including ADD, SUB, AND, and OR.
- **Main Decoder:** Decodes instruction opcodes and generates control signals.
- **ALU Decoder:** Uses `ALUop`, `funct3`, and instruction function bits to select the required ALU operation.
- **Simulation:** Developing testbenches using Icarus Verilog to verify module functionality.

## Architecture

The processor is being developed around the following components:

- Program Counter (PC)
- Instruction Memory
- Main Decoder and ALU Decoder
- Register File
- Immediate Generator
- Arithmetic Logic Unit (ALU)
- Data Memory
- Control and Datapath Integration

## Tools and Technologies

- Verilog HDL
- Icarus Verilog — RTL simulation
- GTKWave — Waveform visualization
- Xilinx Vivado — Planned synthesis and FPGA evaluation

## Project Structure

```text
risc_v_processor/
├── alu.v
├── decoder.v
├── alu_decoder.v
├── testbenches/
│   ├── alu_tb.v
│   └── decoder_tb.v
└── README.md
```

## Simulation

Compile the ALU and its testbench using Icarus Verilog:

```bash
iverilog -g2012 -o alu_tb alu.v testbenches/alu_tb.v
```

Run the simulation:

```bash
vvp alu_tb
```

## Planned Development

- Extend the ALU with XOR, comparison, and shift operations.
- Implement the register file and immediate generator.
- Develop the control unit and processor datapath.
- Integrate the components into a single-cycle RISC-V processor.
- Verify instruction execution through simulation.
- Explore synthesis and FPGA implementation using Xilinx Vivado.

## Learning Objectives

- Understand RISC-V instruction execution and datapath design.
- Develop synthesizable RTL modules using Verilog.
- Verify hardware functionality using simulation and testbenches.
- Explore the implementation of processor architecture on FPGA hardware.