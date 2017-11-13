//------------------------------------------------------------------------------
// hvsyncinvertor.v
//------------------------------------------------------------------------------

module syncinv(clk, ena, reset, ih, iv, oh, ov, htick);

    input   clk;            // 25 MHZ clock signal
    input   ena;            // 1 mhz enable signal
    input   reset;          // reset signal
    input   ih, iv;         // input horizontal and vertical cync
    output  oh, ov;         // output horizontal and vertical sync
	output	htick;			// short start line signal

    reg     [3:0] hscnt;    // horizontal sync integrator
    reg     [2:0] vscnt;    // vertical sync integrator
    reg     hspol, vspol;   // hor and vert polarity signal

//------------------------------------------------------------------------------
//  HSYNC failing edge extractor
//------------------------------------------------------------------------------

reg		[1:0] hfee;
reg		rhtick;

always @ (posedge clk)
begin
	hfee  <= { hfee[0], oh };
	rhtick <= (~hfee[0] & hfee[1]);			// made clock when filing edge 	
end

assign htick = rhtick;

//------------------------------------------------------------------------------
// Horizontal sync integrator
//------------------------------------------------------------------------------

always @ ( posedge clk or posedge reset) 
begin
	if (reset)
	begin
		hscnt <= 4'b1000;
		hspol <= 1;
	end
	else if (ena)
		if (ih)
			if ( hscnt == 4'b1111 )
				hspol <= 1;
			else
				hscnt <= hscnt + 1;
		else
    		if ( hscnt == 4'b0000 )
				hspol <= 0;
    		else
    			hscnt <= hscnt - 1;
end

assign oh = (hspol ^ ih);

//------------------------------------------------------------------------------
// vertical sync integrator
//------------------------------------------------------------------------------

always @ ( posedge clk or posedge reset) 
begin
	if (reset)
	begin
		vscnt <= 3'b100;
		vspol <= 1;
	end
	else if(htick)
		if (iv)
			if ( vscnt == 3'b111 )
				vspol <= 1;
			else
				vscnt <= vscnt + 1;
		else
			if ( vscnt == 3'b000 )
				vspol <= 0;
			else
				vscnt <= vscnt - 1;
end

assign ov = (vspol ^ iv);				

endmodule