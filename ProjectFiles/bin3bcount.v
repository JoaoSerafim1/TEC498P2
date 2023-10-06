//Modulo do contador binario de 3 bits (2 bits com divisao, 1 passando direto)
module bin3bcount (
	IPTCLK,
	A, B, C
);
	
	//Entrada (clock)
	input IPTCLK;
	
	//Saidas (divisoes 1:2:4)
	output A, B, C;
	
	//Fio
	wire togtoqbar;


//Divisao do clock de entrada por 1, saida C
or(C, IPTCLK);
	
tff_gate ff00 (
		//Toggle sempre ativado
		.t (1'b1),
		//Clock do primeiro fli-flop e o proprio clock de entrada
		.clk (IPTCLK),
		//Divisao do clock por 2, saida B
		.q (B),
		//Negacao da saida B
		.qbar (togtoqbar)
);

//Instancia de T flip-flop que faz a divisao por 
tff_gate ff01 (
		//Toggle sempre ativado
		.t (1'b1),
		//Clock deste flip-flop, que e a negacao da saida B
		.clk (togtoqbar),
		//Divisao da negacao da saida B por 2, saida A
		.q (A)
);

endmodule
