//Modulo multiplex 1 para 35 (de-multiplex)
module multiplex1to35 (
	IPT,
	
	SEL0, SEL1, SEL2, SEL3, SEL4, SEL5,
	
	OUT0_0, OUT0_1, OUT0_2, OUT0_3, OUT0_4,
	OUT1_0, OUT1_1, OUT1_2, OUT1_3, OUT1_4,
	OUT2_0, OUT2_1, OUT2_2, OUT2_3, OUT2_4,
	OUT3_0, OUT3_1, OUT3_2, OUT3_3, OUT3_4,
	OUT4_0, OUT4_1, OUT4_2, OUT4_3, OUT4_4,
	OUT5_0, OUT5_1, OUT5_2, OUT5_3, OUT5_4,
	OUT6_0, OUT6_1, OUT6_2, OUT6_3, OUT6_4
);
	
	//Entrada
	input
	IPT,
	
	//Seletores
	SEL0, SEL1, SEL2, SEL3, SEL4, SEL5;
	
	//Saidas
	output
	OUT0_0, OUT0_1, OUT0_2, OUT0_3, OUT0_4,
	OUT1_0, OUT1_1, OUT1_2, OUT1_3, OUT1_4,
	OUT2_0, OUT2_1, OUT2_2, OUT2_3, OUT2_4,
	OUT3_0, OUT3_1, OUT3_2, OUT3_3, OUT3_4,
	OUT4_0, OUT4_1, OUT4_2, OUT4_3, OUT4_4,
	OUT5_0, OUT5_1, OUT5_2, OUT5_3, OUT5_4,
	OUT6_0, OUT6_1, OUT6_2, OUT6_3, OUT6_4;
	
	//Fios
	wire
	NSEL0, NSEL1, NSEL2, NSEL3, NSEL4, NSEL5;

//Negacoes dos seletores
not (NSEL0, SEL0);
not (NSEL1, SEL1);
not (NSEL2, SEL2);
not (NSEL3, SEL3);
not (NSEL4, SEL4);
not (NSEL5, SEL5);

//Possibilidades de selecao (primeiros digitos dos seletores 0 0 1)
and (OUT0_0, IPT, NSEL0, NSEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_0, IPT, NSEL0, NSEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_0, IPT, NSEL0, NSEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_0, IPT, NSEL0, NSEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_0, IPT, NSEL0, NSEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_0, IPT, NSEL0, NSEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_0, IPT, NSEL0, NSEL1, SEL2, SEL3, SEL4, SEL5);

//Possibilidades de selecao (primeiros digitos dos seletores 0 1 0)
and (OUT0_1, IPT, NSEL0, SEL1, NSEL2, NSEL3, NSEL4, SEL5);
and (OUT1_1, IPT, NSEL0, SEL1, NSEL2, NSEL3, SEL4, NSEL5);
and (OUT2_1, IPT, NSEL0, SEL1, NSEL2, NSEL3, SEL4, SEL5);
and (OUT3_1, IPT, NSEL0, SEL1, NSEL2, SEL3, NSEL4, NSEL5);
and (OUT4_1, IPT, NSEL0, SEL1, NSEL2, SEL3, NSEL4, SEL5);
and (OUT5_1, IPT, NSEL0, SEL1, NSEL2, SEL3, SEL4, NSEL5);
and (OUT6_1, IPT, NSEL0, SEL1, NSEL2, SEL3, SEL4, SEL5);

//Possibilidades de selecao (primeiros digitos dos seletores 0 1 1)
and (OUT0_2, IPT, NSEL0, SEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_2, IPT, NSEL0, SEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_2, IPT, NSEL0, SEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_2, IPT, NSEL0, SEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_2, IPT, NSEL0, SEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_2, IPT, NSEL0, SEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_2, IPT, NSEL0, SEL1, SEL2, SEL3, SEL4, SEL5);

//Possibilidades de selecao (primeiros digitos dos seletores 1 0 0)
and (OUT0_3, IPT, SEL0, NSEL1, NSEL2, NSEL3, NSEL4, SEL5);
and (OUT1_3, IPT, SEL0, NSEL1, NSEL2, NSEL3, SEL4, NSEL5);
and (OUT2_3, IPT, SEL0, NSEL1, NSEL2, NSEL3, SEL4, SEL5);
and (OUT3_3, IPT, SEL0, NSEL1, NSEL2, SEL3, NSEL4, NSEL5);
and (OUT4_3, IPT, SEL0, NSEL1, NSEL2, SEL3, NSEL4, SEL5);
and (OUT5_3, IPT, SEL0, NSEL1, NSEL2, SEL3, SEL4, NSEL5);
and (OUT6_3, IPT, SEL0, NSEL1, NSEL2, SEL3, SEL4, SEL5);

//Possibilidades de selecao (primeiros digitos dos seletores 1 0 1)
and (OUT0_4, IPT, SEL0, NSEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_4, IPT, SEL0, NSEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_4, IPT, SEL0, NSEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_4, IPT, SEL0, NSEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_4, IPT, SEL0, NSEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_4, IPT, SEL0, NSEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_4, IPT, SEL0, NSEL1, SEL2, SEL3, SEL4, SEL5);

endmodule