module shipgunner (
	IPTSHIP,
	BTNIPT, NCH0,
	OUT,
	RLED, GLED
);

	input
	IPTSHIP,
	BTNIPT, NCH0;
	
	output
	OUT,
	RLED, GLED;
	
	wire
	watershot,
	shipshot,
	NIPTSHIP;
	
not (NIPTART, IPTART);
not (NIPTSHIP, IPTSHIP);
	
and (watershot, BTNIPT, NIPTSHIP);
and (shipshot, BTNIPT, IPTSHIP);

or (rreset, shipshot, NCH0);
or (greset, watershot, NCH0);
	
srlt_gate rlight_0 (
		.q (RLED),
		.s (watershot),
		.r (rreset)
);

srlt_gate glight_0 (
		.q (GLED),
		.s (shipshot),
		.r (greset)
);

or (OUT, shipshot);

endmodule
