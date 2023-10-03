module srlt_gate (
	s, r,
	q, qbar
);

	input
	s, r;

	output
	q, qbar;

	wire
	ns, nr,
	nand0_out, nand1_out;

not (ns, s);
not (nr, r);

nand (nand0_out, ns, nand1_out);
nand (nand1_out, nr, nand0_out);
or (q, nand0_out);
or (qbar, nand1_out);

endmodule
