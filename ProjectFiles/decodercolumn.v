//Modulo decodificador da selecao de coluna de ataque
module decodercolumn (
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
	
	//Fios de cada umas das combinacoes logicas AND possiveis dentre a decodificacao de todos os segmentos (parcelas da SoP)
	and0wire, and1wire, and2wire, and3wire, and4wire, and5wire, and6wire,
	xor0wire,
	nor0wire;
	

//Faz as negacoes das entradas
not (NA, A);
not (NB, B);
not (NC, C);

//Condicionais para cada parcela de SoP
and (and0wire, NB, C);
and (and1wire, A, NB);
and (and2wire, NA, NB, C);
and (and3wire, NA, B, NC);
and (and4wire, A, NB, NC);
and (and5wire, NA, C);
xor (xor0wire, A, B);
and (and6wire, A, NB, C);

//Combinacao unica de parcelas SoP que representa mais de uma letra (referente aos segmentos D, E e G)
nor (nor0wire, xor0wire, and5wire);

//Monta as SoPs utilizando combinacoes de parcelas
nor (SEGA, and0wire);
nor (SEGB, and0wire, and1wire);
nor (SEGC, and2wire, and3wire, and4wire);
or (SEGD, nor0wire);
or (SEGE, nor0wire);
nor (SEGF, and3wire, and6wire);
or (SEGG, nor0wire);

endmodule
