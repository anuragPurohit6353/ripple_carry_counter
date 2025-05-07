📦 Ripple Carry Counter using T Flip-Flops (Verilog)
This project implements a 4-bit Ripple Carry Counter using T Flip-Flops, each internally constructed using a D Flip-Flop. The counter increments on each falling edge of the clock and resets asynchronously.

📋 Project Structure
verilog
Copy
Edit
- ripple_carry_counter: Top-level 4-bit counter module.
- T_ff: T Flip-Flop module implemented using a D Flip-Flop.
- D_ff: Edge-triggered D Flip-Flop with asynchronous reset.
📘 How It Works
The T Flip-Flop toggles its output on each clock edge when T=1.

Internally, each T Flip-Flop is created using a D Flip-Flop and a NOT gate.

The output of each flip-flop acts as the clock input to the next, forming a ripple effect.

🔁 Ripple Carry Counter Block Diagram
perl
Copy
Edit
             ┌─────┐       ┌─────┐       ┌─────┐       ┌─────┐
     clk ───▶│ TFF │ q[0]─▶│ TFF │ q[1]─▶│ TFF │ q[2]─▶│ TFF │ q[3]
    reset ──▶│     │       │     │       │     │       │     │
             └─────┘       └─────┘       └─────┘       └─────┘
Each T Flip-Flop toggles on the falling edge of its clock input (previous stage output).

🛠️ Simulation and Usage
To simulate this design:

Clone the repo:

bash
Copy
Edit
git clone https://github.com/your-username/ripple-carry-counter.git
cd ripple-carry-counter
Use a simulator like Icarus Verilog or ModelSim.

Compile and run testbench (if available):

bash
Copy
Edit
iverilog -o counter_tb testbench.v ripple_carry_counter.v
vvp counter_tb
📄 Files Included
ripple_carry_counter.v: Top-level module and flip-flop submodules



