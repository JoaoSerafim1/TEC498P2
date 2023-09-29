module bin2bselector (
	IPTCLK,
	A, B
);

	input
	IPTCLK;

	output A, B;

	wire togtoqbar;

	
tff_gate ff00 (
		.t (1'b1),
		.clk (IPTCLK),
		.qbar (togtoqbar),
		.q (B)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar),
		.q (A)
);

endmodule
