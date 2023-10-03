module srlt_gate (q, qbar, s, r);

input s, r;

output q, qbar;

wire nor1_out; // output of nor1 
wire nor2_out; // output of nor2

nor (nor1_out, nor2_out, r);
nor (nor2_out, nor1_out, s);
or (q, nor1_out);
or (qbar, nor2_out);

endmodule
