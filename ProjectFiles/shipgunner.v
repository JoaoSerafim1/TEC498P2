//Modulo de artilharia
//Verifica se existe embarcacao na posicao selecionada e grava no historico de artilharia os ataques bem sucedidos
//Tambem registra o resultado do ultimo ataque e o exibe no LED RGB, caso permitido
module shipgunner (
	IPTSHIP,
	BTNIPT, NCH0,
	OUT,
	//ENABLELED,
	RLED, GLED
);

	//Entradas
	input
	//Status do pixel da matriz de embarcacoes provido ao modulo
	//0 - Nao existe nada na posicao, 1 - Existe embaracao na posicao
	IPTSHIP,
	//Botao da artilharia (ja verificada a permissao de tiro)
	BTNIPT,
	//Negacao da chave principal do programa (Chave 0, ON/OFF)
	NCH0;
	//Permissao para exibir informacao no LED RGB
	//ENABLELED;
	
	//Saidas
	output
	//Saida do status do ataque
	//0 - Ataque falhou, 1 - Ataque teve sucesso
	OUT,
	//Saida das cores VERMELHA e VERDE do led RGB
	RLED, GLED;
	
	//Fios
	wire
	//Fios de tiro mal-sucedido e bem-sucedido, respectivamente
	watershot,
	shipshot,
	//Negacao do status do pixel da matriz de embarcacoes provido ao modulo
	NIPTSHIP,
	//Status das cores do LED RGB antes de serem permitidos exibicao
	PRLED, PGLED;

//Negacoes	
not (NIPTART, IPTART);
not (NIPTSHIP, IPTSHIP);

//Condicoes para fracasso ou sucesso ao atirar	
and (watershot, BTNIPT, NIPTSHIP);
and (shipshot, BTNIPT, IPTSHIP);

//Condicoes para resetar o registro das cores do LED RGB (condicao contraria a sua ativacao OU a chave principal do dispositivo esta desligada)
or (rreset, shipshot, NCH0);
or (greset, watershot, NCH0);

//Registro do resultado do ultimo ataque para o LED RGB, cor VERMELHA
srlt_gate rlight_0 (
		.q (PRLED),
		.s (watershot),
		.r (rreset)
);

//Registro do resultado do ultimo ataque para o LED RGB, cor VERDE
srlt_gate glight_0 (
		.q (PGLED),
		.s (shipshot),
		.r (greset)
);

//Saida do modulo referente ao status do ataque
or (OUT, shipshot);

//Permite exibicao das cores do LED RGB
or (RLED, PRLED);
or (GLED, PGLED);

//and (RLED, PRLED, ENABLELED);
//and (GLED, PGLED, ENABLELED);

endmodule
