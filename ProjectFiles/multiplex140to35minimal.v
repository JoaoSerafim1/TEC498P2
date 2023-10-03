module multiplex140to35minimal (
	IPT003,
	IPT012, IPT013,
	IPT020, IPT021, IPT023,
	IPT030,
	IPT040, IPT042,
	IPT052, IPT053, IPT054,
	IPT062,
	
	IPT110,
	IPT120, IPT121, IPT123, IPT124,
	IPT130, IPT132, IPT134,
	IPT142, IPT144,
	IPT151, IPT152, IPT153,
	
	IPT200,
	IPT210, IPT211, IPT213,
	IPT220, IPT223,
	IPT232, IPT233, IPT234,
	IPT241,
	IPT251, IPT252, IPT253,
	
	IPT304,
	IPT312, IPT313, IPT314,
	IPT321, IPT324,
	IPT330, IPT331, IPT332,
	IPT343, IPT344,
	IPT353,
	IPT363,
	
	SEL0, SEL1,
	
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64
);

	input
	IPT003,
	IPT012, IPT013,
	IPT020, IPT021, IPT023,
	IPT030,
	IPT040, IPT042,
	IPT052, IPT053, IPT054,
	IPT062,
	
	IPT110,
	IPT120, IPT121, IPT123, IPT124,
	IPT130, IPT132, IPT134,
	IPT142, IPT144,
	IPT151, IPT152, IPT153,
	
	IPT200,
	IPT210, IPT211, IPT213,
	IPT220, IPT223,
	IPT232, IPT233, IPT234,
	IPT241,
	IPT251, IPT252, IPT253,
	
	IPT304,
	IPT312, IPT313, IPT314,
	IPT321, IPT324,
	IPT330, IPT331, IPT332,
	IPT343, IPT344,
	IPT353,
	IPT363,
	
	SEL0, SEL1;
	
	output
	OUT00, OUT01, OUT02, OUT03, OUT04,
	OUT10, OUT11, OUT12, OUT13, OUT14,
	OUT20, OUT21, OUT22, OUT23, OUT24,
	OUT30, OUT31, OUT32, OUT33, OUT34,
	OUT40, OUT41, OUT42, OUT43, OUT44,
	OUT50, OUT51, OUT52, OUT53, OUT54,
	OUT60, OUT61, OUT62, OUT63, OUT64;

	wire
	NSEL0, NSEL1,
	bit0sel, bit1sel, bit2sel, bit3sel,
	
	IPT003wire,
	IPT012wire, IPT013wire,
	IPT020wire, IPT021wire, IPT023wire,
	IPT030wire,
	IPT040wire, IPT042wire,
	IPT052wire, IPT053wire, IPT054wire,
	IPT062wire,
	
	IPT110wire,
	IPT120wire, IPT121wire, IPT123wire, IPT124wire,
	IPT130wire, IPT132wire, IPT134wire,
	IPT142wire, IPT144wire,
	IPT151wire, IPT152wire, IPT153wire,
	
	IPT200wire,
	IPT210wire, IPT211wire, IPT213wire,
	IPT220wire, IPT223wire,
	IPT232wire, IPT233wire, IPT234wire,
	IPT241wire,
	IPT251wire, IPT252wire, IPT253wire,
	
	IPT304wire,
	IPT312wire, IPT313wire, IPT314wire,
	IPT321wire, IPT324wire,
	IPT330wire, IPT331wire, IPT332wire,
	IPT343wire, IPT344wire,
	IPT353,
	IPT363wire;
	

not (NSEL0, SEL0);
not (NSEL1, SEL1);

and (bitsel0, NSEL0, NSEL1);
and (bitsel1, NSEL0, SEL1);
and (bitsel2, SEL0, NSEL1);
and (bitsel3, SEL0, SEL1);

and (IPT003wire, IPT003, bitsel0);

and (IPT012wire, IPT012, bitsel0);
and (IPT013wire, IPT013, bitsel0);

and (IPT020wire, IPT020, bitsel0);
and (IPT021wire, IPT021, bitsel0);
and (IPT023wire, IPT023, bitsel0);

and (IPT030wire, IPT030, bitsel0);

and (IPT040wire, IPT040, bitsel0);
and (IPT042wire, IPT042, bitsel0);

and (IPT052wire, IPT052, bitsel0);
and (IPT053wire, IPT053, bitsel0);
and (IPT054wire, IPT054, bitsel0);

and (IPT062wire, IPT062, bitsel0);


and (IPT110wire, IPT110, bitsel1);

and (IPT120wire, IPT120, bitsel1);
and (IPT121wire, IPT121, bitsel1);
and (IPT123wire, IPT123, bitsel1);
and (IPT124wire, IPT124, bitsel1);

and (IPT130wire, IPT130, bitsel1);
and (IPT132wire, IPT132, bitsel1);
and (IPT134wire, IPT134, bitsel1);

and (IPT142wire, IPT142, bitsel1);
and (IPT144wire, IPT144, bitsel1);

and (IPT151wire, IPT151, bitsel1);
and (IPT152wire, IPT152, bitsel1);
and (IPT153wire, IPT153, bitsel1);


and (IPT200wire, IPT200, bitsel2);

and (IPT210wire, IPT210, bitsel2);
and (IPT211wire, IPT211, bitsel2);
and (IPT213wire, IPT213, bitsel2);

and (IPT220wire, IPT220, bitsel2);
and (IPT223wire, IPT223, bitsel2);

and (IPT232wire, IPT232, bitsel2);
and (IPT233wire, IPT233, bitsel2);
and (IPT234wire, IPT234, bitsel2);

and (IPT241wire, IPT241, bitsel2);

and (IPT251wire, IPT251, bitsel2);
and (IPT252wire, IPT252, bitsel2);
and (IPT253wire, IPT253, bitsel2);


and (IPT304wire, IPT304, bitsel3);

and (IPT312wire, IPT312, bitsel3);
and (IPT313wire, IPT313, bitsel3);
and (IPT314wire, IPT314, bitsel3);

and (IPT321wire, IPT321, bitsel3);
and (IPT324wire, IPT324, bitsel3);

and (IPT330wire, IPT330, bitsel3);
and (IPT331wire, IPT331, bitsel3);
and (IPT332wire, IPT332, bitsel3);

and (IPT343wire, IPT343, bitsel3);
and (IPT344wire, IPT344, bitsel3);

and (IPT353wire, IPT353, bitsel3);

and (IPT363wire, IPT363, bitsel3);


or (OUT00, IPT200wire);
or (OUT01, 1'b0);
or (OUT02, 1'b0);
or (OUT03, IPT003wire);
or (OUT04, IPT304wire);

or (OUT10, IPT110wire, IPT210wire);
or (OUT11, IPT211wire);
or (OUT12, IPT012wire, IPT312wire);
or (OUT13, IPT013wire, IPT213wire, IPT313wire);
or (OUT14, IPT314wire);

or (OUT20, IPT020wire, IPT120wire, IPT220wire);
or (OUT21, IPT021wire, IPT121wire, IPT321wire);
or (OUT22, 1'b0);
or (OUT23, IPT023wire, IPT123wire, IPT223wire);
or (OUT24, IPT124wire, IPT324wire);

or (OUT30, IPT030wire, IPT130wire, IPT330wire);
or (OUT31, IPT331wire);
or (OUT32, IPT132wire, IPT232wire, IPT332wire);
or (OUT33, IPT233wire);
or (OUT34, IPT134wire, IPT234wire);

or (OUT40, IPT040wire);
or (OUT41, IPT241wire);
or (OUT42, IPT042wire, IPT142wire);
or (OUT43, IPT343wire);
or (OUT44, IPT144wire, IPT344wire);

or (OUT50, 1'b0);
or (OUT51, IPT151wire, IPT251wire);
or (OUT52, IPT052wire, IPT152wire, IPT252wire);
or (OUT53, IPT053wire, IPT153wire, IPT253wire, IPT353wire);
or (OUT54, IPT054wire);

or (OUT60, 1'b0);
or (OUT61, 1'b0);
or (OUT62, IPT062wire);
or (OUT63, IPT363wire);
or (OUT64, 1'b0);

endmodule
