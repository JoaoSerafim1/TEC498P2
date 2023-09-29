module multiplex70to35 (
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
	
	SEL,
	ENABLE,
	
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64
);

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
	
	SEL,
	ENABLE;
	
	output
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64;

	wire
	NSEL,
	bit0sel, bit1sel,
	
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
	

not (NSEL, SEL);

and (bitsel0, NSEL, ENABLE);
and (bitsel1, SEL, ENABLE);

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


or (OUT00, IPT000wire, IPT100wire);
or (OUT01, IPT001wire, IPT101wire);
or (OUT02, IPT002wire, IPT102wire);
or (OUT03, IPT003wire, IPT103wire);
or (OUT04, IPT004wire, IPT104wire);

or (OUT10, IPT010wire, IPT110wire);
or (OUT11, IPT011wire, IPT111wire);
or (OUT12, IPT012wire, IPT112wire);
or (OUT13, IPT013wire, IPT113wire);
or (OUT14, IPT014wire, IPT114wire);

or (OUT20, IPT020wire, IPT120wire);
or (OUT21, IPT021wire, IPT121wire);
or (OUT22, IPT022wire, IPT122wire);
or (OUT23, IPT023wire, IPT123wire);
or (OUT24, IPT024wire, IPT124wire);

or (OUT30, IPT030wire, IPT130wire);
or (OUT31, IPT031wire, IPT131wire);
or (OUT32, IPT032wire, IPT132wire);
or (OUT33, IPT033wire, IPT133wire);
or (OUT34, IPT034wire, IPT134wire);

or (OUT40, IPT040wire, IPT140wire);
or (OUT41, IPT041wire, IPT141wire);
or (OUT42, IPT042wire, IPT142wire);
or (OUT43, IPT043wire, IPT143wire);
or (OUT44, IPT044wire, IPT144wire);

or (OUT50, IPT050wire, IPT150wire);
or (OUT51, IPT051wire, IPT151wire);
or (OUT52, IPT052wire, IPT152wire);
or (OUT53, IPT053wire, IPT153wire);
or (OUT54, IPT054wire, IPT154wire);

or (OUT60, IPT060wire, IPT160wire);
or (OUT61, IPT061wire, IPT161wire);
or (OUT62, IPT062wire, IPT162wire);
or (OUT63, IPT063wire, IPT163wire);
or (OUT64, IPT064wire, IPT164wire);

endmodule
