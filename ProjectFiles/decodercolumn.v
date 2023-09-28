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
	
	and0wire, and1wire, and2wire, and3wire, and4wire, and5wire,
	xor0wire,
	and6wire;
	

not (NA, A);
not (NB, B);
not (NC, C);
	
and (and0wire, NB, C);
and (and1wire, A, NB);
and (and2wire, NA, B, NC);
and (and3wire, NA, NB, C);
and (and4wire, A, NB, NC);
and (and5wire, A, NB, C);
xor (xor0wire, A, B);
and (and6wire, and0wire, xor0wire);

or (SEGA, and0wire);
or (SEGB, and0wire, and1wire);
or (SEGC, and2wire, and3wire, and4wire);
or (SEGD, and6wire);
or (SEGE, and6wire);
or (SEGF, and2wire, and5wire);
or (SEGG, and6wire);

endmodule
