//Modulo decodificador do modo de operacao do dispositivo de batalha naval
module decodermode (
	A,
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG
);

	//Entrada
	input
	A;
	
	//Saidas
	output
	//Segmentos de digito do display de 7 segmentos
	SEGA, SEGB, SEGC, SEGD, SEGE, SEGF, SEGG;
	

//Condicoes para ligar cada um dos segmentos do display de 7 segmentos
//(invertidas, tendo em vista que os segmentos sao apagados quando o nivel logico e ALTO)
nor(SEGA, 1'b1);
nor(SEGB, 1'b1);
nor(SEGC, A);
nor(SEGD, 1'b0);
nor(SEGE, 1'b1);
nor(SEGF, 1'b1);
nor(SEGG, 1'b1);

endmodule
