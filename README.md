# 🔁 Ripple Carry Counter using T Flip-Flops (Verilog)

This project implements a **4-bit Ripple Carry Counter** using **T Flip-Flops**, each constructed from a **D Flip-Flop**. The counter increments on the **falling edge** of the clock and includes an **asynchronous reset**.

---

## 📘 Overview

- The counter has 4 stages: q[3:0]
- Each stage is a T Flip-Flop made using a D Flip-Flop and a NOT gate.
- The clock input ripples through each stage via the previous flip-flop's output.
- Reset clears the counter asynchronously.

---

## 🔧 Modules

- `ripple_carry_counter`: Top-level 4-bit counter module
- `T_ff`: T Flip-Flop built from a D Flip-Flop
- `D_ff`: D Flip-Flop with asynchronous reset (active-high)

---

## 🖼️ Block Diagram
         
 ![image](https://github.com/user-attachments/assets/abd509cf-8d94-4309-96c6-799dbc086d3b)


---

## ▶️ How to Simulate

1. **Clone the Repository**
   ```bash
   git clone https://github.com/anuragPurohit6353/ripple-carry-counter.git
   cd ripple-carry-counter
2. **Compile with Icarus Verilog (or your preferred simulator)**
   ```bash
   iverilog -o counter_tb testbench.v ripple_carry_counter.v
   vvp counter_tb
3. **(Optional) View waveform with GTKWave**
   ```bash
    gtkwave counter_tb.vcd
