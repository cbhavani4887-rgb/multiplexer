# 2×1 Multiplexer using Verilog

## Overview

A 2×1 Multiplexer (MUX) is a combinational logic circuit that selects one of two input signals and forwards it to a single output based on a select signal.

### Truth Table

| Select (S) | Output (Y) |
|------------|------------|
| 0 | A |
| 1 | B |

---

## Equation

Y = S'·A + S·B

---

## Files

- mux2x1.v → Verilog design
- mux2x1_tb.v → Testbench
- simulation_results.txt → Expected simulation output

---

## Software Used

- Icarus Verilog
- GTKWave (optional)
- ModelSim (optional)

---

## How to Run

Compile

```bash
iverilog -o mux mux2x1.v mux2x1_tb.v
```

Run

```bash
vvp mux
```

Generate Waveform

```bash
gtkwave mux.vcd
```

---

## Expected Output

```
A B S | Y
0 0 0 | 0
0 1 0 | 0
1 0 0 | 1
1 1 0 | 1
0 0 1 | 0
0 1 1 | 1
1 0 1 | 0
1 1 1 | 1
```

---

## Author

Your Name