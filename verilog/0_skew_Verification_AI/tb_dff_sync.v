`timescale 1ns/1ps

module tb_skew_sim;

	reg clk_main = 0;
	reg clk_skewed = 0;
	reg rst = 1;
	reg d = 0;
	wire q_main, q_skewed;

	//clock generation (10ns period)
	always #5 clk_main = ~clk_main;

	//introduce skew (3ns delay)
	always @(clk_main) begin
		#3 clk_skewed = clk_main;
	end

	// Instantiate D-FF
	dff_sync dff1 (.clk(clk_main), .rst(rst), .d(d), .q(q_main));
	dff_sync dff2 (.clk(clk_skewed), .rst(rst), .d(d), .q(q_skewed));

	initial begin

	$dumpfile("gtk_dff_skew_sim.vcd");
	$dumpvars(0, tb_skew_sim);
	$monitor("At time = %t, d = %d", $time, d);

	#12 rst = 0; // release reset after few cycles
	#10 d = 1;
	#10 d = 0;
	#10 d = 1;
	#10 d = 0;

	#50 $finish;
	end
endmodule

