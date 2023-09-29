module decodermode (
	A,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);

	input
	A;
	
	output
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	

nor(SEGA, 1'b1);
nor(SEGB, 1'b1);
nor(SEGC, A);
nor(SEGD, 1'b0);
nor(SEGE, 1'b1);
nor(SEGF, 1'b1);
nor(SEGG, 1'b1);

endmodule
