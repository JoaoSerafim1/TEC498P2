//Modulo principal (entidade de maior nivel); Instancia todos os demais modulos e os liga
module mainmodule (
	CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7,
	BT0, BT1, BT2, BT3,
	
	CLKIN,
	
	COL0, COL1, COL2, COL3, COL4,
	LIN0, LIN1, LIN2, LIN3, LIN4, LIN5, LIN6,
	
	RLED, GLED,
	
	SGDA, SGDB, SGDC, SGDD, SGDE, SGDF, SGDG,
	SGDP,
	SGD1, SGD2, SGD3, SGD4,
	
	CLKOUT, CLKDIVOUT
); //Declara todos os elementos de entrada e saida (nao ior(LIN0, LIN0and);nclui fios)
	
	//Declara elementos de entrada (chaves HH e botoes)
	input
	CH0, CH1, CH2, CH3, CH4, CH5, CH6, CH7,
	BT0, BT1, BT2, BT3,
	CLKIN;
	
	//Declara elementos de saida (LED Sequencial, Matrix de LED e Display de 7 Segmentos)
	output
	COL0, COL1, COL2, COL3, COL4,
	LIN0, LIN1, LIN2, LIN3, LIN4, LIN5, LIN6,
	
	RLED, GLED,

	SGDA, SGDB, SGDC, SGDD, SGDE, SGDF, SGDG,
	SGDP,
	SGD1, SGD2, SGD3, SGD4,
	
	CLKOUT, CLKDIVOUT;
	
	//Declara os fios utilizados para conectar os modulos
	//Fios de negacao dos botoes
	wire
	NCH0,
	NBT0, NBT1, NBT2, NBT3,
	
	clkdivwire,
	
	countA, countB, countC,
	
	NcountA, NcountB, NcountC,
	
	bouncedbutton1,
	
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
	
	shiparrangementsel0, shiparrangementsel1,
	
	A1displaycoordstomux, B1displaycoordstomux, C1displaycoordstomux, D1displaycoordstomux, E1displaycoordstomux,
	A2displaycoordstomux, B2displaycoordstomux, C2displaycoordstomux, D2displaycoordstomux, E2displaycoordstomux,
	A3displaycoordstomux, B3displaycoordstomux, C3displaycoordstomux, D3displaycoordstomux, E3displaycoordstomux,
	A4displaycoordstomux, B4displaycoordstomux, C4displaycoordstomux, D4displaycoordstomux, E4displaycoordstomux,
	A5displaycoordstomux, B5displaycoordstomux, C5displaycoordstomux, D5displaycoordstomux, E5displaycoordstomux,
	A6displaycoordstomux, B6displaycoordstomux, C6displaycoordstomux, D6displaycoordstomux, E6displaycoordstomux,
	A7displaycoordstomux, B7displaycoordstomux, C7displaycoordstomux, D7displaycoordstomux, E7displaycoordstomux,
	
	A1muxtoshotsfired, B1muxtoshotsfired, C1muxtoshotsfired, D1muxtoshotsfired, E1muxtoshotsfired,
	A2muxtoshotsfired, B2muxtoshotsfired, C2muxtoshotsfired, D2muxtoshotsfired, E2muxtoshotsfired,
	A3muxtoshotsfired, B3muxtoshotsfired, C3muxtoshotsfired, D3muxtoshotsfired, E3muxtoshotsfired,
	A4muxtoshotsfired, B4muxtoshotsfired, C4muxtoshotsfired, D4muxtoshotsfired, E4muxtoshotsfired,
	A5muxtoshotsfired, B5muxtoshotsfired, C5muxtoshotsfired, D5muxtoshotsfired, E5muxtoshotsfired,
	A6muxtoshotsfired, B6muxtoshotsfired, C6muxtoshotsfired, D6muxtoshotsfired, E6muxtoshotsfired,
	A7muxtoshotsfired, B7muxtoshotsfired, C7muxtoshotsfired, D7muxtoshotsfired, E7muxtoshotsfired,
	
	shipiptwire, gunnertoart,
	
	SEGAmodemux, SEGBmodemux, SEGCmodemux, SEGDmodemux, SEGEmodemux, SEGFmodemux, SEGGmodemux,
	SEGAcolumnmux, SEGBcolumnmux, SEGCcolumnmux, SEGDcolumnmux, SEGEcolumnmux, SEGFcolumnmux, SEGGcolumnmux,
	SEGAlinemux, SEGBlinemux, SEGClinemux, SEGDlinemux, SEGElinemux, SEGFlinemux, SEGGlinemux,
	
	SGDAenable, SGDBenable, SGDCenable, SGDDenable, SGDEenable, SGDFenable, SGDGenable;
	

//Negacao dos botoes e da chave 0
not (NBT0, BT0);
not (NBT1, BT1);
not (NBT2, BT2);
not (NBT3, BT3);
not (NCH0, CH0);

binpower18clockdivider clkdiv_0 (
		.CLKTODIVIDE (CLKIN),
		.DIVIDEDCLK (clkdivwire)
);

bin3bcount bin3bc_0 (
		.IPTCLK (clkdivwire),
		.A (countA),
		.B (countB),
		.C (countC)
);

not (NcountA, countA);
not (NcountB, countB);
not (NcountC, countC);

binpower4buttonbouncer btnbnc_0 (
		.IPTBTN (NBT1),
		.IPTCLK (clkdivwire),
		.OUTBTN (bouncedbutton1)
);

bin2bselector shpsel_0 (
		.IPTCLK (bouncedbutton1),
		.A (shiparrangementsel0),
		.B (shiparrangementsel1)
);

multiplex140to35 shparrmux_0(
		.IPT003 (1'b1),
		
		.IPT012 (1'b1),
		.IPT013 (1'b1),
		
		.IPT020 (1'b1),
		.IPT021 (1'b1),
		.IPT023 (1'b1),
		
		.IPT030 (1'b1),
		
		.IPT040 (1'b1),
		.IPT042 (1'b1),
		
		.IPT052 (1'b1),
		.IPT053 (1'b1),
		.IPT054 (1'b1),
		
		.IPT062 (1'b1),
		
		
		.IPT110 (1'b1),
		
		.IPT120 (1'b1),
		.IPT121 (1'b1),
		.IPT123 (1'b1),
		.IPT124 (1'b1),
		
		.IPT130 (1'b1),
		.IPT132 (1'b1),
		.IPT134 (1'b1),
		
		.IPT142 (1'b1),
		.IPT144 (1'b1),
		
		.IPT151 (1'b1),
		.IPT152 (1'b1),
		.IPT153 (1'b1),
		
		
		.IPT200 (1'b1),
		
		.IPT210 (1'b1),
		.IPT211 (1'b1),
		.IPT213 (1'b1),
		
		.IPT220 (1'b1),
		.IPT223 (1'b1),
		
		.IPT232 (1'b1),
		.IPT233 (1'b1),
		.IPT234 (1'b1),
		
		.IPT241 (1'b1),
		
		.IPT251 (1'b1),
		.IPT252 (1'b1),
		.IPT253 (1'b1),
		
		
		.IPT304 (1'b1),
		
		.IPT312 (1'b1),
		.IPT313 (1'b1),
		.IPT314 (1'b1),
		
		.IPT321 (1'b1),
		.IPT324 (1'b1),
		
		.IPT330 (1'b1),
		.IPT331 (1'b1),
		.IPT332 (1'b1),
		
		.IPT343 (1'b1),
		.IPT344 (1'b1),
		
		.IPT353 (1'b1),
		
		.IPT363 (1'b1),
		
		
		.SEL0 (shiparrangementsel0),
		.SEL1 (shiparrangementsel1),
		
		
		.OUT00 (A1shipcoordstomux),
		.OUT01 (B1shipcoordstomux),
		.OUT02 (C1shipcoordstomux),
		.OUT03 (D1shipcoordstomux),
		.OUT04 (E1shipcoordstomux),
		
		.OUT10 (A2shipcoordstomux),
		.OUT11 (B2shipcoordstomux),
		.OUT12 (C2shipcoordstomux),
		.OUT13 (D2shipcoordstomux),
		.OUT14 (E2shipcoordstomux),
		
		.OUT20 (A3shipcoordstomux),
		.OUT21 (B3shipcoordstomux),
		.OUT22 (C3shipcoordstomux),
		.OUT23 (D3shipcoordstomux),
		.OUT24 (E3shipcoordstomux),
		
		.OUT30 (A4shipcoordstomux),
		.OUT31 (B4shipcoordstomux),
		.OUT32 (C4shipcoordstomux),
		.OUT33 (D4shipcoordstomux),
		.OUT34 (E4shipcoordstomux),
		
		.OUT40 (A5shipcoordstomux),
		.OUT41 (B5shipcoordstomux),
		.OUT42 (C5shipcoordstomux),
		.OUT43 (D5shipcoordstomux),
		.OUT44 (E5shipcoordstomux),
		
		.OUT50 (A6shipcoordstomux),
		.OUT51 (B6shipcoordstomux),
		.OUT52 (C6shipcoordstomux),
		.OUT53 (D6shipcoordstomux),
		.OUT54 (E6shipcoordstomux),
		
		.OUT60 (A7shipcoordstomux),
		.OUT61 (B7shipcoordstomux),
		.OUT62 (C7shipcoordstomux),
		.OUT63 (D7shipcoordstomux),
		.OUT64 (E7shipcoordstomux)
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

multiplex35to1 shipcoordinatemux_0 (
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

decodermode modedec_0 (
		.A (CH1),
		.SEGA (SEGAmodemux),
		.SEGB (SEGBmodemux),
		.SEGC (SEGCmodemux),
		.SEGD (SEGDmodemux),
		.SEGE (SEGEmodemux),
		.SEGF (SEGFmodemux),
		.SEGG (SEGGmodemux)
);

decodercolumn columndec_0 (
		.A (CH7),
		.B (CH6),
		.C (CH5),
		.SEGA (SEGAcolumnmux),
		.SEGB (SEGBcolumnmux),
		.SEGC (SEGCcolumnmux),
		.SEGD (SEGDcolumnmux),
		.SEGE (SEGEcolumnmux),
		.SEGF (SEGFcolumnmux),
		.SEGG (SEGGcolumnmux)
);

decoderline linedec_0 (
		.A (CH4),
		.B (CH3),
		.C (CH2),
		.SEGA (SEGAlinemux),
		.SEGB (SEGBlinemux),
		.SEGC (SEGClinemux),
		.SEGD (SEGDlinemux),
		.SEGE (SEGElinemux),
		.SEGF (SEGFlinemux),
		.SEGG (SEGGlinemux)
);

multiplex21to7 decmux_0 (
		.IN00 (SEGAlinemux),
		.IN01 (SEGBlinemux),
		.IN02 (SEGClinemux),
		.IN03 (SEGDlinemux),
		.IN04 (SEGElinemux),
		.IN05 (SEGFlinemux),
		.IN06 (SEGGlinemux),
		
		.IN07 (SEGAcolumnmux),
		.IN08 (SEGBcolumnmux),
		.IN09 (SEGCcolumnmux),
		.IN10 (SEGDcolumnmux),
		.IN11 (SEGEcolumnmux),
		.IN12 (SEGFcolumnmux),
		.IN13 (SEGGcolumnmux),
		
		.IN14 (SEGAmodemux),
		.IN15 (SEGBmodemux),
		.IN16 (SEGCmodemux),
		.IN17 (SEGDmodemux),
		.IN18 (SEGEmodemux),
		.IN19 (SEGFmodemux),
		.IN20 (SEGGmodemux),
		
		.SEL0 (countC),
		.SEL1 (countB),
		
		.OUT0 (SGDAenable),
		.OUT1 (SGDBenable),
		.OUT2 (SGDCenable),
		.OUT3 (SGDDenable),
		.OUT4 (SGDEenable),
		.OUT5 (SGDFenable),
		.OUT6 (SGDGenable)
);

or (SGDA, SGDAenable, NCH0);
or (SGDB, SGDBenable, NCH0);
or (SGDC, SGDCenable, NCH0);
or (SGDD, SGDDenable, NCH0);
or (SGDE, SGDEenable, NCH0);
or (SGDF, SGDFenable, NCH0);
or (SGDG, SGDGenable, NCH0);

displayselector sevsegdplsel_0 (
		.SEL0 (countC),
		.SEL1 (countB),
	
		.OUT0 (SGD4),
		.OUT1 (SGD3),
		.OUT2 (SGD2)
);

or (SGD1, 1'b1);
or (SGDP, 1'b1);

multiplex70to35 displayselmux_0 (
	.IPT000 (A1shipcoordstomux),
	.IPT001 (B1shipcoordstomux),
	.IPT002 (C1shipcoordstomux),
	.IPT003 (D1shipcoordstomux),
	.IPT004 (E1shipcoordstomux),
	
	.IPT010 (A2shipcoordstomux),
	.IPT011 (B2shipcoordstomux),
	.IPT012 (C2shipcoordstomux),
	.IPT013 (D2shipcoordstomux),
	.IPT014 (E2shipcoordstomux),
	
	.IPT020 (A3shipcoordstomux),
	.IPT021 (B3shipcoordstomux),
	.IPT022 (C3shipcoordstomux),
	.IPT023 (D3shipcoordstomux),
	.IPT024 (E3shipcoordstomux),
	
	.IPT030 (A4shipcoordstomux),
	.IPT031 (B4shipcoordstomux),
	.IPT032 (C4shipcoordstomux),
	.IPT033 (D4shipcoordstomux),
	.IPT034 (E4shipcoordstomux),
	
	.IPT040 (A5shipcoordstomux),
	.IPT041 (B5shipcoordstomux),
	.IPT042 (C5shipcoordstomux),
	.IPT043 (D5shipcoordstomux),
	.IPT044 (E5shipcoordstomux),
	
	.IPT050 (A6shipcoordstomux),
	.IPT051 (B6shipcoordstomux),
	.IPT052 (C6shipcoordstomux),
	.IPT053 (D6shipcoordstomux),
	.IPT054 (E6shipcoordstomux),
	
	
	.IPT060 (A7shipcoordstomux),
	.IPT061 (B7shipcoordstomux),
	.IPT062 (C7shipcoordstomux),
	.IPT063 (D7shipcoordstomux),
	.IPT064 (E7shipcoordstomux),
	
	
	.IPT100 (A1artcoordstomux),
	.IPT101 (B1artcoordstomux),
	.IPT102 (C1artcoordstomux),
	.IPT103 (D1artcoordstomux),
	.IPT104 (E1artcoordstomux),
	
	.IPT110 (A2artcoordstomux),
	.IPT111 (B2artcoordstomux),
	.IPT112 (C2artcoordstomux),
	.IPT113 (D2artcoordstomux),
	.IPT114 (E2artcoordstomux),
	
	.IPT120 (A3artcoordstomux),
	.IPT121 (B3artcoordstomux),
	.IPT122 (C3artcoordstomux),
	.IPT123 (D3artcoordstomux),
	.IPT124 (E3artcoordstomux),
	
	.IPT130 (A4artcoordstomux),
	.IPT131 (B4artcoordstomux),
	.IPT132 (C4artcoordstomux),
	.IPT133 (D4artcoordstomux),
	.IPT134 (E4artcoordstomux),
	
	.IPT140 (A5artcoordstomux),
	.IPT141 (B5artcoordstomux),
	.IPT142 (C5artcoordstomux),
	.IPT143 (D5artcoordstomux),
	.IPT144 (E5artcoordstomux),
	
	.IPT150 (A6artcoordstomux),
	.IPT151 (B6artcoordstomux),
	.IPT152 (C6artcoordstomux),
	.IPT153 (D6artcoordstomux),
	.IPT154 (E6artcoordstomux),
	
	.IPT160 (A7artcoordstomux),
	.IPT161 (B7artcoordstomux),
	.IPT162 (C7artcoordstomux),
	.IPT163 (D7artcoordstomux),
	.IPT164 (E7artcoordstomux),
	
	
	.SEL (CH1),
	.ENABLE (CH0),
	
	.OUT00 (A1displaycoordstomux),
	.OUT01 (B1displaycoordstomux),
	.OUT02 (C1displaycoordstomux),
	.OUT03 (D1displaycoordstomux),
	.OUT04 (E1displaycoordstomux),
	
	.OUT10 (A2displaycoordstomux),
	.OUT11 (B2displaycoordstomux),
	.OUT12 (C2displaycoordstomux),
	.OUT13 (D2displaycoordstomux),
	.OUT14 (E2displaycoordstomux),
	
	.OUT20 (A3displaycoordstomux),
	.OUT21 (B3displaycoordstomux),
	.OUT22 (C3displaycoordstomux),
	.OUT23 (D3displaycoordstomux),
	.OUT24 (E3displaycoordstomux),
	
	.OUT30 (A4displaycoordstomux),
	.OUT31 (B4displaycoordstomux),
	.OUT32 (C4displaycoordstomux),
	.OUT33 (D4displaycoordstomux),
	.OUT34 (E4displaycoordstomux),
	
	.OUT40 (A5displaycoordstomux),
	.OUT41 (B5displaycoordstomux),
	.OUT42 (C5displaycoordstomux),
	.OUT43 (D5displaycoordstomux),
	.OUT44 (E5displaycoordstomux),
	
	.OUT50 (A6displaycoordstomux),
	.OUT51 (B6displaycoordstomux),
	.OUT52 (C6displaycoordstomux),
	.OUT53 (D6displaycoordstomux),
	.OUT54 (E6displaycoordstomux),
	
	.OUT60 (A7displaycoordstomux),
	.OUT61 (B7displaycoordstomux),
	.OUT62 (C7displaycoordstomux),
	.OUT63 (D7displaycoordstomux),
	.OUT64 (E7displaycoordstomux)
);

multiplex35to5 displayfinalmux_0 (
		
		.IN0_0 (A1displaycoordstomux),
		.IN0_1 (B1displaycoordstomux),
		.IN0_2 (C1displaycoordstomux),
		.IN0_3 (D1displaycoordstomux),
		.IN0_4 (E1displaycoordstomux),
		
		.IN1_0 (A2displaycoordstomux),
		.IN1_1 (B2displaycoordstomux),
		.IN1_2 (C2displaycoordstomux),
		.IN1_3 (D2displaycoordstomux),
		.IN1_4 (E2displaycoordstomux),
		
		.IN2_0 (A3displaycoordstomux),
		.IN2_1 (B3displaycoordstomux),
		.IN2_2 (C3displaycoordstomux),
		.IN2_3 (D3displaycoordstomux),
		.IN2_4 (E3displaycoordstomux),
		
		.IN3_0 (A4displaycoordstomux),
		.IN3_1 (B4displaycoordstomux),
		.IN3_2 (C4displaycoordstomux),
		.IN3_3 (D4displaycoordstomux),
		.IN3_4 (E4displaycoordstomux),
		
		.IN4_0 (A5displaycoordstomux),
		.IN4_1 (B5displaycoordstomux),
		.IN4_2 (C5displaycoordstomux),
		.IN4_3 (D5displaycoordstomux),
		.IN4_4 (E5displaycoordstomux),
		
		.IN5_0 (A6displaycoordstomux),
		.IN5_1 (B6displaycoordstomux),
		.IN5_2 (C6displaycoordstomux),
		.IN5_3 (D6displaycoordstomux),
		.IN5_4 (E6displaycoordstomux),
		
		.IN6_0 (A7displaycoordstomux),
		.IN6_1 (B7displaycoordstomux),
		.IN6_2 (C7displaycoordstomux),
		.IN6_3 (D7displaycoordstomux),
		.IN6_4 (E7displaycoordstomux),
		
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

endmodule
