//Modulo do T flip-flop, descrito em verilog comportamental
module tff_gate (
	clk,t,
	q,
	qbar
);
	
	//Entradas do clock (clk) e do toggle (t)
	input
	clk, t;
	
	//Saida com registro (reg) q, explicita que estamos tratando de elemento sequencial
	output reg
	q;
	
	//Saida qbarra
	output
	qbar;

//While (always) que usa a verificacao de borda de pulso referente ao clock (clk)
always @ (posedge clk) begin
	
	//Caso receba um pulso em "t", sera invertido o sinal registrado
	if (t)
		q <= ~q;
	//Caso nao receba, mantem o sinal registrado
	else
		q <= q;
end

//Em um T flip-flop nao existe possibilidade de entrada invalida, portanto qbarra sempre e a negacao de q
not (qbar, q);

endmodule
