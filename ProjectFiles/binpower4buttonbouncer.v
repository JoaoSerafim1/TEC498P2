//Modulo de controle de pressionamento de botao
//Possui como objetivo limitar a quantidade de vezes que um botao pode ser pressionado em um determinado intervalo de tempo
//Funciona tambem, portanto, como um "debouncer"
module binpower4buttonbouncer (
	IPTBTN,
	IPTCLK,
	OUTBTN
);
	
	//Entradas
	input
	//Botao pressionado
	IPTBTN,
	//Clock do dispositivo
	IPTCLK;
	
	//Saida
	output
	//Botao pressionado, caso permitido
	OUTBTN;
	
	//Fios
	wire
	//Negacao do botao estar pressionado
	NIPTBTN,
	//Fios que ligam os T flip-flops do contador utilizado para o controle de delay
	togtoqbar0, togtoqbar1, togtoqbar2, togtoqbar3,
	
	//Condicoes para permitir o avanco no contador
	togglecondition0, togglecondition1, allconditions,
	conditionbit0, conditionbit1, conditionbit2, conditionbit3,
	Nconditionbit0, Nconditionbit1, Nconditionbit2, Nconditionbit3,
	ffcombination0, ffcombination1;


//Negacao do botao pressionado
not (NIPTBTN, IPTBTN);

//Negacao das condicoes de contagem
not (Nconditionbit0, conditionbit0);
not (Nconditionbit1, conditionbit1);
not (Nconditionbit2, conditionbit2);
not (Nconditionbit3, conditionbit3);

//Situacao do contador 1: os digitos de contagem sao 0 0 0 0 (Inicio do timer)
and (ffcombination0, Nconditionbit0, Nconditionbit1, Nconditionbit2, Nconditionbit3);
//Situacao do contador 2: os digitos de contagem sao 1 1 1 1 (Fim do timer)
and (ffcombination1, conditionbit0, conditionbit1, conditionbit2, conditionbit3);

//Condicao de avanco 1: O botao foi pressionado e estamos no inicio do timer
and (togglecondition0, IPTBTN, ffcombination0);
//Condicao de avanco 2: O botao foi solto e estamos no fim do timer
and (togglecondition1, NIPTBTN, ffcombination1);
//Condicao de avanco 3: Nao estamos nem no comeco e nem no fim do timer
nor (togglecondition2, ffcombination0, ffcombination1);

//O avanco pode ser feito se qualquer uma das condicoes for satisfeita
or (allconditions, togglecondition0, togglecondition1, togglecondition2);

//Inicio do bloco de instancia de T flip-flops referente ao contador que estabelece o timer
//A primeira entrada em 't' e o primeiro clock sao o avanco do timer e o clock do dispositivo, respectivamente
//As demais entradas e clocks sao VCC (1 constante) e o qbarra do flip-flop anterior
tff_gate ff00 (
		.t (allconditions),
		.clk (IPTCLK),
		.qbar (togtoqbar0),
		.q(conditionbit0)
);

tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar0),
		.qbar (togtoqbar1),
		.q (conditionbit1)
);

tff_gate ff02 (
		.t (1'b1),
		.clk (togtoqbar1),
		.qbar (togtoqbar2),
		.q (conditionbit2)
);

tff_gate ff03 (
		.t (1'b1),
		.clk (togtoqbar2),
		.q (conditionbit3)
);
//Fim do bloco de instancia de T flip-flops referente ao contador que estabelece o timer

//Instancia de SR latch que permite manter o botao ligado ate que o timer termine
srlt_gate sr00 (
		.q (OUTBTN),
		.s (togglecondition0),
		.r (togglecondition1)
);

endmodule
