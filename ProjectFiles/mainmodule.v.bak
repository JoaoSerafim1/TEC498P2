//Modulo principal (entidade de maior nivel); Instancia todos os demais modulos e os liga
module mainmodule (
	CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7,
	BT0, BT1, BT2, BT3,
	CLKIN,
	LED0, LED1, LED2, LED3, LED4, LED5, LED6,
	//LED7, LED8, LED9,
	COL0, COL1, COL2, COL3, COL4, LIN0, LIN1, LIN2, LIN3, LIN4, LIN5, LIN6,
	SGDA, SGDB, SGDC, SGDD, SGDE, SGDF, SGDG,
	CLKOUT, CLKDIVOUT,
	RLED, GLED
); //Declara todos os elementos de entrada e saida (nao ior(LIN0, LIN0and);nclui fios)
	
	//Declara elementos de entrada (chaves HH e botoes)
	input
	CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7, BT0, BT1, BT2, BT3, CLKIN;
	
	//Declara elementos de saida (LED Sequencial, Matrix de LED e Display de 7 Segmentos)
	output
	LED0, LED1, LED2, LED3, LED4, LED5, LED6,
	//LED7, LED8, LED9,

	COL0, COL1, COL2, COL3, COL4,
	LIN0, LIN1, LIN2, LIN3, LIN4, LIN5, LIN6,

	SGDA, SGDB, SGDC, SGDD, SGDE, SGDF, SGDG,
	
	CLKOUT, CLKDIVOUT,
	
	RLED, GLED;
	
	//Declara os fios utilizados para conectar os modulos
	//Fios de negacao dos botoes
	wire
	NCH0,
	NBT0, NBT1, NBT2, NBT3,
	
	SBT0,
	
	clkdivwire,
	
	countA, countB, countC,
	
	NcountA, NcountB, NcountC,
	
	A1artcoordstomux, B1artcoordstomux, C1artcoordstomux, D1artcoordstomux, E1artcoordstomux,
	A2artcoordstomux, B2artcoordstomux, C2artcoordstomux, D2artcoordstomux, E2artcoordstomux,
	A3artcoordstomux, B3artcoordstomux, C3artcoordstomux, D3artcoordstomux, E3artcoordstomux,
	A4artcoordstomux, B4artcoordstomux, C4artcoordstomux, D4artcoordstomux, E4artcoordstomux,
	A5artcoordstomux, B5artcoordstomux, C5artcoordstomux, D5artcoordstomux, E5artcoordstomux,
	A6artcoordstomux, B6artcoordstomux, C6artcoordstomux, D6artcoordstomux, E6artcoordstomux,
	A7artcoordstomux, B7artcoordstomux, C7artcoordstomux, D7artcoordstomux, E7artcoordstomux,
	
	A1shipcoordstomux, B1shipcoordstomux, C1shipcoordstomux, D1shipcoordstomux, E1shipcoordstomux,
	A2shipcoordstomux, B2shipcoordstomux, C2shipcoordstomux, D2shipcoordstomux, E2shipcoordstomux,
	A3shipcoordstomux, B3shipcoordstomux, C3shipcoordstomux, D3shipcoordstomux, E3shipcoordstomux,
	A4shipcoordstomux, B4shipcoordstomux, C4shipcoordstomux, D4shipcoordstomux, E4shipcoordstomux,
	A5shipcoordstomux, B5shipcoordstomux, C5shipcoordstomux, D5shipcoordstomux, E5shipcoordstomux,
	A6shipcoordstomux, B6shipcoordstomux, C6shipcoordstomux, D6shipcoordstomux, E6shipcoordstomux,
	A7shipcoordstomux, B7shipcoordstomux, C7shipcoordstomux, D7shipcoordstomux, E7shipcoordstomux,
	
	A1muxtoshotsfired, B1muxtoshotsfired, C1muxtoshotsfired, D1muxtoshotsfired, E1muxtoshotsfired,
	A2muxtoshotsfired, B2muxtoshotsfired, C2muxtoshotsfired, D2muxtoshotsfired, E2muxtoshotsfired,
	A3muxtoshotsfired, B3muxtoshotsfired, C3muxtoshotsfired, D3muxtoshotsfired, E3muxtoshotsfired,
	A4muxtoshotsfired, B4muxtoshotsfired, C4muxtoshotsfired, D4muxtoshotsfired, E4muxtoshotsfired,
	A5muxtoshotsfired, B5muxtoshotsfired, C5muxtoshotsfired, D5muxtoshotsfired, E5muxtoshotsfired,
	A6muxtoshotsfired, B6muxtoshotsfired, C6muxtoshotsfired, D6muxtoshotsfired, E6muxtoshotsfired,
	A7muxtoshotsfired, B7muxtoshotsfired, C7muxtoshotsfired, D7muxtoshotsfired, E7muxtoshotsfired,
	
	shipiptwire, gunnertoart;
	

//Negacao dos botoes
not (NBT0, BT0);
not (NBT1, BT1);
not (NBT2, BT2);
not (NBT3, BT3);
not (NCH0, CH0);

not (NcountA, countA);
not (NcountB, countB);
not (NcountC, countC);

binpower20clockdivider clk_div_0 (
		.CLKTODIVIDE (CLKIN),
		.DIVIDEDCLK (clkdivwire)
);

bin3bcount bin_3bc_0 (
		.IPTCLK (clkdivwire),
		.A (countA),
		.B (countB),
		.C (countC)
);

and (SBT0, NCH0, BT0);

tablememory7by5 shiparrangement_0 (
		
		.cell2_0S (1'b1),
		.cell3_0S (1'b1),
		.cell4_0S (1'b1),
		
		.cell2_1S (1'b1),
		
		.cell1_2S (1'b1),
		.cell4_2S (1'b1),
		.cell5_2S (1'b1),
		.cell6_2S (1'b1),
		
		.cell0_3S (1'b1),
		.cell1_3S (1'b1),
		.cell2_3S (1'b1),
		.cell5_3S (1'b1),
		
		.cell5_4S (1'b1),
		
		
		.cell0_0R (1'b1),
		.cell1_0R (1'b1),
		.cell5_0R (1'b1),
		.cell6_0R (1'b1),
		
		.cell0_1R (1'b1),
		.cell1_1R (1'b1),
		.cell3_1R (1'b1),
		.cell4_1R (1'b1),
		.cell5_1R (1'b1),
		.cell6_1R (1'b1),
		
		.cell0_2R (1'b1),
		.cell2_2R (1'b1),
		.cell3_2R (1'b1),
		
		.cell3_3R (1'b1),
		.cell4_3R (1'b1),
		.cell6_3R (1'b1),
		
		.cell0_4R (1'b1),
		.cell1_4R (1'b1),
		.cell2_4R (1'b1),
		.cell3_4R (1'b1),
		.cell4_4R (1'b1),
		.cell6_4R (1'b1),
		
		.cell0_0Q(A1shipcoordstomux),
		.cell1_0Q(A2shipcoordstomux),
		.cell2_0Q(A3shipcoordstomux),
		.cell3_0Q(A4shipcoordstomux),
		.cell4_0Q(A5shipcoordstomux),
		.cell5_0Q(A6shipcoordstomux),
		.cell6_0Q(A7shipcoordstomux),
		
		.cell0_1Q(B1shipcoordstomux),
		.cell1_1Q(B2shipcoordstomux),
		.cell2_1Q(B3shipcoordstomux),
		.cell3_1Q(B4shipcoordstomux),
		.cell4_1Q(B5shipcoordstomux),
		.cell5_1Q(B6shipcoordstomux),
		.cell6_1Q(B7shipcoordstomux),
		
		.cell0_2Q(C1shipcoordstomux),
		.cell1_2Q(C2shipcoordstomux),
		.cell2_2Q(C3shipcoordstomux),
		.cell3_2Q(C4shipcoordstomux),
		.cell4_2Q(C5shipcoordstomux),
		.cell5_2Q(C6shipcoordstomux),
		.cell6_2Q(C7shipcoordstomux),
		
		.cell0_3Q(D1shipcoordstomux),
		.cell1_3Q(D2shipcoordstomux),
		.cell2_3Q(D3shipcoordstomux),
		.cell3_3Q(D4shipcoordstomux),
		.cell4_3Q(D5shipcoordstomux),
		.cell5_3Q(D6shipcoordstomux),
		.cell6_3Q(D7shipcoordstomux),
		
		.cell0_4Q(E1shipcoordstomux),
		.cell1_4Q(E2shipcoordstomux),
		.cell2_4Q(E3shipcoordstomux),
		.cell3_4Q(E4shipcoordstomux),
		.cell4_4Q(E5shipcoordstomux),
		.cell5_4Q(E6shipcoordstomux),
		.cell6_4Q(E7shipcoordstomux)
);

tablememory7by5 shotsfired_0 (
		
		.cell0_0S (A1muxtoshotsfired),
		.cell1_0S (A2muxtoshotsfired),
		.cell2_0S (A3muxtoshotsfired),
		.cell3_0S (A4muxtoshotsfired),
		.cell4_0S (A5muxtoshotsfired),
		.cell5_0S (A6muxtoshotsfired),
		.cell6_0S (A7muxtoshotsfired),
		
		.cell0_1S (B1muxtoshotsfired),
		.cell1_1S (B2muxtoshotsfired),
		.cell2_1S (B3muxtoshotsfired),
		.cell3_1S (B4muxtoshotsfired),
		.cell4_1S (B5muxtoshotsfired),
		.cell5_1S (B6muxtoshotsfired),
		.cell6_1S (B7muxtoshotsfired),
		
		.cell0_2S (C1muxtoshotsfired),
		.cell1_2S (C2muxtoshotsfired),
		.cell2_2S (C3muxtoshotsfired),
		.cell3_2S (C4muxtoshotsfired),
		.cell4_2S (C5muxtoshotsfired),
		.cell5_2S (C6muxtoshotsfired),
		.cell6_2S (C7muxtoshotsfired),
		
		.cell0_3S (D1muxtoshotsfired),
		.cell1_3S (D2muxtoshotsfired),
		.cell2_3S (D3muxtoshotsfired),
		.cell3_3S (D4muxtoshotsfired),
		.cell4_3S (D5muxtoshotsfired),
		.cell5_3S (D6muxtoshotsfired),
		.cell6_3S (D7muxtoshotsfired),
		
		.cell0_4S (E1muxtoshotsfired),
		.cell1_4S (E2muxtoshotsfired),
		.cell2_4S (E3muxtoshotsfired),
		.cell3_4S (E4muxtoshotsfired),
		.cell4_4S (E5muxtoshotsfired),
		.cell5_4S (E6muxtoshotsfired),
		.cell6_4S (E7muxtoshotsfired),
		
		
		.cell0_0R (NCH0),
		.cell1_0R (NCH0),
		.cell2_0R (NCH0),
		.cell3_0R (NCH0),
		.cell4_0R (NCH0),
		.cell5_0R (NCH0),
		.cell6_0R (NCH0),
		
		.cell0_1R (NCH0),
		.cell1_1R (NCH0),
		.cell2_1R (NCH0),
		.cell3_1R (NCH0),
		.cell4_1R (NCH0),
		.cell5_1R (NCH0),
		.cell6_1R (NCH0),
		
		.cell0_2R (NCH0),
		.cell1_2R (NCH0),
		.cell2_2R (NCH0),
		.cell3_2R (NCH0),
		.cell4_2R (NCH0),
		.cell5_2R (NCH0),
		.cell6_2R (NCH0),
		
		.cell0_3R (NCH0),
		.cell1_3R (NCH0),
		.cell2_3R (NCH0),
		.cell3_3R (NCH0),
		.cell4_3R (NCH0),
		.cell5_3R (NCH0),
		.cell6_3R (NCH0),
		
		.cell0_4R (NCH0),
		.cell1_4R (NCH0),
		.cell2_4R (NCH0),
		.cell3_4R (NCH0),
		.cell4_4R (NCH0),
		.cell5_4R (NCH0),
		.cell6_4R (NCH0),
		
		
		.cell0_0Q(A1artcoordstomux),
		.cell1_0Q(A2artcoordstomux),
		.cell2_0Q(A3artcoordstomux),
		.cell3_0Q(A4artcoordstomux),
		.cell4_0Q(A5artcoordstomux),
		.cell5_0Q(A6artcoordstomux),
		.cell6_0Q(A7artcoordstomux),
		
		.cell0_1Q(B1artcoordstomux),
		.cell1_1Q(B2artcoordstomux),
		.cell2_1Q(B3artcoordstomux),
		.cell3_1Q(B4artcoordstomux),
		.cell4_1Q(B5artcoordstomux),
		.cell5_1Q(B6artcoordstomux),
		.cell6_1Q(B7artcoordstomux),
		
		.cell0_2Q(C1artcoordstomux),
		.cell1_2Q(C2artcoordstomux),
		.cell2_2Q(C3artcoordstomux),
		.cell3_2Q(C4artcoordstomux),
		.cell4_2Q(C5artcoordstomux),
		.cell5_2Q(C6artcoordstomux),
		.cell6_2Q(C7artcoordstomux),
		
		.cell0_3Q(D1artcoordstomux),
		.cell1_3Q(D2artcoordstomux),
		.cell2_3Q(D3artcoordstomux),
		.cell3_3Q(D4artcoordstomux),
		.cell4_3Q(D5artcoordstomux),
		.cell5_3Q(D6artcoordstomux),
		.cell6_3Q(D7artcoordstomux),
		
		.cell0_4Q(E1artcoordstomux),
		.cell1_4Q(E2artcoordstomux),
		.cell2_4Q(E3artcoordstomux),
		.cell3_4Q(E4artcoordstomux),
		.cell4_4Q(E5artcoordstomux),
		.cell5_4Q(E6artcoordstomux),
		.cell6_4Q(E7artcoordstomux)
);

multiplex35to1 shipcoordinate_mux_0 (
		.IN0_0 (A1shipcoordstomux),
		.IN0_1 (B1shipcoordstomux),
		.IN0_2 (C1shipcoordstomux),
		.IN0_3 (D1shipcoordstomux),
		.IN0_4 (E1shipcoordstomux),
		
		.IN1_0 (A2shipcoordstomux),
		.IN1_1 (B2shipcoordstomux),
		.IN1_2 (C2shipcoordstomux),
		.IN1_3 (D2shipcoordstomux),
		.IN1_4 (E2shipcoordstomux),
		
		.IN2_0 (A3shipcoordstomux),
		.IN2_1 (B3shipcoordstomux),
		.IN2_2 (C3shipcoordstomux),
		.IN2_3 (D3shipcoordstomux),
		.IN2_4 (E3shipcoordstomux),
		
		.IN3_0 (A4shipcoordstomux),
		.IN3_1 (B4shipcoordstomux),
		.IN3_2 (C4shipcoordstomux),
		.IN3_3 (D4shipcoordstomux),
		.IN3_4 (E4shipcoordstomux),
		
		.IN4_0 (A5shipcoordstomux),
		.IN4_1 (B5shipcoordstomux),
		.IN4_2 (C5shipcoordstomux),
		.IN4_3 (D5shipcoordstomux),
		.IN4_4 (E5shipcoordstomux),
		
		.IN5_0 (A6shipcoordstomux),
		.IN5_1 (B6shipcoordstomux),
		.IN5_2 (C6shipcoordstomux),
		.IN5_3 (D6shipcoordstomux),
		.IN5_4 (E6shipcoordstomux),
		
		.IN6_0 (A7shipcoordstomux),
		.IN6_1 (B7shipcoordstomux),
		.IN6_2 (C7shipcoordstomux),
		.IN6_3 (D7shipcoordstomux),
		.IN6_4 (E7shipcoordstomux),

		.SEL0 (CH7),
		.SEL1 (CH6),
		.SEL2 (CH5),
		.SEL3 (CH4),
		.SEL4 (CH3),
		.SEL5 (CH2),

		.OUT (shipiptwire)
);

shipgunner shpart_0 (
		.IPTSHIP (shipiptwire),
		.NBT0 (NBT0),
		.CH0 (CH0),
		.NCH0 (NCH0),
		.OUT (gunnertoart),
		.RLED (RLED),
		.GLED (GLED)
);

multiplex1to35 artiptmux_0 (
		.IPT (gunnertoart),
	
		.SEL0 (CH7),
		.SEL1 (CH6),
		.SEL2 (CH5),
		.SEL3 (CH4),
		.SEL4 (CH3),
		.SEL5 (CH2),
		
		.OUT0_0 (A1muxtoshotsfired),
		.OUT0_1 (B1muxtoshotsfired),
		.OUT0_2 (C1muxtoshotsfired),
		.OUT0_3 (D1muxtoshotsfired),
		.OUT0_4 (E1muxtoshotsfired),
		
		.OUT1_0 (A2muxtoshotsfired),
		.OUT1_1 (B2muxtoshotsfired),
		.OUT1_2 (C2muxtoshotsfired),
		.OUT1_3 (D2muxtoshotsfired),
		.OUT1_4 (E2muxtoshotsfired),
		
		.OUT2_0 (A3muxtoshotsfired),
		.OUT2_1 (B3muxtoshotsfired),
		.OUT2_2 (C3muxtoshotsfired),
		.OUT2_3 (D3muxtoshotsfired),
		.OUT2_4 (E3muxtoshotsfired),
		
		.OUT3_0 (A4muxtoshotsfired),
		.OUT3_1 (B4muxtoshotsfired),
		.OUT3_2 (C4muxtoshotsfired),
		.OUT3_3 (D4muxtoshotsfired),
		.OUT3_4 (E4muxtoshotsfired),
		
		.OUT4_0 (A5muxtoshotsfired),
		.OUT4_1 (B5muxtoshotsfired),
		.OUT4_2 (C5muxtoshotsfired),
		.OUT4_3 (D5muxtoshotsfired),
		.OUT4_4 (E5muxtoshotsfired),
		
		.OUT5_0 (A6muxtoshotsfired),
		.OUT5_1 (B6muxtoshotsfired),
		.OUT5_2 (C6muxtoshotsfired),
		.OUT5_3 (D6muxtoshotsfired),
		.OUT5_4 (E6muxtoshotsfired),
		
		.OUT6_0 (A7muxtoshotsfired),
		.OUT6_1 (B7muxtoshotsfired),
		.OUT6_2 (C7muxtoshotsfired),
		.OUT6_3 (D7muxtoshotsfired),
		.OUT6_4 (E7muxtoshotsfired),
);

multiplex35to5 shipartillerydisplaymux_0 (
		
		.IN0_0 (A1artcoordstomux),
		.IN0_1 (B1artcoordstomux),
		.IN0_2 (C1artcoordstomux),
		.IN0_3 (D1artcoordstomux),
		.IN0_4 (E1artcoordstomux),
		
		.IN1_0 (A2artcoordstomux),
		.IN1_1 (B2artcoordstomux),
		.IN1_2 (C2artcoordstomux),
		.IN1_3 (D2artcoordstomux),
		.IN1_4 (E2artcoordstomux),
		
		.IN2_0 (A3artcoordstomux),
		.IN2_1 (B3artcoordstomux),
		.IN2_2 (C3artcoordstomux),
		.IN2_3 (D3artcoordstomux),
		.IN2_4 (E3artcoordstomux),
		
		.IN3_0 (A4artcoordstomux),
		.IN3_1 (B4artcoordstomux),
		.IN3_2 (C4artcoordstomux),
		.IN3_3 (D4artcoordstomux),
		.IN3_4 (E4artcoordstomux),
		
		.IN4_0 (A5artcoordstomux),
		.IN4_1 (B5artcoordstomux),
		.IN4_2 (C5artcoordstomux),
		.IN4_3 (D5artcoordstomux),
		.IN4_4 (E5artcoordstomux),
		
		.IN5_0 (A6artcoordstomux),
		.IN5_1 (B6artcoordstomux),
		.IN5_2 (C6artcoordstomux),
		.IN5_3 (D6artcoordstomux),
		.IN5_4 (E6artcoordstomux),
		
		.IN6_0 (A7artcoordstomux),
		.IN6_1 (B7artcoordstomux),
		.IN6_2 (C7artcoordstomux),
		.IN6_3 (D7artcoordstomux),
		.IN6_4 (E7artcoordstomux),
		
		.SEL0 (countA),
		.SEL1 (countB),
		.SEL2 (countC),
		
		.OUT0 (COL0),
		.OUT1 (COL1),
		.OUT2 (COL2),
		.OUT3 (COL3),
		.OUT4 (COL4)
);

nand (LIN0, NcountA, NcountB, NcountC);
nand (LIN1, NcountA, NcountB, countC);
nand (LIN2, NcountA, countB, NcountC);
nand (LIN3, NcountA, countB, countC);
nand (LIN4, countA, NcountB, NcountC);
nand (LIN5, countA, NcountB, countC);
nand (LIN6, countA, countB, NcountC);

or(CLKOUT, CLKIN);

or(CLKDIVOUT, clkdivwire);

/*
or(LED0, A1shipcoordstomux);
or(LED1, A2shipcoordstomux);
or(LED2, A3shipcoordstomux);
or(LED3, A4shipcoordstomux);
or(LED4, A5shipcoordstomux);
or(LED5, A6shipcoordstomux);
or(LED6, A7shipcoordstomux);
*/

endmodule
