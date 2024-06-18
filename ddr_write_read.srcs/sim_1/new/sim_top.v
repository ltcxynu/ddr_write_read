module sim_top();

reg clk_in,rst;
always begin
    #5 clk_in <= 1;
    #5 clk_in <= 0;
end
initial begin
    rst <= 1;
    #100 rst <= 0;
end
top dut(
    .clk_in1_p(clk_in),
    .clk_in1_n(~clk_in),
    .reset(rst)
);

endmodule