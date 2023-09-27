module multiplex35to5 (
	IN0_0, IN0_1, IN0_2, IN0_3, IN0_4,
	IN1_0, IN1_1, IN1_2, IN1_3, IN1_4,
	IN2_0, IN2_1, IN2_2, IN2_3, IN2_4,
	IN3_0, IN3_1, IN3_2, IN3_3, IN3_4,
	IN4_0, IN4_1, IN4_2, IN4_3, IN4_4,
	IN5_0, IN5_1, IN5_2, IN5_3, IN5_4,
	IN6_0, IN6_1, IN6_2, IN6_3, IN6_4,
	SEL0, SEL1, SEL2,
	OUT0, OUT1, OUT2, OUT3, OUT4
);

	input
	IN0_0, IN0_1, IN0_2, IN0_3, IN0_4,
	IN1_0, IN1_1, IN1_2, IN1_3, IN1_4,
	IN2_0, IN2_1, IN2_2, IN2_3, IN2_4,
	IN3_0, IN3_1, IN3_2, IN3_3, IN3_4,
	IN4_0, IN4_1, IN4_2, IN4_3, IN4_4,
	IN5_0, IN5_1, IN5_2, IN5_3, IN5_4,
	IN6_0, IN6_1, IN6_2, IN6_3, IN6_4,
	
	SEL0, SEL1, SEL2;
	
	output
	OUT0, OUT1, OUT2, OUT3, OUT4;
	
	wire
	NSEL0, NSEL1, NSEL2,
	
	bit0, bit1, bit2, bit3, bit4, bit5, bit6,
	
	OUT0wire0, OUT1wire0, OUT2wire0, OUT3wire0, OUT4wire0,
	OUT0wire1, OUT1wire1, OUT2wire1, OUT3wire1, OUT4wire1,
	OUT0wire2, OUT1wire2, OUT2wire2, OUT3wire2, OUT4wire2,
	OUT0wire3, OUT1wire3, OUT2wire3, OUT3wire3, OUT4wire3,
	OUT0wire4, OUT1wire4, OUT2wire4, OUT3wire4, OUT4wire4,
	OUT0wire5, OUT1wire5, OUT2wire5, OUT3wire5, OUT4wire5,
	OUT0wire6, OUT1wire6, OUT2wire6, OUT3wire6, OUT4wire6;
	

not (NSEL0, SEL0);
not (NSEL1, SEL1);
not (NSEL2, SEL2);

and (bit0, NSEL0, NSEL1, NSEL2);
and (bit1, NSEL0, NSEL1, SEL2);
and (bit2, NSEL0, SEL1, NSEL2);
and (bit3, NSEL0, SEL1, SEL2);
and (bit4, SEL0, NSEL1, NSEL2);
and (bit5, SEL0, NSEL1, SEL2);
and (bit6, SEL0, SEL1, NSEL2);

and (OUT0wire0, IN0_0, bit0);
and (OUT1wire0, IN0_1, bit0);
and (OUT2wire0, IN0_2, bit0);
and (OUT3wire0, IN0_3, bit0);
and (OUT4wire0, IN0_4, bit0);

and (OUT0wire1, IN1_0, bit1);
and (OUT1wire1, IN1_1, bit1);
and (OUT2wire1, IN1_2, bit1);
and (OUT3wire1, IN1_3, bit1);
and (OUT4wire1, IN1_4, bit1);

and (OUT0wire2, IN2_0, bit2);
and (OUT1wire2, IN2_1, bit2);
and (OUT2wire2, IN2_2, bit2);
and (OUT3wire2, IN2_3, bit2);
and (OUT4wire2, IN2_4, bit2);

and (OUT0wire3, IN3_0, bit3);
and (OUT1wire3, IN3_1, bit3);
and (OUT2wire3, IN3_2, bit3);
and (OUT3wire3, IN3_3, bit3);
and (OUT4wire3, IN3_4, bit3);

and (OUT0wire4, IN4_0, bit4);
and (OUT1wire4, IN4_1, bit4);
and (OUT2wire4, IN4_2, bit4);
and (OUT3wire4, IN4_3, bit4);
and (OUT4wire4, IN4_4, bit4);

and (OUT0wire5, IN5_0, bit5);
and (OUT1wire5, IN5_1, bit5);
and (OUT2wire5, IN5_2, bit5);
and (OUT3wire5, IN5_3, bit5);
and (OUT4wire5, IN5_4, bit5);

and (OUT0wire6, IN6_0, bit6);
and (OUT1wire6, IN6_1, bit6);
and (OUT2wire6, IN6_2, bit6);
and (OUT3wire6, IN6_3, bit6);
and (OUT4wire6, IN6_4, bit6);

or (OUT0, OUT0wire0, OUT0wire1, OUT0wire2, OUT0wire3, OUT0wire4, OUT0wire5, OUT0wire6);
or (OUT1, OUT1wire0, OUT1wire1, OUT1wire2, OUT1wire3, OUT1wire4, OUT1wire5, OUT1wire6);
or (OUT2, OUT2wire0, OUT2wire1, OUT2wire2, OUT2wire3, OUT2wire4, OUT2wire5, OUT2wire6);
or (OUT3, OUT3wire0, OUT3wire1, OUT3wire2, OUT3wire3, OUT3wire4, OUT3wire5, OUT3wire6);
or (OUT4, OUT4wire0, OUT4wire1, OUT4wire2, OUT4wire3, OUT4wire4, OUT4wire5, OUT4wire6);

endmodule
