module decodermode (
	A,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);

	input
	A;
	
	output
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	

or(SEGA, 1'b1);
or(SEGB, 1'b1);
or(SEGC, A);
or(SEGD, 1'b0);
or(SEGE, 1'b1);
or(SEGF, 1'b1);
or(SEGG, 1'b1);

endmodule
