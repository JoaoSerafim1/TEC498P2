/*module tff_gate (q, qbar, t, clk);

input t, clk; 
output q, qbar;

wire r, s;
wire nor1_out; // output of nor1 
wire nor2_out; // output of nor2

nor (nor1_out, nor2_out, r);
nor (nor2_out, nor1_out, s);
or (q, nor1_out);
or (qbar, nor2_out);
and (r, q, t, clk);
and (s, qbar, t, clk);

endmodule*/

module tff_gate ( input clk, input t, output reg q, output qbar);  

always @ (posedge clk) begin    
	if (t)  
		q <= ~q;  
	else  
		q <= q;  
end

not (qbar, q);

endmodule
