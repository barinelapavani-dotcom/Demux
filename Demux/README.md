# 1-to-4 DEMUX Using Verilog

## Aim

To design and simulate a **1-to-4 Demultiplexer (DEMUX)** using Verilog HDL in VS Code.

## Description

A DEMUX transfers **one input signal to one of four outputs** based on the select lines.

## Inputs

* `D` – Data input
* `S` – 2-bit select input

## Output

* `Y` – 4-bit output

## Truth Table

| D | S1 | S0 | Y3 | Y2 | Y1 | Y0 |
| - | -- | -- | -- | -- | -- | -- |
| 1 | 0  | 0  | 0  | 0  | 0  | 1  |
| 1 | 0  | 1  | 0  | 0  | 1  | 0  |
| 1 | 1  | 0  | 0  | 1  | 0  | 0  |
| 1 | 1  | 1  | 1  | 0  | 0  | 0  |

## Project Files

```text
DEMUX/
├── demux.v
├── demux_tb.v
├── output.txt
└── README.md
```

## How to Run in VS Code

Compile the files:

```bash
iverilog -o demux_sim demux.v demux_tb.v
```

Run the simulation:

```bash
vvp demux_sim
```

## Result

The 1-to-4 DEMUX was successfully designed and simulated using Verilog HDL.
