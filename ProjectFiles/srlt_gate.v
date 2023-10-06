//Modulo SR latch descrito em verilog estrutural
//Como se trata de uma estrutura sequencial basica, seu funcionamento nao precisa ser descrito
//Quanto ao comportamento, um SR latch mantem em seu registro a ultima entrada inserida (0 caso a ultima entrada tenha sido RESET, ou 1 caso a ultima entrada tenha sido SET)
//A seguir, seus componentes sao descritos
module srlt_gate (
	s, r,
	q, qbar
);
	
	//Entradas SET(s) e RESET(r)
	input
	s, r;
	
	//Saidas q e qbarra (qbar)
	output
	q, qbar;

	//Fios do SET, RESET e das saidas dos portoes NAND
	wire
	ns, nr,
	nand0_out, nand1_out;

//Negacao das entradas, usadas como entrada para as portas logicas nand
not (ns, s);
not (nr, r);

//Portas logicas nand
nand (nand0_out, ns, nand1_out);
nand (nand1_out, nr, nand0_out);

//Saidas das portas logicas nand para fora do modulo
or (q, nand0_out);
or (qbar, nand1_out);

endmodule
