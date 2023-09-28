module decoderline (
	A, B, C,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);

	input
	A, B, C;
	
	output
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	
	wire
	NA, NB, NC,
	
	and0wire, and1wire, and2wire, and3wire, and4wire, and5wire, and6wire, and7wire, and8wire;
	

not (NA, A);
not (NB, B);
not (NC, C);

and (and0wire, A, C);
and (and1wire, A, NB, NC);
and (and2wire, NA, B);
and (and3wire, B, C);
and (and4wire, NA, C);
and (and5wire, B, NC);
and (and6wire, A, NB, C);
and (and7wire, A, NC);
and (and8wire, A, NB);

or (SEGA, B, and0wire);
or (SEGB, and1wire, and2wire, and3wire, and4wire);
or (SEGC, A, C);
or (SEGD, and2wire, and5wire, and6wire);
or (SEGE, and5wire);
or (SEGF, and7wire, and8wire);
or (SEGG, and2wire, and7wire, and8wire);

endmodule
