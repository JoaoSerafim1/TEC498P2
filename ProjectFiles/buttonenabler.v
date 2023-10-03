module buttonenabler (
	CH0, CH1,
	NCH0, NCH1,
	IPT0, IPT1,
	
	OUT0, OUT1
);

	input
	CH0, CH1,
	NCH0, NCH1,
	IPT0, IPT1;
	
	output
	OUT0, OUT1;
	
	wire
	is0ON,
	was0alwaysOFF;


	
and (is0ON, IPT0, CH0, CH1);

srlt_gate gamestatus_0 (
		.s (is0ON),
		.r (NCH0),
		.qbar (was0alwaysOFF)
);

or (OUT0, is0ON);
and (OUT1, IPT1, CH0, NCH1, was0alwaysOFF);
	

endmodule
