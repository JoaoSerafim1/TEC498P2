module bin3bcount (IPTCLK, A, B, C);

	input IPTCLK;

	output A, B, C;

	wire togtoqbar;


or(C, IPTCLK);
	
tff_gate ff00 (
		.t (1'b1),
		.clk (IPTCLK),
		.q (B),
		.qbar (togtoqbar)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar),
		.q (A)
);

endmodule
