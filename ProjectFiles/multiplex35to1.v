//Modulo multiplex 35 para 1
module multiplex35to1 (
	IN0_0, IN0_1, IN0_2, IN0_3, IN0_4,
	IN1_0, IN1_1, IN1_2, IN1_3, IN1_4,
	IN2_0, IN2_1, IN2_2, IN2_3, IN2_4,
	IN3_0, IN3_1, IN3_2, IN3_3, IN3_4,
	IN4_0, IN4_1, IN4_2, IN4_3, IN4_4,
	IN5_0, IN5_1, IN5_2, IN5_3, IN5_4,
	IN6_0, IN6_1, IN6_2, IN6_3, IN6_4,

	SEL0, SEL1, SEL2, SEL3, SEL4, SEL5,

	OUT
);
	
	//Entradas
	input
	IN0_0, IN0_1, IN0_2, IN0_3, IN0_4,
	IN1_0, IN1_1, IN1_2, IN1_3, IN1_4,
	IN2_0, IN2_1, IN2_2, IN2_3, IN2_4,
	IN3_0, IN3_1, IN3_2, IN3_3, IN3_4,
	IN4_0, IN4_1, IN4_2, IN4_3, IN4_4,
	IN5_0, IN5_1, IN5_2, IN5_3, IN5_4,
	IN6_0, IN6_1, IN6_2, IN6_3, IN6_4,

	//Seletores
	SEL0, SEL1, SEL2, SEL3, SEL4, SEL5;
	
	//Saidas
	output
	OUT;
	
	//Fios
	wire
	NSEL0, NSEL1, NSEL2, NSEL3, NSEL4, NSEL5,
	
	OUT0_0, OUT1_0, OUT2_0, OUT3_0, OUT4_0, OUT5_0, OUT6_0,
	OUT0_1, OUT1_1, OUT2_1, OUT3_1, OUT4_1, OUT5_1, OUT6_1,
	OUT0_2, OUT1_2, OUT2_2, OUT3_2, OUT4_2, OUT5_2, OUT6_2,
	OUT0_3, OUT1_3, OUT2_3, OUT3_3, OUT4_3, OUT5_3, OUT6_3,
	OUT0_4, OUT1_4, OUT2_4, OUT3_4, OUT4_4, OUT5_4, OUT6_4;
	

//Negacoes
not (NSEL0, SEL0);
not (NSEL1, SEL1);
not (NSEL2, SEL2);
not (NSEL3, SEL3);
not (NSEL4, SEL4);
not (NSEL5, SEL5);


//Condicoes para cada combinacao de entradas e selecoes
and (OUT0_0, IN0_0, NSEL0, NSEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_0, IN1_0, NSEL0, NSEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_0, IN2_0, NSEL0, NSEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_0, IN3_0, NSEL0, NSEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_0, IN4_0, NSEL0, NSEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_0, IN5_0, NSEL0, NSEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_0, IN6_0, NSEL0, NSEL1, SEL2, SEL3, SEL4, SEL5);

and (OUT0_1, IN0_1, NSEL0, SEL1, NSEL2, NSEL3, NSEL4, SEL5);
and (OUT1_1, IN1_1, NSEL0, SEL1, NSEL2, NSEL3, SEL4, NSEL5);
and (OUT2_1, IN2_1, NSEL0, SEL1, NSEL2, NSEL3, SEL4, SEL5);
and (OUT3_1, IN3_1, NSEL0, SEL1, NSEL2, SEL3, NSEL4, NSEL5);
and (OUT4_1, IN4_1, NSEL0, SEL1, NSEL2, SEL3, NSEL4, SEL5);
and (OUT5_1, IN5_1, NSEL0, SEL1, NSEL2, SEL3, SEL4, NSEL5);
and (OUT6_1, IN6_1, NSEL0, SEL1, NSEL2, SEL3, SEL4, SEL5);

and (OUT0_2, IN0_2, NSEL0, SEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_2, IN1_2, NSEL0, SEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_2, IN2_2, NSEL0, SEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_2, IN3_2, NSEL0, SEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_2, IN4_2, NSEL0, SEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_2, IN5_2, NSEL0, SEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_2, IN6_2, NSEL0, SEL1, SEL2, SEL3, SEL4, SEL5);

and (OUT0_3, IN0_3, SEL0, NSEL1, NSEL2, NSEL3, NSEL4, SEL5);
and (OUT1_3, IN1_3, SEL0, NSEL1, NSEL2, NSEL3, SEL4, NSEL5);
and (OUT2_3, IN2_3, SEL0, NSEL1, NSEL2, NSEL3, SEL4, SEL5);
and (OUT3_3, IN3_3, SEL0, NSEL1, NSEL2, SEL3, NSEL4, NSEL5);
and (OUT4_3, IN4_3, SEL0, NSEL1, NSEL2, SEL3, NSEL4, SEL5);
and (OUT5_3, IN5_3, SEL0, NSEL1, NSEL2, SEL3, SEL4, NSEL5);
and (OUT6_3, IN6_3, SEL0, NSEL1, NSEL2, SEL3, SEL4, SEL5);

and (OUT0_4, IN0_4, SEL0, NSEL1, SEL2, NSEL3, NSEL4, SEL5);
and (OUT1_4, IN1_4, SEL0, NSEL1, SEL2, NSEL3, SEL4, NSEL5);
and (OUT2_4, IN2_4, SEL0, NSEL1, SEL2, NSEL3, SEL4, SEL5);
and (OUT3_4, IN3_4, SEL0, NSEL1, SEL2, SEL3, NSEL4, NSEL5);
and (OUT4_4, IN4_4, SEL0, NSEL1, SEL2, SEL3, NSEL4, SEL5);
and (OUT5_4, IN5_4, SEL0, NSEL1, SEL2, SEL3, SEL4, NSEL5);
and (OUT6_4, IN6_4, SEL0, NSEL1, SEL2, SEL3, SEL4, SEL5);

//Condicao para a saida
or (OUT, OUT0_0, OUT1_0, OUT2_0, OUT3_0, OUT4_0, OUT5_0, OUT6_0,
	OUT0_1, OUT1_1, OUT2_1, OUT3_1, OUT4_1, OUT5_1, OUT6_1,
	OUT0_2, OUT1_2, OUT2_2, OUT3_2, OUT4_2, OUT5_2, OUT6_2,
	OUT0_3, OUT1_3, OUT2_3, OUT3_3, OUT4_3, OUT5_3, OUT6_3,
	OUT0_4, OUT1_4, OUT2_4, OUT3_4, OUT4_4, OUT5_4, OUT6_4);

endmodule