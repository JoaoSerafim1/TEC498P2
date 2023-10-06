//Modulo decodificador da selecao de linha de ataque
module decoderline (
	A, B, C,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);
	
	//Entradas
	input
	A, B, C;
	
	//Saidas
	output
	//Segmentos de digito do display de 7 segmentos
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	
	//Fios
	wire
	//Negacoes das entradas
	NA, NB, NC,
	
	//Fios de cada umas das combinacoes logicas AND possiveis dentre a decodificacao de todos os segmentos (parcelas das SoPs)
	and0wire, and1wire, and2wire, and3wire, and4wire, and5wire, and6wire, and7wire, and8wire;
	

//Faz as negacoes das entradas
not (NA, A);
not (NB, B);
not (NC, C);

//Condicionais para cada parcela de SoP
and (and0wire, A, C);
and (and1wire, A, NB, NC);
and (and2wire, NA, B);
and (and3wire, B, C);
and (and4wire, NA, C);
and (and5wire, B, NC);
and (and6wire, A, NB, C);
and (and7wire, A, NC);
and (and8wire, A, NB);

//Monta as SoPs utilizando combinacoes de parcelas
nor (SEGA, B, and0wire);
nor (SEGB, and1wire, and2wire, and3wire, and4wire);
nor (SEGC, A, C);
nor (SEGD, and2wire, and5wire, and6wire);
nor (SEGE, and5wire);
nor (SEGF, and7wire, and8wire);
nor (SEGG, and2wire, and7wire, and8wire);

endmodule
