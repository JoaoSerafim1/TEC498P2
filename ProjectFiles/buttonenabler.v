module buttonenabler (
	CH0, CH1,
	CH7, CH6, CH5, CH4, CH3, CH2,
	NCH0, NCH1,
	IPT0, IPT1,
	
	OUT0, OUT1
);

	input
	CH0, CH1,
	CH7, CH6, CH5, CH4, CH3, CH2,
	NCH0, NCH1,
	IPT0, IPT1;
	
	output
	OUT0, OUT1;
	
	wire
	NCH4, NCH3, NCH2,
	isletteractive,
	isnumberinactive0, isnumberinactive1, isnumberinactive2,
	isnumberactive,
	is0ON,
	was0alwaysOFF;

	
not (NCH4, CH4);
not (NCH3, CH3);
not (NCH2, CH2);

and (isnumberinactive0, NCH4, NCH3, NCH2);
and (isnumberinactive1, CH4, CH3, NCH2);
and (isnumberinactive2, CH4, CH3, CH2);

or (isletteractive, CH7, CH6, CH5);
nor (isnumberactive, isnumberinactive0, isnumberinactive1, isnumberinactive2);

and (is0ON, IPT0, CH0, CH1, isletteractive, isnumberactive);

srlt_gate gamestatus_0 (
		.s (is0ON),
		.r (NCH0),
		.qbar (was0alwaysOFF)
);

or (OUT0, is0ON);
and (OUT1, IPT1, CH0, NCH1, was0alwaysOFF);
	

endmodule
