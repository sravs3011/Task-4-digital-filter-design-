# Digital FIR Filter Design - CodTech Internship Task

This is my digital filter design task for codtech internship. I designed a 4-tap FIR filter using Verilog and created testbench to check its working.

## FIR Filter Details

- It is a 4-tap FIR (Finite Impulse Response) filter.
- Coefficients used:  
  b0 = 1, b1 = 2, b2 = 3, b3 = 4
- Output is calculated based on past 4 inputs and given coefficients.

## Formula Used

`y_out = x[0]*b0 + x[1]*b1 + x[2]*b2 + x[3]*b3`

Where `x[0]` is the newest input and `x[3]` is the oldest.

## Files I used

- `fir_filter.v` → Verilog code of FIR filter
- `fir_tb.v` → Testbench to simulate it
- `dump.vcd` → Output waveform file

## How to Run

I used iverilog and gtkwave for checking output.

```bash
iverilog -o fir_test fir_filter.v fir_tb.v
vvp fir_test
gtkwave dump.vcd
