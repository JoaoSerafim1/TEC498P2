module decodercolumn (
	A, B, C,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);

	input
	A, B, C;
	
	output
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	
	wire
	NA, NB, NC,
	
	and0wire, and1wire, and2wire, and3wire, and4wire, and5wire, and6wire,
	xor0wire,
	nor0wire;
	

not (NA, A);
not (NB, B);
not (NC, C);
	
and (and0wire, NB, C);
and (and1wire, A, NB);
and (and2wire, NA, NB, C);
and (and3wire, NA, B, NC);
and (and4wire, A, NB, NC);
and (and5wire, NA, C);
xor (xor0wire, A, B);
and (and6wire, A, NB, C);

nor (nor0wire, xor0wire, and5wire);

nor (SEGA, and0wire);
nor (SEGB, and0wire, and1wire);
nor (SEGC, and2wire, and3wire, and4wire);
or (SEGD, nor0wire);
or (SEGE, nor0wire);
nor (SEGF, and3wire, and6wire);
or (SEGG, nor0wire);

endmodule
