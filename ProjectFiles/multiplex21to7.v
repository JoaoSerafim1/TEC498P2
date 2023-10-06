//Modulo multiplex 21 para 7
module multiplex21to7 (
	IN00, IN01, IN02, IN03, IN04, IN05, IN06,
	IN07, IN08, IN09, IN10, IN11, IN12, IN13,
	IN14, IN15, IN16, IN17, IN18, IN19, IN20,
	
	SEL0, SEL1,
	
	OUT0, OUT1, OUT2, OUT3, OUT4, OUT5, OUT6
);
	
	//Entradas
	input
	IN00, IN01, IN02, IN03, IN04, IN05, IN06,
	IN07, IN08, IN09, IN10, IN11, IN12, IN13,
	IN14, IN15, IN16, IN17, IN18, IN19, IN20,
	
	//Seletores
	SEL0, SEL1;
	
	//Saidas
	output
	OUT0, OUT1, OUT2, OUT3, OUT4, OUT5, OUT6;
	
	//Fios
	wire
	NSEL0, NSEL1,
	
	bitsel0, bitsel1, bitsel2,
	
	OUT0wire0, OUT0wire1, OUT0wire2,
	OUT1wire0, OUT1wire1, OUT1wire2,
	OUT2wire0, OUT2wire1, OUT2wire2,
	OUT3wire0, OUT3wire1, OUT3wire2,
	OUT4wire0, OUT4wire1, OUT4wire2,
	OUT5wire0, OUT5wire1, OUT5wire2,
	OUT6wire0, OUT6wire1, OUT6wire2;

//Negacoes
not (NSEL0, SEL0);
not (NSEL1, SEL1);

//Combinacoes possiveis para os seletores
and (bitsel0, NSEL0, NSEL1);
and (bitsel1, NSEL0, SEL1);
and (bitsel2, SEL0, NSEL1);	

//Condicoes para cada combinacao de entradas e selecoes
and (OUT0wire0, bitsel0, IN00);
and (OUT1wire0, bitsel0, IN01);
and (OUT2wire0, bitsel0, IN02);
and (OUT3wire0, bitsel0, IN03);
and (OUT4wire0, bitsel0, IN04);
and (OUT5wire0, bitsel0, IN05);
and (OUT6wire0, bitsel0, IN06);

and (OUT0wire1, bitsel1, IN07);
and (OUT1wire1, bitsel1, IN08);
and (OUT2wire1, bitsel1, IN09);
and (OUT3wire1, bitsel1, IN10);
and (OUT4wire1, bitsel1, IN11);
and (OUT5wire1, bitsel1, IN12);
and (OUT6wire1, bitsel1, IN13);

and (OUT0wire2, bitsel2, IN14);
and (OUT1wire2, bitsel2, IN15);
and (OUT2wire2, bitsel2, IN16);
and (OUT3wire2, bitsel2, IN17);
and (OUT4wire2, bitsel2, IN18);
and (OUT5wire2, bitsel2, IN19);
and (OUT6wire2, bitsel2, IN20);

//Repassa as saidas se qualquer condicao para cada saida estiver satisfeita
or (OUT0, OUT0wire0, OUT0wire1, OUT0wire2);
or (OUT1, OUT1wire0, OUT1wire1, OUT1wire2);
or (OUT2, OUT2wire0, OUT2wire1, OUT2wire2);
or (OUT3, OUT3wire0, OUT3wire1, OUT3wire2);
or (OUT4, OUT4wire0, OUT4wire1, OUT4wire2);
or (OUT5, OUT5wire0, OUT5wire1, OUT5wire2);
or (OUT6, OUT6wire0, OUT6wire1, OUT6wire2);
	
endmodule
