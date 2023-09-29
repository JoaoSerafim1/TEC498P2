module bin3bcount (IPTCLK, A, B, C);

	input IPTCLK;

	output A, B, C;

	wire togtoqbar00, togtoqbar01;


or(C, IPTCLK);
	
tff_gate ff00 (
		.t (1'b1),
		.clk (IPTCLK),
		.q (B),
		.qbar (togtoqbar00)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar00),
		.q (A)
);

endmodule
