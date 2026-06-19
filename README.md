# 4-Bit Arithmetic Logic Unit (ALU) using Verilog HDL

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The ALU performs a variety of arithmetic, logical, and shift operations based on a 4-bit select input. The design was developed and simulated using Xilinx Vivado.

## Features

* 4-bit Arithmetic Logic Unit
* Combinational logic design
* Verilog HDL implementation
* Behavioral simulation and verification
* RTL schematic generation

## Supported Operations

| Select (sel) | Operation              |
| ------------ | ---------------------- |
| 0000         | Addition (A + B)       |
| 0001         | Subtraction (A - B)    |
| 0010         | Decrement B (B - 1)    |
| 0011         | Multiplication (A × B) |
| 0100         | Logical AND            |
| 0101         | Logical OR             |
| 0110         | Logical NOT            |
| 0111         | Bitwise NOT            |
| 1000         | Bitwise AND            |
| 1001         | Bitwise OR             |
| 1010         | XOR                    |
| 1011         | Left Shift             |
| 1100         | Right Shift            |
| 1101         | Increment A (A + 1)    |
| 1110         | Decrement A (A - 1)    |
| 1111         | Transfer B             |

## Project Structure

```text
ALU_4_BIT.v       // Main ALU design
ALU_4_BIT_TB.v    // Testbench
```

## Simulation

The ALU was verified using a custom Verilog testbench. Different input combinations and select signals were applied to validate all supported operations.

### Sample Inputs

```verilog
a = 4'b0101; // 5
b = 4'b0011; // 3
```

## Tools Used

* Verilog HDL
* Xilinx Vivado
* RTL Analysis
* Behavioral Simulation

## Learning Outcomes

* Digital Logic Design
* Verilog HDL Programming
* ALU Architecture
* Simulation and Verification
* RTL Schematic Analysis

## Author

Sri
