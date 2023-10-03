module bin6switchregister (
	IPT0, IPT1, IPT2, IPT3, IPT4, IPT5,
	SETBTN,
	MATCHHTEST
);

	input
	IPT0, IPT1, IPT2, IPT3, IPT4, IPT5,
	SETBTN;
	
	output
	MATCHHTEST;
	
	wire
	NIPT0, NIPT1, NIPT2, NIPT3, NIPT4, NIPT5,
	set0, set1, set2, set3, set4, set5,
	reset0, reset1, reset2, reset3, reset4, reset5,
	q0, q1, q2, q3, q4, q5,
	parity0, parity1, parity2, parity3, parity4, parity5;
	
	
not (NIPT0, IPT0);
not (NIPT1, IPT1);
not (NIPT2, IPT2);
not (NIPT3, IPT3);
not (NIPT4, IPT4);
not (NIPT5, IPT5);

and (set0, IPT0, SETBTN);
and (set1, IPT1, SETBTN);
and (set2, IPT2, SETBTN);
and (set3, IPT3, SETBTN);
and (set4, IPT4, SETBTN);
and (set5, IPT5, SETBTN);

and (reset0, NIPT0, SETBTN);
and (reset1, NIPT1, SETBTN);
and (reset2, NIPT2, SETBTN);
and (reset3, NIPT3, SETBTN);
and (reset4, NIPT4, SETBTN);
and (reset5, NIPT5, SETBTN);

srlt_gate reg_0 (
		.q (q0),
		.s (set0),
		.r (reset0)
);

srlt_gate reg_1 (
		.q (q1),
		.s (set1),
		.r (reset1)
);

srlt_gate reg_2 (
		.q (q2),
		.s (set2),
		.r (reset2)
);

srlt_gate reg_3 (
		.q (q3),
		.s (set3),
		.r (reset3)
);

srlt_gate reg_4 (
		.q (q4),
		.s (set4),
		.r (reset4)
);

srlt_gate reg_5 (
		.q (q5),
		.s (set5),
		.r (reset5)
);

xnor (parity0, IPT0, q0);
xnor (parity1, IPT1, q1);
xnor (parity2, IPT2, q2);
xnor (parity3, IPT3, q3);
xnor (parity4, IPT4, q4);
xnor (parity5, IPT5, q5);

and (MATCHTEST, parity0, parity1, parity2, parity3, parity4, parity5);

endmodule
