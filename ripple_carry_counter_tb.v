`timescale 1ps/1ps
`include "ripple_carry_counter.v"

module ripple_carry_counter_tb;
reg clk;
reg reset;
wire[3:0] q;

ripple_carry_counter mut(q,clk,reset);

initial 
clk = 1'b0;
always
#5 clk = ~clk;
initial begin
    $dumpfile("ripple_carry_counter_tb.vcd");
    $dumpvars(0,ripple_carry_counter_tb);

    reset = 1'b1;
    #15 reset = 1'b0;
    #180 reset = 1'b1;
    #10 reset = 1'b0;
    #20 $finish;
end

    initial
    $monitor("At time : %0d",$time," output q = %0d"," clk = %0d"," reset = %0d",q,clk,reset);
endmodule