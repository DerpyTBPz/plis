module testbranch();
	reg [3:0] d;
	reg [1:0] sel;
	wire out;
	reg [3:0] err;
	
	mux41 mux_inst
	(
		.d(d),
		.sel(sel),
		.out(out)
	);
	
	initial
	begin	
		err = 0;
		d = 4'b1010; sel = 2'b00;
		if (out != 1) 
		begin		
			err = err + 1;
			$display("sel = %b, d = %b, out = %b", sel, d, out);		
		end
		
		#50	d = 4'b1010; sel = 2'b01;
		if (out != 0)
		begin
			err = err + 1;
			$display("sel = %b, d = %b, out = %b", sel, d, out);
		end
		
		#50	d = 4'b1010; sel = 2'b10;
		if (out != 1)
		begin
			err = err + 1;
			$display("sel = %b, d = %b, out = %b", sel, d, out);
		end
		
		#50 d = 4'b1010; sel = 2'b11;
		if (out != 0)
		begin
			err = err + 1;
			$display("sel = %b, d = %b, out = %b", sel, d, out);
		end
		
		if (err > 0)		
			$display("errors count: %d", err);	
		 
		$finish;
	end
endmodule
		
		