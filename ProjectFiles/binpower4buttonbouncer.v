module binpower4buttonbouncer (
	IPTBTN,
	IPTCLK,
	OUTBTN
);

	input
	IPTBTN,
	IPTCLK;
	
	output
	OUTBTN;
	
	wire
	NIPTBTN,
	togtoqbar0, togtoqbar1, togtoqbar2, togtoqbar3,
	
	togglecondition0, togglecondition1, allconditions,
	conditionbit0, conditionbit1, conditionbit2, conditionbit3,
	ffcombination0, ffcombination1;

	
not (NIPTBTN, IPTBTN);

not (Nconditionbit0, conditionbit0);
not (Nconditionbit1, conditionbit1);
not (Nconditionbit2, conditionbit2);
not (Nconditionbit3, conditionbit3);

and (ffcombination0, Nconditionbit0, Nconditionbit1, Nconditionbit2, Nconditionbit3);
and (ffcombination1, conditionbit0, conditionbit1, conditionbit2, conditionbit3);

and (togglecondition0, IPTBTN, ffcombination0);
and (togglecondition1, NIPTBTN, ffcombination1);
nor (togglecondition2, ffcombination0, ffcombination1);

or (allconditions, togglecondition0, togglecondition1, togglecondition2);

tff_gate ff00 (
		.t (allconditions),
		.clk (IPTCLK),
		.qbar (togtoqbar0),
		.q(conditionbit0)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar0),
		.qbar (togtoqbar1),
		.q (conditionbit1)
);

tff_gate ff02 (
		.t (1'b1),
		.clk (togtoqbar1),
		.qbar (togtoqbar2),
		.q (conditionbit2)
);

tff_gate ff03 (
		.t (1'b1),
		.clk (togtoqbar2),
		.q (conditionbit3)
);

srlt_gate sr00 (
		.q (OUTBTN),
		.s (togglecondition0),
		.r (togglecondition1)
);

endmodule
