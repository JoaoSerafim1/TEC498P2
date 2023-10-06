//Modulo de permissao de uso dos botoes
module buttonenabler (
	CH0, CH1,
	CH7, CH6, CH5, CH4, CH3, CH2,
	NCH0, NCH1,
	IPT0, IPT1,
	
	OUT0, OUT1
);
	
	//Entradas
	input
	//Chaves de ON/OFF (Chave 0) e Modo (Chave 1)
	CH0, CH1,
	//Chaves de selecao das coordenadas
	CH7, CH6, CH5, CH4, CH3, CH2,
	//Negacao das Chaves 1 e 2
	NCH0, NCH1,
	//Botoes 0 e 1
	IPT0, IPT1;
	
	//Saidas
	output
	//Botoes 0 e 1 apos controle de permissao
	OUT0, OUT1;
	
	//Fios
	wire
	NCH4, NCH3, NCH2,
	isletteractive,
	isnumberinactive0, isnumberinactive1, isnumberinactive2,
	isnumberactive,
	is0ON,
	was0alwaysOFF;


//Negacao das chaves referentes a coordenada horizontal (letras de "a" ate "e")	
not (NCH4, CH4);
not (NCH3, CH3);
not (NCH2, CH2);

//Condicoes para ser invalida a coordenada horizontal (000, 110 e 111)
and (isnumberinactive0, NCH4, NCH3, NCH2);
and (isnumberinactive1, CH4, CH3, NCH2);
and (isnumberinactive2, CH4, CH3, CH2);

//Se ao menos 1 das entradas da coordenada vertical esta ligada, esta e valida (so exclui 000)
or (isletteractive, CH7, CH6, CH5);
//Se nenhuma das condicoes de invalidez da coordenada horizontal e satisfeita, esta e valida (exclui 000, 110 e 111)
nor (isnumberactive, isnumberinactive0, isnumberinactive1, isnumberinactive2);

//O botao 0 podera ser ligado se as coordenadas forem validas, o dispositivo estiver ligado (CH0 ligada) e modo for de ataque (CH1 ligada)
and (is0ON, IPT0, CH0, CH1, isletteractive, isnumberactive);

//Registro do status do dispositivo (se ja houve 1 ataque valido ou nao)
srlt_gate gamestatus_0 (
		.s (is0ON),
		.r (NCH0),
		.qbar (was0alwaysOFF)
);

//Retorna o botao 0, caso valido
or (OUT0, is0ON);

//Retorna o botao 1 se nenhum ataque valido esta registrado, o dispositivo estiver ligado (CH0 ligada) e modo for de posicionamento (CH1 desligada)
and (OUT1, IPT1, CH0, NCH1, was0alwaysOFF);
	

endmodule
