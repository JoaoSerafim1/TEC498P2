module displayselector (
	SEL0, SEL1,
	
	OUT0, OUT1, OUT2
);

	input
	SEL0, SEL1;
	
	output
	OUT0, OUT1, OUT2;
	
	wire
	NSEL0, NSEL1;
	

not (NSEL0, SEL0);
not (NSEL1, SEL1);
	
nand (OUT0, NSEL0, NSEL1);
nand (OUT1, NSEL0, SEL1);
nand (OUT2, SEL0, NSEL1);

endmodule
