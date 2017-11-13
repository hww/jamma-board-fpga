
/*
|	Functional Description
|
|	The NTSC megafunction uses Clock and active-low Reset input signals to
|	generate a digital representation of the NTSC control signals CSYNC, HD, VD,
|	FIELD, BURST, and BLANK. These signals can be used to control video imaging
|	or display equipment.
|
|	To implement a complete NTSC pattern, this megafunction contains a 6-state 
|	state machine with the following states: power-up (POWER_UP), 
|	pre-equalization (PRE_EQ), serration (SERRA), post-equalization (POST_EQ), 
|	sub-phase (SUB_PH), and video-active (VID_ACT). During each of these 
|	distinct states, the outputs are generated according to a different 
|	set of rules, and the state machine controls the output generation.
|
|	Each horizontal line contains 910 pixels. The NTSC megafunction treats each
|	line as a pair of half-lines, so the HCNT_ROLL_OVER signal is set to 453 
|	(one less than the half-line value of 454, which provides 910 pixels when 
|	multiplied by two).
|
|	The constant VCNT_ROLL_OVER is set to 525, representing the 525 lines per 
|	screen specified by the NTSC standard. Each screen contains two frames 
|	that each have 262.5 lines to provide interlacing. Since non-parameter 
|	counters are very hard to control, the system counts to 525 half-lines, 
|	then repeats the count sequence for the second frame. The two frames are 
|	offset by one half-line so that a complete picture is formed with the 
|	analog video data from both of the frames.
|
|	For more detailed information on NTSC pattern generation, consult the 
|	NTSC standards or any textbook on video applications.
*/

/*
|	No particular device is specified for this megafunction. In its current 
|	form, it uses 31 macrocells in the EPS464 EPLD, and 32 macrocells in the 
|	MAX 5000 and MAX 7000 device families.
*/


module ntsc	(clock, reset, csync, hd, vd, fld, blank, burst );

	input   clock;			                        // System global Clock		
	input   reset;			                        // System Reset (active low)	

	output  csync, hd, vd, fld, blank, burst;       // NTSC output signals

/*
|	PATTERN CONSTANTS SECTION
|
|	Constants shown for phase conditions (eg: START_PRE_EQ) are decoded off the
|	vertical counter. State transitions are based on the line that is currently
|	being decoded. The values are shown as binary numbers (denoted by the
|	'bxxxx" format), and represent the Gray-code values that correspond to the
|	decimal values shown in a comment on each line.
|
|	Constants for the J and K inputs (e.g., HD_J) are also Gray-code values, 
|	with the corresponding decimal value shown in a comment. These constants 
|	are compared with the horizontal counter to make pulses in the output 
|	signals.
|
|	The constants with names that begin with "START" are starting points for the
|	correspondingly named NTSC phase. For this model we assume that the NTSC 
|	standard has 5 phases: pre-equalization (PRE_EQ), serration (SERRA), 
|	post-equalization (POST_EQ), sub-phase (SUB_PH), and video-active (VID_ACT).
|	Each phase starts at defined vertical lines, and these are set by the 
|	first 5 constants given below. Since they are decoding a Gray-code 
|	counter, the equivalent decimal value is shown in a comment (e.g., video 
|	active starts on the 20th line in the scan).
*/

parameter START_PRE_EQ		= 'b0000000000;	    // line 0		D"0"		
parameter START_SERRA	    = 'b0000000101;	    // line 3		D"6"		
parameter START_POST_EQ		= 'b0000001010;	    // line 6		D"12"		
parameter START_SUB_PH		= 'b0000011011;	    // line 9		D"18"		
parameter START_VID_ACT		= 'b0000111100;	    // line 20		D"40"		

/*
|	These constants define the transitions on the various NTSC output signals
|	during the 5 phases of the NTSC standard. In each case, the constant shown
|	represents a value that is compared to the horizontal pixel counter. In the
|	case of the CSYNC signal the output depends on the current phase, so 5 
|	constants are given to completely specify the operation. HD, BLANK, and 
|	BURST behave the same in all 5 states, so only one constant pair is given.
|	Note that a "J" and a "K" constant are always given because the output 
|	pulses on all the output signals must be turned on and then turned 
|	off again at specific horizontal count values. The "J" is routed to the J 
|	input of a JK flipflop that asserts the output when true, and the "K" is
|	routed to the K input to a JK flipflop that deasserts the output
|	when true.
|
|	By setting the value of CSYNC_PRE_EQ_J to the Gray-code equivalent of 
|	decimal 36, the CSYNC signal is asserted at the 36th horizontal bit. 
|	By setting CSYNC_PRE_EQ_K equal to the Gray-code equivalent to decimal 1, 
|	CSYNC is deasserted at the first horizontal bit. During the pre-
|	equalization phase there are 6 "half-lines" (as defined by the constant 
|	START_SERRA being set to the Gray-code equivalent of decimal 6), so the 
|	CSYNC signal will make 6 pulses during pre-equalization phases. For 
|	this reason, the falling edge at the first point in a horizontal scan ends 
|	the high-level signal for the previous line. Since CSYNC is an active-low 
|	signal, this creates a pulse that lasts from the 1st to the 36th
|	bit on the horizontal scan, and then repeats for a total of 6 lines.
|
|	The active-low CSYNC signal behaves as follows during the pre-equalization
|	phase: The first (falling) edge occurs when the horizontal counter is equal
|	to the Gray-code equivalent of "1" and the second (rising) edge occurs when 
|	the horizontal counter is equal to the Gray-code equivalent of "36". Note 
|	that these edges should technically occur at "0" and "35", but to avoid 
|	synchronization problems with the boundary between the two frames in the 
|	interlaced screen format, the transitions are all offset by one.
|
|   1      36                    454/1     36                     454/1
|           ________________|  |____        ________________|  |____  
|   |      |                |  |    |      |                |  |    |  
|   |      |                        |      |                        |
|   |______|                        |______|                        |_ . . 
|
|   {--------  first line  ---------}{--------  second line  -------}
|
|	Counter values are compared to constants in the "WHEN pre_eq" clauses
|	in the state machine Case Statement state transition. Corresponding WHEN 
|	statements are provided for all 5 NTSC phases. Each WHEN clause defines
|	each of the 6 output signals during each of the 5 states.
*/

parameter CSYNC_PRE_EQ_J	= 'b000110110;		// 				D"36"		
parameter CSYNC_PRE_EQ_K	= 'b000000001;		//				D"1"		

parameter CSYNC_SERRA_J	    = 'b101000100;		//				D"391"		
parameter CSYNC_SERRA_K	    = 'b000000001;		//				D"1"		

parameter CSYNC_POST_EQ_J	= 'b000110110;		//				D"36"		
parameter CSYNC_POST_EQ_K	= 'b000000001;		//				D"1"		

parameter CSYNC_SUB_PH_J	= 'b001100110;		//				D"68"		
parameter CSYNC_SUB_PH_K	= 'b000000001;		//				D"1"		

parameter CSYNC_VID_ACT_J	= 'b001100110;		//				D"68"		
parameter CSYNC_VID_ACT_K	= 'b000000001;		//		 		D"1"		

parameter HD_J			    = 'b001110110;		//				D"91"		
parameter HD_K			    = 'b000000001;		//				D"1"		

parameter BLANK_J			= 'b011010111;		//				D"154"		
parameter BLANK_K			= 'b000000001;		//				D"1"		

parameter BURST_J			= 'b001000001;		//				D"126"		
parameter BURST_K			= 'b001101110;		//				D"75"		

/*
|	COUNTER CONSTANTS SECTION
|
|	These constants specify rollover and terminal count values. 453 is the end 
|	of the first half-line. Half-lines are used to accommodate the interlacing 
|	scheme specified by NTSC. Half-lines make it possible to use an parameter 
|	value to count the lines per screen. Full lines would make it necessary
|	to count to 262.5 (a half-line) and then switch frames. It is difficult
|	to count in non-parameter mode with digital logic.
|
|	The VCNT value of 525 is the end of the first frame in the two-frame 
|	interlaced model. These values can be changed to match other video display 
|	formats. 
*/
	
parameter HCNT_ZERO			= 'b000000000;		// D"0" for start value		
parameter HCNT_ROLL_OVER		= 'b100100111; 	    // D"453" for hhalf			
parameter VCNT_ROLL_OVER		= 'b1100001010;	    // D"525"					



/*
|	line_decode	is a state machine used to control the NTSC waveforms. The
|	outputs csync, hsync, vsync, field_ff, blank, and burst are all created with
|	JK flipflops.
*/


	reg [2:0] line_decode;
    parameter   _power_up   = 3'b000, 	
                _pre_eq     = 3'b001,
				_serra      = 3'b010,
				_post_eq    = 3'b011,
				_sub_ph     = 3'b100,    
				_vid_act    = 3'b101;

	wire    gclk; 				// Global Clock node			
	wire    grst;				// Global Reset node			

	reg csync_ff;
	reg hd_ff;
	reg vd_ff;
	reg fld_ff;
	reg blank_ff;
	reg burst_ff;

	wire    pwr_up;
	wire    cnt_reset; 

/*
|	Counter variables. Eleven bits for lines per screen (10 in the counter, and
|	line_ff as the terminal bit), and 10 bits for pixels per line (9 in the 
|	counter and h_odd as the terminal bit).
*/

	reg     [9:0]v;			    // Vertical counter bits			
	reg     [8:0]h;			    // Horizontal counter bits		
	reg     line_ff;			// First/second halfline_ff		
	reg     h_odd;			    // Odd horizontal bit			
	reg     field_ff;			// Odd/even field_ff indicator		
	wire    vcnt_reset;			// Terminal/reset condition		
	wire    hcnt_reset;			// Terminal/reset condition		


assign	gclk = clock;
assign	grst = reset;

/*
|	Set up flipflop and state machine Clocks and Clears
*/

    assign pwr_up      =	(line_decode == _power_up);
    assign cnt_reset   =	(line_decode == _power_up);

always  @   ( posedge gclk or posedge grst )
    begin 

    if(grst)
        line_decode <= _power_up;
    else
/*
|	Define state transitions
*/

    	case ( line_decode ) 

    	_power_up:
            begin
                csync_ff    <=	1;
                hd_ff       <=	1;
                vd_ff       <=	0;
                fld_ff      <=	0;
                blank_ff    <=	0;
                burst_ff    <=	1;
                line_decode <=	_pre_eq;
            end
    	_pre_eq:
            begin
                if (h == CSYNC_PRE_EQ_J)
    		    	csync_ff	<=	1;
                else if (h == CSYNC_PRE_EQ_K)
    			    csync_ff	<= 0;	;
    			
                vd_ff 	    =	0;
    			
                if ((h == HD_J) & ~!line_ff & ~field_ff)
    			 # ((h == HD_J) & ~line_ff & field_ff)
                    hd_ff	    <= 1;
    			else if ((h == HD_K) & ~line_ff & ~field_ff)
    			      #	((h == HD_K) & ~line_ff & field_ff)
    			    hd_ff.k		<=	0;
                
                fld_ff	    <=	0;
    			blank_ff	<=	0;
    			burst_ff	<=	1;
			
    			if (v == START_SERRA ) 
    				line_decode = _serra ;
            end
    	_serra:
            begin
                if (h == CSYNC_SERRA_J)
    			    csync_ff	<=	1;
    			else if (h == CSYNC_SERRA_K)
                    csync_ff	<=	0;
                
                if (((h == HD_J) & ~line_ff & ~field_ff) 
                  # ((h == HD_J) & ~line_ff &  field_ff)
    			    hd_ff		<=	1;
    			else if ((h == HD_K) & ~line_ff & ~field_ff) 
                      # ((h == HD_K) & ~line_ff &  field_ff)
                    hd_ff		<=	0;
    			
                vd_ff   	<=	0;
    			fld_ff	    <=	1;
    			blank_ff	<=	0;
    			burst_ff    <=	1;
 
    			if (v == START_POST_EQ ) 
    				line_decode = _post_eq;
            end
    	_post_eq:
            begin
                if (h == CSYNC_POST_EQ_J)
    			    csync_ff	<=	1;
                else if (h == CSYNC_POST_EQ_K)
    			    csync_ff	<=	0;
                if ((h == HD_J) & ~line_ff & ~field_ff)
                 # ((h == HD_J) & ~line_ff &  field_ff)
                    hd_ff  <=   1;
                else if ((h == HD_K) & ~line_ff & ~field_ff)
                      # ((h == HD_K) & ~line_ff &  field_ff)
                      hd_ff     <=   0;

    			vd_ff		<=	0;
    			fld_ff  	<=	1;
    			blank_ff	<=	0;
    			burst_ff	<=	1;

    			if (v == START_SUB_PH ) 
    				line_decode = _sub_ph ;
            end
    	_sub_ph:
            begin
                if ((h == CSYNC_SUB_PH_J) & ~!line_ff & ~field_ff)
                  #((h == CSYNC_SUB_PH_J) & ~line_ff &   field_ff)
                    csync_ff  <=  1;  
                else if ((h == CSYNC_SUB_PH_K) & ~line_ff & ~field_ff) 
                      # ((h == CSYNC_SUB_PH_K) & ~line_ff &  field_ff)
                    csync_ff  <=  0;

                if ((h == HD_J) & ~line_ff & ~field_ff)
                  #((h == HD_J) & ~line_ff &  field_ff)
                    hd_ff <= 1;
                else if ((h == HD_K) & ~line_ff & ~field_ff)
                       #((h == HD_K) & ~line_ff &  field_ff)
                    hd_ff <= 0;

    			vd_ff		<=	1;
    			fld_ff  	<=	1;

                if ((h == BURST_J) & ~line_ff & ~field_ff)
                 # ((h == BURST_J) & ~line_ff &  field_ff)
                    burst_ff <= 1;
                else if ((h == BURST_K) & ~line_ff & ~field_ff)
                      # ((h == BURST_K) & ~line_ff &  field_ff)
                    burst_ff <= 0;

    			blank_ff	<=	0;

    			if (v == START_VID_ACT ) 
    				line_decode = _vid_act;
            end
    	_vid_act:
            begin
                if ((h == CSYNC_VID_ACT_J) & ~line_ff & ~field_ff)
                 # ((h == CSYNC_VID_ACT_J) & ~line_ff &  field_ff)
                    csync_ff <= 1;
                else if ((h == CSYNC_VID_ACT_K) & ~line_ff & ~field_ff) 
                      # ((h == CSYNC_VID_ACT_K) & ~line_ff &  field_ff)
                      csync_ff <= 0;

                if ((h == HD_J) & ~line_ff & ~field_ff)
                 # ((h[] == HD_J) & !line_ff & field_ff)
                    hd_ff <= 1;
                else if ((h == HD_K) & ~line_ff & ~field_ff)
                      # ((h == HD_K) & ~line_ff &  field_ff)
                      hd_ff <= 0;

    			vd_ff		<=	1;
    			fld_ff	    <=	1;

                if ((h == BURST_J) & ~line_ff & ~field_ff)
                 # ((h == BURST_J) & ~line_ff &  field_ff)
                    burst_ff <= 1;
                else if ((h == BURST_K) & ~line_ff & ~field_ff)
                      # ((h == BURST_K) & ~line_ff &  field_ff)
                    burst_ff <= 0;

                if ((h == BLANK_J) & ~line_ff & ~field_ff)
                 # ((h == BLANK_J) & ~line_ff &  field_ff)
                    blank_ff <= 1;
                else if ((h == BLANK_K) & ~line_ff & ~field_ff)
                      # ((h == BLANK_K) & ~line_ff &  field_ff)
                      blank_ff <= 0;
			
    			if (v == START_PRE_EQ ) 
    				line_decode = _pre_eq;
            end
        endcase
    end
end
/*
|	Establish the output connections
*/

assign csync				=	csync_ff;
assign hd					=	hd_ff;
assign vd					=	vd_ff;
assign fld					=	fld_ff;
assign burst				=	burst_ff;
assign blank				=	blank_ff;

/*
|	Equations for line_ff and field_ff. When the horizontal counter is in the 
|	first half of the scan-line, the line_ff output will be low. A high 
|	indicates that the counter is in the second half of the scan-line. To make 
|	an efficient circuit, the vertical counter uses line_ff as the terminal 
|	bit. The field_ff is used to track the current field. During odd fields 
|	(1st physical field), the field_ff output will be low. During even fields 
|	it will be high. 
*/

assign line_ff			=	(h == HCNT_ROLL_OVER);
assign field_ff			=	(v == VCNT_ROLL_OVER & h == HCNT_ROLL_OVER);

/*
|	Gray-code equations. Each bit toggles when previous bits are 10..0 and
|	the odd bit is 1.
*/
always  @   ( posedge gclk )
    begin 

	if(!field_ff) 
    begin
	v   =  {((v, line_ff)  == 'bX1000000001) & ~vcnt_reset # vcnt_reset & v9,
			((v, line_ff)  == 'bXX100000001) & ~vcnt_reset # vcnt_reset & v8,
			((v, line_ff)  == 'bXXX10000001) & ~vcnt_reset # vcnt_reset & v7,
			((v, line_ff)  == 'bXXXX1000001) & ~vcnt_reset # vcnt_reset & v6,
			((v, line_ff)  == 'bXXXXX100001) & ~vcnt_reset # vcnt_reset & v5,
			((v, line_ff)  == 'bXXXXXX10001) & ~vcnt_reset # vcnt_reset & v4,
			((v, line_ff)  == 'bXXXXXXX1001) & ~vcnt_reset # vcnt_reset & v3,
			((v, line_ff)  == 'bXXXXXXXX101) & ~vcnt_reset # vcnt_reset & v2,
			((v, line_ff)  == 'bXXXXXXXXX11) & ~vcnt_reset # vcnt_reset & v1,
			((v, line_ff)  == 'bXXXXXXXXXX0) & ~vcnt_reset # vcnt_reset & v0
			}
			& (h == HCNT_ROLL_OVER);
	else
	v =    {((v, ~line_ff)  == 'bX1000000001) & ~vcnt_reset # vcnt_reset & v9,
			((v, ~line_ff)  == 'bXX100000001) & ~vcnt_reset # vcnt_reset & v8,
			((v, ~line_ff)  == 'bXXX10000001) & ~vcnt_reset # vcnt_reset & v7,
			((v, ~line_ff)  == 'bXXXX1000001) & ~vcnt_reset # vcnt_reset & v6,
			((v, ~line_ff)  == 'bXXXXX100001) & ~vcnt_reset # vcnt_reset & v5,
			((v, ~line_ff)  == 'bXXXXXX10001) & ~vcnt_reset # vcnt_reset & v4,
			((v, ~line_ff)  == 'bXXXXXXX1001) & ~vcnt_reset # vcnt_reset & v3,
			((v, ~line_ff)  == 'bXXXXXXXX101) & ~vcnt_reset # vcnt_reset & v2,
			((v, ~line_ff)  == 'bXXXXXXXXX11) & ~vcnt_reset # vcnt_reset & v1,
			((v, ~line_ff)  == 'bXXXXXXXXXX0) & ~vcnt_reset # vcnt_reset & v0
			}
			& (h == HCNT_ROLL_OVER);

	end;
end

assign vcnt_reset = (v == VCNT_ROLL_OVER # cnt_reset);

h_odd = h_odd | ~pwr_up;

always  @   ( posedge gclk )
begin 

	h =    {({h, h_odd}  == 'bX100000001) & ~hcnt_reset | hcnt_reset & h[8],
			({h, h_odd}  == 'bXX10000001) & ~hcnt_reset | hcnt_reset & h[7],
			({h, h_odd}  == 'bXXX1000001) & ~hcnt_reset | hcnt_reset & h[6],
			({h, h_odd}  == 'bXXXX100001) & ~hcnt_reset | hcnt_reset & h[5],
			({h, h_odd}  == 'bXXXXX10001) & ~hcnt_reset | hcnt_reset & h[4],
			({h, h_odd}  == 'bXXXXXX1001) & ~hcnt_reset | hcnt_reset & h[3],
			({h, h_odd}  == 'bXXXXXXX101) & ~hcnt_reset | hcnt_reset & h[2],
			({h, h_odd}  == 'bXXXXXXXX11) & ~hcnt_reset | hcnt_reset & h[1],
			({h, h_odd}  == 'bXXXXXXXXX0) & ~hcnt_reset | hcnt_reset & h[0]
			};
end
	assign hcnt_reset = (h == HCNT_ROLL_OVER) | pwr_up | cnt_reset;

end
endmodule
