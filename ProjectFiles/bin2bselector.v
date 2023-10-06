//Modulo seletor de 2 bits
//Praticamente identico ao contador de 3 bits
module bin2bselector (
	IPTCLK,
	A, B
);
	
	//Entradas
	input
	IPTCLK;
	
	//Saidas
	output
	A, B;
	
	//Fios
	wire
	togtoqbar;


//Instancia 0 de T flip-flop, conta o digito menos significante
tff_gate ff00 (
		.t (1'b1),
		.clk (IPTCLK),
		.qbar (togtoqbar),
		.q (B)
);

//Instancia 1 de T flip-flop, conta o digito mais significante
tff_gate ff01 (
		.t (1'b1),
		.clk (togtoqbar),
		.q (A)
);

endmodule
