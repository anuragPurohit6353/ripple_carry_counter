module ripple_carry_counter(q,clk,reset);

output [3:0]q;
input clk,reset;

//four instances for T flipFlop 
T_ff tff0(q[0],clk,reset);
T_ff tff1(q[1],q[0],reset);
T_ff tff2(q[2],q[1],reset);
T_ff tff3(q[3],q[2],reset);

endmodule



module T_ff(q,clk,reset);
output q;
input clk,reset;
wire d;
D_ff dff0(q,d,clk,reset);
not n1(d,q);
endmodule


module D_ff(q,d,clk,reset);
output q;
input d,clk,reset;
reg q;
always @(posedge reset or negedge clk) 
if(reset) 
q <= 1'b0;
else
q <= d;
endmodule
