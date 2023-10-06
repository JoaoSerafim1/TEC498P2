//Modulo multiplex 140 para 35
module multiplex140to35 (
	IPT000, IPT001, IPT002, IPT003, IPT004,
	IPT010, IPT011, IPT012, IPT013, IPT014,
	IPT020, IPT021, IPT022, IPT023, IPT024,
	IPT030, IPT031, IPT032, IPT033, IPT034,
	IPT040, IPT041, IPT042, IPT043, IPT044,
	IPT050, IPT051, IPT052, IPT053, IPT054,
	IPT060, IPT061, IPT062, IPT063, IPT064,
	
	IPT100, IPT101, IPT102, IPT103, IPT104,
	IPT110, IPT111, IPT112, IPT113, IPT114,
	IPT120, IPT121, IPT122, IPT123, IPT124,
	IPT130, IPT131, IPT132, IPT133, IPT134,
	IPT140, IPT141, IPT142, IPT143, IPT144,
	IPT150, IPT151, IPT152, IPT153, IPT154,
	IPT160, IPT161, IPT162, IPT163, IPT164,
	
	IPT200, IPT201, IPT202, IPT203, IPT204,
	IPT210, IPT211, IPT212, IPT213, IPT214,
	IPT220, IPT221, IPT222, IPT223, IPT224,
	IPT230, IPT231, IPT232, IPT233, IPT234,
	IPT240, IPT241, IPT242, IPT243, IPT244,
	IPT250, IPT251, IPT252, IPT253, IPT254,
	IPT260, IPT261, IPT262, IPT263, IPT264,
	
	IPT300, IPT301, IPT302, IPT303, IPT304,
	IPT310, IPT311, IPT312, IPT313, IPT314,
	IPT320, IPT321, IPT322, IPT323, IPT324,
	IPT330, IPT331, IPT332, IPT333, IPT334,
	IPT340, IPT341, IPT342, IPT343, IPT344,
	IPT350, IPT351, IPT352, IPT353, IPT354,
	IPT360, IPT361, IPT362, IPT363, IPT364,
	
	SEL0, SEL1,
	
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64
);
	
	//Entradas
	input
	IPT000, IPT001, IPT002, IPT003, IPT004,
	IPT010, IPT011, IPT012, IPT013, IPT014,
	IPT020, IPT021, IPT022, IPT023, IPT024,
	IPT030, IPT031, IPT032, IPT033, IPT034,
	IPT040, IPT041, IPT042, IPT043, IPT044,
	IPT050, IPT051, IPT052, IPT053, IPT054,
	IPT060, IPT061, IPT062, IPT063, IPT064,
	
	IPT100, IPT101, IPT102, IPT103, IPT104,
	IPT110, IPT111, IPT112, IPT113, IPT114,
	IPT120, IPT121, IPT122, IPT123, IPT124,
	IPT130, IPT131, IPT132, IPT133, IPT134,
	IPT140, IPT141, IPT142, IPT143, IPT144,
	IPT150, IPT151, IPT152, IPT153, IPT154,
	IPT160, IPT161, IPT162, IPT163, IPT164,
	
	IPT200, IPT201, IPT202, IPT203, IPT204,
	IPT210, IPT211, IPT212, IPT213, IPT214,
	IPT220, IPT221, IPT222, IPT223, IPT224,
	IPT230, IPT231, IPT232, IPT233, IPT234,
	IPT240, IPT241, IPT242, IPT243, IPT244,
	IPT250, IPT251, IPT252, IPT253, IPT254,
	IPT260, IPT261, IPT262, IPT263, IPT264,
	
	IPT300, IPT301, IPT302, IPT303, IPT304,
	IPT310, IPT311, IPT312, IPT313, IPT314,
	IPT320, IPT321, IPT322, IPT323, IPT324,
	IPT330, IPT331, IPT332, IPT333, IPT334,
	IPT340, IPT341, IPT342, IPT343, IPT344,
	IPT350, IPT351, IPT352, IPT353, IPT354,
	IPT360, IPT361, IPT362, IPT363, IPT364,
	
	//Seletores
	SEL0, SEL1;
	
	//Saidas
	output
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64;
	
	//Fios
	wire
	NSEL0, NSEL1,
	bit0sel, bit1sel, bit2sel, bit3sel,
	
	IPT000wire, IPT001wire, IPT002wire, IPT003wire, IPT004wire,
	IPT010wire, IPT011wire, IPT012wire, IPT013wire, IPT014wire,
	IPT020wire, IPT021wire, IPT022wire, IPT023wire, IPT024wire,
	IPT030wire, IPT031wire, IPT032wire, IPT033wire, IPT034wire,
	IPT040wire, IPT041wire, IPT042wire, IPT043wire, IPT044wire,
	IPT050wire, IPT051wire, IPT052wire, IPT053wire, IPT054wire,
	IPT060wire, IPT061wire, IPT062wire, IPT063wire, IPT064wire,
	
	IPT100wire, IPT101wire, IPT102wire, IPT103wire, IPT104wire,
	IPT110wire, IPT111wire, IPT112wire, IPT113wire, IPT114wire,
	IPT120wire, IPT121wire, IPT122wire, IPT123wire, IPT124wire,
	IPT130wire, IPT131wire, IPT132wire, IPT133wire, IPT134wire,
	IPT140wire, IPT141wire, IPT142wire, IPT143wire, IPT144wire,
	IPT150wire, IPT151wire, IPT152wire, IPT153wire, IPT154wire,
	IPT160wire, IPT161wire, IPT162wire, IPT163wire, IPT164wire,
	
	IPT200wire, IPT201wire, IPT202wire, IPT203wire, IPT204wire,
	IPT210wire, IPT211wire, IPT212wire, IPT213wire, IPT214wire,
	IPT220wire, IPT221wire, IPT222wire, IPT223wire, IPT224wire,
	IPT230wire, IPT231wire, IPT232wire, IPT233wire, IPT234wire,
	IPT240wire, IPT241wire, IPT242wire, IPT243wire, IPT244wire,
	IPT250wire, IPT251wire, IPT252wire, IPT253wire, IPT254wire,
	IPT260wire, IPT261wire, IPT262wire, IPT263wire, IPT264wire,
	
	IPT300wire, IPT301wire, IPT302wire, IPT303wire, IPT304wire,
	IPT310wire, IPT311wire, IPT312wire, IPT313wire, IPT314wire,
	IPT320wire, IPT321wire, IPT322wire, IPT323wire, IPT324wire,
	IPT330wire, IPT331wire, IPT332wire, IPT333wire, IPT334wire,
	IPT340wire, IPT341wire, IPT342wire, IPT343wire, IPT344wire,
	IPT350wire, IPT351wire, IPT352wire, IPT353wire, IPT354wire,
	IPT360wire, IPT361wire, IPT362wire, IPT363wire, IPT364wire;
	

//Negacoes
not (NSEL0, SEL0);
not (NSEL1, SEL1);

//Combinacoes possiveis para os seletores
and (bitsel0, NSEL0, NSEL1);
and (bitsel1, NSEL0, SEL1);
and (bitsel2, SEL0, NSEL1);
and (bitsel3, SEL0, SEL1);

//Condicoes para cada combinacao de entradas e selecoes
and (IPT000wire, IPT000, bitsel0);
and (IPT001wire, IPT001, bitsel0);
and (IPT002wire, IPT002, bitsel0);
and (IPT003wire, IPT003, bitsel0);
and (IPT004wire, IPT004, bitsel0);

and (IPT010wire, IPT010, bitsel0);
and (IPT011wire, IPT011, bitsel0);
and (IPT012wire, IPT012, bitsel0);
and (IPT013wire, IPT013, bitsel0);
and (IPT014wire, IPT014, bitsel0);

and (IPT020wire, IPT020, bitsel0);
and (IPT021wire, IPT021, bitsel0);
and (IPT022wire, IPT022, bitsel0);
and (IPT023wire, IPT023, bitsel0);
and (IPT024wire, IPT024, bitsel0);

and (IPT030wire, IPT030, bitsel0);
and (IPT031wire, IPT031, bitsel0);
and (IPT032wire, IPT032, bitsel0);
and (IPT033wire, IPT033, bitsel0);
and (IPT034wire, IPT034, bitsel0);

and (IPT040wire, IPT040, bitsel0);
and (IPT041wire, IPT041, bitsel0);
and (IPT042wire, IPT042, bitsel0);
and (IPT043wire, IPT043, bitsel0);
and (IPT044wire, IPT044, bitsel0);

and (IPT050wire, IPT050, bitsel0);
and (IPT051wire, IPT051, bitsel0);
and (IPT052wire, IPT052, bitsel0);
and (IPT053wire, IPT053, bitsel0);
and (IPT054wire, IPT054, bitsel0);

and (IPT060wire, IPT060, bitsel0);
and (IPT061wire, IPT061, bitsel0);
and (IPT062wire, IPT062, bitsel0);
and (IPT063wire, IPT063, bitsel0);
and (IPT064wire, IPT064, bitsel0);


and (IPT100wire, IPT100, bitsel1);
and (IPT101wire, IPT101, bitsel1);
and (IPT102wire, IPT102, bitsel1);
and (IPT103wire, IPT103, bitsel1);
and (IPT104wire, IPT104, bitsel1);

and (IPT110wire, IPT110, bitsel1);
and (IPT111wire, IPT111, bitsel1);
and (IPT112wire, IPT112, bitsel1);
and (IPT113wire, IPT113, bitsel1);
and (IPT114wire, IPT114, bitsel1);

and (IPT120wire, IPT120, bitsel1);
and (IPT121wire, IPT121, bitsel1);
and (IPT122wire, IPT122, bitsel1);
and (IPT123wire, IPT123, bitsel1);
and (IPT124wire, IPT124, bitsel1);

and (IPT130wire, IPT130, bitsel1);
and (IPT131wire, IPT131, bitsel1);
and (IPT132wire, IPT132, bitsel1);
and (IPT133wire, IPT133, bitsel1);
and (IPT134wire, IPT134, bitsel1);

and (IPT140wire, IPT140, bitsel1);
and (IPT141wire, IPT141, bitsel1);
and (IPT142wire, IPT142, bitsel1);
and (IPT143wire, IPT143, bitsel1);
and (IPT144wire, IPT144, bitsel1);

and (IPT150wire, IPT150, bitsel1);
and (IPT151wire, IPT151, bitsel1);
and (IPT152wire, IPT152, bitsel1);
and (IPT153wire, IPT153, bitsel1);
and (IPT154wire, IPT154, bitsel1);

and (IPT160wire, IPT160, bitsel1);
and (IPT161wire, IPT161, bitsel1);
and (IPT162wire, IPT162, bitsel1);
and (IPT163wire, IPT163, bitsel1);
and (IPT164wire, IPT164, bitsel1);


and (IPT200wire, IPT200, bitsel2);
and (IPT201wire, IPT201, bitsel2);
and (IPT202wire, IPT202, bitsel2);
and (IPT203wire, IPT203, bitsel2);
and (IPT204wire, IPT204, bitsel2);

and (IPT210wire, IPT210, bitsel2);
and (IPT211wire, IPT211, bitsel2);
and (IPT212wire, IPT212, bitsel2);
and (IPT213wire, IPT213, bitsel2);
and (IPT214wire, IPT214, bitsel2);

and (IPT220wire, IPT220, bitsel2);
and (IPT221wire, IPT221, bitsel2);
and (IPT222wire, IPT222, bitsel2);
and (IPT223wire, IPT223, bitsel2);
and (IPT224wire, IPT224, bitsel2);

and (IPT230wire, IPT230, bitsel2);
and (IPT231wire, IPT231, bitsel2);
and (IPT232wire, IPT232, bitsel2);
and (IPT233wire, IPT233, bitsel2);
and (IPT234wire, IPT234, bitsel2);

and (IPT240wire, IPT240, bitsel2);
and (IPT241wire, IPT241, bitsel2);
and (IPT242wire, IPT242, bitsel2);
and (IPT243wire, IPT243, bitsel2);
and (IPT244wire, IPT244, bitsel2);

and (IPT250wire, IPT250, bitsel2);
and (IPT251wire, IPT251, bitsel2);
and (IPT252wire, IPT252, bitsel2);
and (IPT253wire, IPT253, bitsel2);
and (IPT254wire, IPT254, bitsel2);

and (IPT260wire, IPT260, bitsel2);
and (IPT261wire, IPT261, bitsel2);
and (IPT262wire, IPT262, bitsel2);
and (IPT263wire, IPT263, bitsel2);
and (IPT264wire, IPT264, bitsel2);


and (IPT300wire, IPT300, bitsel3);
and (IPT301wire, IPT301, bitsel3);
and (IPT302wire, IPT302, bitsel3);
and (IPT303wire, IPT303, bitsel3);
and (IPT304wire, IPT304, bitsel3);

and (IPT310wire, IPT310, bitsel3);
and (IPT311wire, IPT311, bitsel3);
and (IPT312wire, IPT312, bitsel3);
and (IPT313wire, IPT313, bitsel3);
and (IPT314wire, IPT314, bitsel3);

and (IPT320wire, IPT320, bitsel3);
and (IPT321wire, IPT321, bitsel3);
and (IPT322wire, IPT322, bitsel3);
and (IPT323wire, IPT323, bitsel3);
and (IPT324wire, IPT324, bitsel3);

and (IPT330wire, IPT330, bitsel3);
and (IPT331wire, IPT331, bitsel3);
and (IPT332wire, IPT332, bitsel3);
and (IPT333wire, IPT333, bitsel3);
and (IPT334wire, IPT334, bitsel3);

and (IPT340wire, IPT340, bitsel3);
and (IPT341wire, IPT341, bitsel3);
and (IPT342wire, IPT342, bitsel3);
and (IPT343wire, IPT343, bitsel3);
and (IPT344wire, IPT344, bitsel3);

and (IPT350wire, IPT350, bitsel3);
and (IPT351wire, IPT351, bitsel3);
and (IPT352wire, IPT352, bitsel3);
and (IPT353wire, IPT353, bitsel3);
and (IPT354wire, IPT354, bitsel3);

and (IPT360wire, IPT360, bitsel3);
and (IPT361wire, IPT361, bitsel3);
and (IPT362wire, IPT362, bitsel3);
and (IPT363wire, IPT363, bitsel3);
and (IPT364wire, IPT364, bitsel3);

//Repassa as saidas se qualquer condicao para cada saida estiver satisfeita
or (OUT00, IPT000wire, IPT100wire, IPT200wire, IPT300wire);
or (OUT01, IPT001wire, IPT101wire, IPT201wire, IPT301wire);
or (OUT02, IPT002wire, IPT102wire, IPT202wire, IPT302wire);
or (OUT03, IPT003wire, IPT103wire, IPT203wire, IPT303wire);
or (OUT04, IPT004wire, IPT104wire, IPT204wire, IPT304wire);

or (OUT10, IPT010wire, IPT110wire, IPT210wire, IPT310wire);
or (OUT11, IPT011wire, IPT111wire, IPT211wire, IPT311wire);
or (OUT12, IPT012wire, IPT112wire, IPT212wire, IPT312wire);
or (OUT13, IPT013wire, IPT113wire, IPT213wire, IPT313wire);
or (OUT14, IPT014wire, IPT114wire, IPT214wire, IPT314wire);

or (OUT20, IPT020wire, IPT120wire, IPT220wire, IPT320wire);
or (OUT21, IPT021wire, IPT121wire, IPT221wire, IPT321wire);
or (OUT22, IPT022wire, IPT122wire, IPT222wire, IPT322wire);
or (OUT23, IPT023wire, IPT123wire, IPT223wire, IPT323wire);
or (OUT24, IPT024wire, IPT124wire, IPT224wire, IPT324wire);

or (OUT30, IPT030wire, IPT130wire, IPT230wire, IPT330wire);
or (OUT31, IPT031wire, IPT131wire, IPT231wire, IPT331wire);
or (OUT32, IPT032wire, IPT132wire, IPT232wire, IPT332wire);
or (OUT33, IPT033wire, IPT133wire, IPT233wire, IPT333wire);
or (OUT34, IPT034wire, IPT134wire, IPT234wire, IPT334wire);

or (OUT40, IPT040wire, IPT140wire, IPT240wire, IPT340wire);
or (OUT41, IPT041wire, IPT141wire, IPT241wire, IPT341wire);
or (OUT42, IPT042wire, IPT142wire, IPT242wire, IPT342wire);
or (OUT43, IPT043wire, IPT143wire, IPT243wire, IPT343wire);
or (OUT44, IPT044wire, IPT144wire, IPT244wire, IPT344wire);

or (OUT50, IPT050wire, IPT150wire, IPT250wire, IPT350wire);
or (OUT51, IPT051wire, IPT151wire, IPT251wire, IPT351wire);
or (OUT52, IPT052wire, IPT152wire, IPT252wire, IPT352wire);
or (OUT53, IPT053wire, IPT153wire, IPT253wire, IPT353wire);
or (OUT54, IPT054wire, IPT154wire, IPT254wire, IPT354wire);

or (OUT60, IPT060wire, IPT160wire, IPT260wire, IPT360wire);
or (OUT61, IPT061wire, IPT161wire, IPT261wire, IPT361wire);
or (OUT62, IPT062wire, IPT162wire, IPT262wire, IPT362wire);
or (OUT63, IPT063wire, IPT163wire, IPT263wire, IPT363wire);
or (OUT64, IPT064wire, IPT164wire, IPT264wire, IPT364wire);

endmodule
