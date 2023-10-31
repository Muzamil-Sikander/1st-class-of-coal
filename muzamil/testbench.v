module tb();
// wire a_1; is use for output in test bench
// reg c_2; is  used for input in test bench

// internal veriable

reg a_1;
reg b_1;

wire c_1;

// Module Design Decleration
and_gate dut(
    .a(a_1),
    .c(c_1),
    .b(b_1)
);
// Drive Stimulas
initial begin
  a_1 <= 1'b1; //1'd1
  b_1 <= 1'b1;
  #10;

  a_1 <= 1'b0;
  b_1 <= 1'b0;
  #10;

  a_1 <= 1'b1;
  b_1 <= 1'b0;
  #10;
   a_1 <= 1'b0;
  b_1 <= 1'b1;
  #10;

end

initial begin
  $dumpfile("dunp.vcd");
  $dumpvars(0);


end    

endmodule
// iverilog -o out.vpp testbench.v design.v
// vvp out.vpp
// gtkwave dunp.vcd