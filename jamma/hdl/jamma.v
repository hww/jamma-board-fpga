//----------------------------------------------------------------------
//
//		This source code of interface betwin IDE and JAMMA.
//
//----------------------------------------------------------------------

//`include "quad_counter.v";

//----------------------------------------------------------------------
//
//----------------------------------------------------------------------

`define TEST_MODE
`include "interface.v"
`include "quad_counter.v"

module jamma( 	clk, nReset, da, nDiow, nDior, nCS0, nCS1, iordy, dd,
				CoinCounter,CoinLockout,P,
			);

//----------------------------------------------------------------------
// IDE interface side
//----------------------------------------------------------------------

	input 	clk;											// 1
	input	[2:0] da;										// 6
	input 	nReset, nDiow, nDior, nCS0, nCS1;				// 7
	inout	iordy;											// 1
	inout	[7:0] dd;										// 8

//----------------------------------------------------------------------
// JAMMA interface side
//----------------------------------------------------------------------

	output 	[2:1] CoinCounter;								// 2
	output 	[2:1] CoinLockout;								// 2
	input  	[28:0] P;										// 27
															// 49 total
//----------------------------------------------------------------------
// CONSTANTS
//----------------------------------------------------------------------

	parameter SECTOR_COOKIE		=	'h73;					//	What we must write to the sector register of dev 0
	parameter CYLINDER_LO_COOKIE=	'h25;					//	What we must write to the cylinder lo of dev 0
	parameter CYLINDER_HI_COOKIE=	'h19;					//	What we must write to the cylinder hi of dev 0
`ifdef TEST_MODE
	parameter COOKIE_MASK		= 	15'b000000000000001;	//	When device generatin a cookie
	parameter AFTER_COOKIE_MASK	= 	16'b0000000000000011;	//	When device generatin a last word of cookie
`else
	parameter COOKIE_MASK		= 	15'b101001010001001;	//	When device generatin a cookie
	parameter AFTER_COOKIE_MASK	= 	16'b1010010100010011;	//	When device generatin a last word of cookie
`endif
	parameter COOKIE_LO			=	16'h3210;				//	The cookie lo word
	parameter COOKIE_HI			= 	16'h7654;				//	The cookie hi word

//----------------------------------------------------------------------
// VARIABLES
//----------------------------------------------------------------------

	wire 	cs, csDataReg, csDevReg, csCmdReg, trCookie;
	wire 	csSectAddr, csCylLo, csCylHi;
	wire	[3:0] bCounter;
	wire	[15:0] count;
	wire	cookie, cookiein, bDevice;
	wire	read, acces;
	wire	afterCookie, afterCookiein;
	wire	word;
	wire	[6:0] ballCnt0q;
	wire	[6:0] ballCnt1q;
	wire	[6:0] ballCnt2q;
	wire	[6:0] ballCnt3q;
	wire	lastBit;
	wire	cmd5N, cmd6N;

//----------------------------------------------------------------------
// ADDRESS decoder
//----------------------------------------------------------------------

dc idc(nCS0, nCS1, da, bDevice, cs, csDevReg, csDataReg, csCmdReg, csSectAddr, csCylLo, csCylHi);

assign read  =	cs & ~nDior & bDevice;		// data bus is no Z state
assign acces = 	cs &  bDevice;				// access cycle

//----------------------------------------------------------------------
// Command decoder
//----------------------------------------------------------------------

myLCEL iLCELcmd5((~dd[7] & dd[6] & ~dd[5] &  dd[4] & csCmdReg), cmd5N);
myLCEL iLCELcmd6((~dd[7] & dd[6] &  dd[5] & ~dd[4] & csCmdReg), cmd6N);

//----------------------------------------------------------------------
// KEY decoder
//----------------------------------------------------------------------

// Key setin whe write to sector, culinder hi and cylinder lo registers
// And crear when we write cmd 6N 

// cylinder lo cookie
myDFFE2 ikey0(nDiow, ~nReset, cmd6N, 1'b0, csCylLo,    (dd == CYLINDER_LO_COOKIE), key0);
// cylinder hi cookie
myDFFE2 ikey1(nDiow, ~nReset, cmd6N, 1'b0, csCylHi,    (dd == CYLINDER_HI_COOKIE), key1);
// sector trigger
myDFFE2 ikey2(nDiow, ~nReset, cmd6N, 1'b0, csSectAddr, (dd == SECTOR_COOKIE),      key2);

assign trCookie	= key0 & key1 & key2;					// triger cookie event

//----------------------------------------------------------------------
// TRIGGER COOKIE
//----------------------------------------------------------------------

//
//	When read last word of cookie
//

myDFFE2 ilookCntr(nDiow, ~nReset, (cmd6N & trCookie), 1'b0, cmd6N, afterCookie, lookCntr);

//----------------------------------------------------------------------
// DEVICE NUMBER
//----------------------------------------------------------------------

myDFFE ibDevice(nDiow, ~nReset, csDevReg, dd[4], bDevice);			// device 1 (slave)

//----------------------------------------------------------------------
// COIN's control
//----------------------------------------------------------------------

my4BREG    idataReg(nDiow, ~nReset, cmd5N, dd[3:0], { CoinLockout, CoinCounter });

//----------------------------------------------------------------------
// BIT COUNTER 
//----------------------------------------------------------------------

my4COUNTER ibCounter(nDior, (~nReset | cmd6N), csDataReg, 1'b0, 4'b0000, bCounter);

myLCEL  lbcell((bCounter == 4'b1111), lastBit);

//----------------------------------------------------------------------
// NOICE GENERATOR 
//----------------------------------------------------------------------

wire	[15:0] noice;

myNOISE inoise(nDior, ~nReset, 1'b1, noice);

wire   nce;
assign nce	= noice[0];						    				// output noice

//----------------------------------------------------------------------
// COOKIE GENERATOR 
//----------------------------------------------------------------------
// This counter count packets before cookie

																// when read command register
																// reset when trigger a cookie
my16COUNTER packetCounter(nDiow, ~nReset, cmd6N, (cmd6N & trCookie), 16'h0000, count);

assign word	= count[0];											// word of cookie
myLCEL lcCookie((count[15:1] == COOKIE_MASK), cookie);			// cookie event
myLCEL lcAfterCookie((count == AFTER_COOKIE_MASK), afterCookie);	// after cookie event

//----------------------------------------------------------------------
// COOKIE GENERATOR
//----------------------------------------------------------------------

reg   [15:0] cookie_mx;

always @ (word)
begin 
    if (word)
	    cookie_mx <= COOKIE_LO;
    else
        cookie_mx <= COOKIE_HI;
end

myMUX_16_1 imux_16_1(bCounter, cookie_mx, cookie_bit_in);

wire	cookie_bit;
assign  cookie_bit = (cookie & cookie_bit_in) | (~cookie & nce); 

//----------------------------------------------------------------------
// DATA BUS
//----------------------------------------------------------------------

wire [6:0] dataInput;

myMUX_16_6 imux_16_6(
					bCounter, 
					{ 2'bXX,     P[ 4:0 ] },
					{ 2'bXX,     P[ 9:5 ] },
					{ 2'bXX,     P[14:10] },
					{ 2'bXX,     P[19:15] },
					{ 2'bXX,     P[24:20] },
					{ 3'bXXX,    P[28:25] },
					{ 7'bXXXXXXX          },
					{ 7'bXXXX001          },		// version
					            ballCnt0q,
					            ballCnt1q,
					            ballCnt2q,
					            ballCnt3q,
					{ 7'bXXXXXXX  		  },
					{ 7'bXXXXXXX  		  },
					{ 7'bXXXXXXX   		  },
					{ 7'bXXXXXXX    	  },
					dataInput
					);

assign dd = read ? { cookie_bit, dataInput } : 8'hZZ;	// tri state bus drivers

//----------------------------------------------------------------------
// IORDY LOGIC
//----------------------------------------------------------------------

assign iordy = acces ? 1'b1 : 1'bz;

//----------------------------------------------------------------------
// TRACKBALL LOGIC
//----------------------------------------------------------------------

QUAD_COUNTER ballCnt0( .clk(clk), .enable(nDior), .inA(P[1]),  .inB(P[2]),  .clrn(nReset), .q(ballCnt0q));
QUAD_COUNTER ballCnt1( .clk(clk), .enable(nDior), .inA(P[3]),  .inB(P[4]),  .clrn(nReset), .q(ballCnt1q));
QUAD_COUNTER ballCnt2( .clk(clk), .enable(nDior), .inA(P[11]), .inB(P[12]), .clrn(nReset), .q(ballCnt2q));
QUAD_COUNTER ballCnt3( .clk(clk), .enable(nDior), .inA(P[13]), .inB(P[14]), .clrn(nReset), .q(ballCnt3q));

endmodule

//----------------------------------------------------------------------
// ADDRESS decoder module
//----------------------------------------------------------------------

module dc(nCS0, nCS1, da, device, cs, csDevReg, csDataReg, csCmdReg, csSectAddr, csCylLo, csCylHi);

    input   nCS0, nCS1;
    input   [2:0] da;
    input   device;
    output  cs, csDevReg, csDataReg, csCmdReg, csSectAddr, csCylLo, csCylHi;

assign cs			= 	~nCS0 & nCS1;						// select device

assign csDevReg		=	cs  & (da == 6);					// device/head register 
assign csDataReg 	= 	cs  & (da == 0) &  device;			// data register
assign csCmdReg		=	cs  & (da == 7) &  device;			// command register
assign csSectAddr	=	cs  & (da == 3) & ~device;			// sector address register
assign csCylLo		=	cs  & (da == 4) & ~device;			// cylinder low register
assign csCylHi		=	cs  & (da == 5) & ~device;			// cylinder hight register

endmodule

//----------------------------------------------------------------------
//
//		Device has 3 registers. One is data register, second is 
//		device register and last is command register.
//
//		CS0	CS1	da[2..0]    Name       Access Dir
//		------------------------------------------
//		1   0       0       DataReg     R-
//		1   0       1       ErrReg      R-
//		1   0       3       SectAd      -W
//		1   0       4       CylLo	    -W
//		1   0       5       CylHi       -W
//		1   0       6       DevReg      -W
//		1   0       7       CmdReg      RW
//
//      --------------------------------------------------------------
//		DevReg	for write access
//      --------------------------------------------------------------
//		7 6 5 4 3 2 1 0
//		      *				device select bit. 
//		      				  0 device 0 (def.) (FLASH CART WORK)
//		      				  1 device 1        (DEVICE WORK)
//		* * *   * * * *     is not used
//
//		This regster siportes by all IDE devices, for selectin betwin
//		dev0 and dev1. 
//
//      --------------------------------------------------------------
//		CmdReg for write access
//      --------------------------------------------------------------
//		7 6 5 4 3 2 1 0
//		              *     Coils counter 1 
//		            *       Coils counter 2 
//                *         Coils lockout 1 
//		        *           Coils lockout 2
//                            0 OFF (def.)
//                            1 ON		
//		0 1 0 1             command 5
//
//		              *     Lo frequence
//								0 is 30 khz horizontal sync 
//								1 is 15 khz horizontal sync 
//		0 1 1 0             command 6
//
//      --------------------------------------------------------------
//		DataReg for read access
//      --------------------------------------------------------------
//		7 6 5 4 3 2 1 0
//		      * * * * *     State of buttons	
//		  * *               reserved
//		*                   stream of noice 
//
//      --------------------------------------------------------------
//		CmdReg for read access
//      --------------------------------------------------------------
//
//		For reading of buttons, we must read a CmdReg, and next
//		we can to read the packet (eight bytes) from the DataReg. 
//
//									B i t s
//      --------------------------------------------------------------
//      Byte |   7  |   6  |   5  |   4  |   3  |   2  |   1  |   0  | 
//      --------------------------------------------------------------
//		1	 |  SN  |             | Start|  Up  | Down | Left | Right| 
//		2	 |  SN  |             |  B5  |  B4  |  B3  |  B2  |  B1  |
//		3	 |  SN  |             | Start|  Up  | Down | Left | Right|
//		4	 |  SN  |             |  B5  |  B4  |  B3  |  B2  |  B1  |
//		5	 |  SN  |             | WrvSw|Til/Sl| Test | CoinB| CoinA|
//		6	 |  SN  |                    | CD2  | CD1  |  CD2 |  CD1 |
//		7	 |  SN  |                                                |
//		8	 |  SN  |                           |      Version       |
//		9	 |  SN  |                   Counter 0                    |
//		10   |  SN  |                   Counter 1                    |
//		11   |  SN  |                   Counter 2                    |
//		12   |  SN  |                   Counter 3                    |
//		13   |  SN  |                                                |
//		14   |  SN  |                                                |
//		15   |  SN  |                                                |
//		16   |  SN  |                                                |
//
//		First two bytes for a player 1 and second two bytes for a 
//		player two. The 6th byte has a flash detecting bits. The 7th 
//		byte has a version number.  The 8,9,10,11 bytes has mouse
//		counter state.
//
//		After restart the digidal noice go to SN. After reading some
//		fixed number of packets the cookie going to SN bit. For reading 
//		all bits of cookie we must read towo packets, because one 
//		packet has  16 bits of cookie. After sendig the cookie, the 
//		bits will again return random noice. We can to see the cookie 
//		only once.
//
//		Only we know what information has cookie, and how mucth packets 
//		before reading cookie must be.
//
//		Generator of noice go to next state every DIOR signal, It let 
//		to have different information before cookie and after it.
//
//		After generating a cookie device wait event triger a cookie.
//		We can triger a cookie if we setup sector and cylinder in
//		the device 0. Now after reading a noice we again will see
//		cookie.
// 
//----------------------------------------------------------------------
