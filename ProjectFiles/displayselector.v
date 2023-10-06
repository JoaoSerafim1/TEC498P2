//Modulo seletor do digito ativo no display de 7 segmentos
//(desliga todos os digitos menos o selecionado)
module displayselector (
	SEL0, SEL1,
	
	OUT0, OUT1, OUT2
);
	
	//Entradas (selecao)
	input
	SEL0, SEL1;
	
	//Saidas
	output
	OUT0, OUT1, OUT2;
	
	//Fios
	wire
	NSEL0, NSEL1;
	

//Negacoes das entradas
not (NSEL0, SEL0);
not (NSEL1, SEL1);

//Condicoes para ligar cada digito (ou seja, nao desligar por meio de fornecimento de corrente)
nand (OUT0, NSEL0, NSEL1);
nand (OUT1, NSEL0, SEL1);
nand (OUT2, SEL0, NSEL1);

endmodule
