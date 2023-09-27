module shipgunner (
	IPTSHIP,
	NBT0, CH0, NCH0,
	OUT,
	RLED, GLED
);

	input
	IPTSHIP,
	NBT0, CH0, NCH0;
	
	output
	OUT,
	RLED, GLED;
	
	wire
	actionrequested,
	watershot,
	shipshot,
	NIPTSHIP;
	
not (NIPTART, IPTART);
not (NIPTSHIP, IPTSHIP);
and (actionrequested, NBT0, CH0);
	
and (watershot, actionrequested, NIPTSHIP);
and (shipshot, actionrequested, IPTSHIP);

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
