module binpower18clockdivider (CLKTODIVIDE, DIVIDEDCLK);

	input CLKTODIVIDE;

	output DIVIDEDCLK;

	wire togtoqbar00, togtoqbar01, togtoqbar02, togtoqbar03, togtoqbar04, togtoqbar05, togtoqbar06, togtoqbar07, togtoqbar08, togtoqbar09, togtoqbar10, togtoqbar11, togtoqbar12, togtoqbar13, togtoqbar14, togtoqbar15, togtoqbar16;
	
tff_gate ff00 (
		.t (1'b1),
		.clk (CLKTODIVIDE),
		.qbar (togtoqbar00)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar00),
		.qbar (togtoqbar01)
);

tff_gate ff02 (
		.t (1'b1),
		.clk (togtoqbar01),
		.qbar (togtoqbar02)
);

tff_gate ff03 (
		.t (1'b1),
		.clk (togtoqbar02),
		.qbar (togtoqbar03)
);

tff_gate ff04 (
		.t (1'b1),
		.clk (togtoqbar03),
		.qbar (togtoqbar04)
);

tff_gate ff05 (
		.t (1'b1),
		.clk (togtoqbar04),
		.qbar (togtoqbar05)
);

tff_gate ff06 (
		.t (1'b1),
		.clk (togtoqbar05),
		.qbar (togtoqbar06)
);

tff_gate ff07 (
		.t (1'b1),
		.clk (togtoqbar06),
		.qbar (togtoqbar07)
);

tff_gate ff08 (
		.t (1'b1),
		.clk (togtoqbar07),
		.qbar (togtoqbar08)
);

tff_gate ff09 (
		.t (1'b1),
		.clk (togtoqbar08),
		.qbar (togtoqbar09)
);

tff_gate ff10 (
		.t (1'b1),
		.clk (togtoqbar09),
		.qbar (togtoqbar10)
);

tff_gate ff11 (
		.t (1'b1),
		.clk (togtoqbar10),
		.qbar (togtoqbar11)
);

tff_gate ff12 (
		.t (1'b1),
		.clk (togtoqbar11),
		.qbar (togtoqbar12)
);

tff_gate ff13 (
		.t (1'b1),
		.clk (togtoqbar12),
		.qbar (togtoqbar13)
);

tff_gate ff14 (
		.t (1'b1),
		.clk (togtoqbar13),
		.qbar (togtoqbar14)
);

tff_gate ff15 (
		.t (1'b1),
		.clk (togtoqbar14),
		.qbar (togtoqbar15)
);

tff_gate ff16 (
		.t (1'b1),
		.clk (togtoqbar15),
		.qbar (togtoqbar16)
);

tff_gate ff17 (
		.t (1'b1),
		.clk (togtoqbar16),
		.q (DIVIDEDCLK)
);

endmodule
