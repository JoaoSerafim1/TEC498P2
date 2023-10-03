module shipgunner (
	IPTSHIP,
	BTNIPT, NCH0,
	OUT,
	ENABLELED,
	RLED, GLED
);

	input
	IPTSHIP,
	BTNIPT, NCH0,
	ENABLELED;
	
	output
	OUT,
	RLED, GLED;
	
	wire
	watershot,
	shipshot,
	NIPTSHIP,
	PRLED, PGLED;
	
not (NIPTART, IPTART);
not (NIPTSHIP, IPTSHIP);
	
and (watershot, BTNIPT, NIPTSHIP);
and (shipshot, BTNIPT, IPTSHIP);

or (rreset, shipshot, NCH0);
or (greset, watershot, NCH0);
	
srlt_gate rlight_0 (
		.q (PRLED),
		.s (watershot),
		.r (rreset)
);

srlt_gate glight_0 (
		.q (PGLED),
		.s (shipshot),
		.r (greset)
);

or (OUT, shipshot);

and (RLED, PRLED, ENABLELED);
and (GLED, PGLED, ENABLELED);

endmodule
