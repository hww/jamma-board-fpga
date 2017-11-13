//--------------------------------------------------------------
//
// VGA Input system
//
//--------------------------------------------------------------

//--------------------------------------------------------------
//
//  This component is VGA pixel counter. One take vsync and 
//  hsync sygnals and count try all lines, another thing is 
//  going try all memory address by clk signal.
//
//--------------------------------------------------------------

module vga ( clk, video, hsync, vsync, dVga, aVga, wrVga, wrVgaReq );
    
    // Pins
    input   clk;                    // 25 mhz pixel clock
    input   hsync, vsync;           // input horisontal and vertical sync
    output  wrVga;                  // signal for saving pixels to memory 
    input   wrVgaReq;               // finish write data to memory
    input   video;                  // video input
    output  [7:0] dVga;             // output video data
    output  [15:0] aVga;            // output of address

    // Variables
    reg     [6:0] h;                // horizontal address 0-127 because only 100 column max
    reg     [8:0] v;                // vertical address 0-511 because maximum is 525 lines
    reg     [3:0] pixel;            // pixel counter
    reg     [7:0] shifter;          // video shifter

//--------------------------------------------------------------
//
//  Pixel counter
//
//--------------------------------------------------------------

always @ ( posedge clk or posedge hsync)
begin
    if (hsync)
        pixel <= 0;                 // pixel counter is 0
    else 
        pixel <= pixel + 1;         // goto next pixel
end

assign wrVga = (pixel == 7);         // if last (7th) pixel

//--------------------------------------------------------------
//
//  Horizontal counter
//
//--------------------------------------------------------------
     
always @ ( posedge clk or posedge hsync)
begin
    if (hsync)
        h <= 0;                     // horizontal counter is 0
    else if (wrVgaReq)
        h <= h + 1;                 // count horizontal counter
end

assign aVga[6:0] = h;

//--------------------------------------------------------------
//
//  Vertical counter
//
//--------------------------------------------------------------

always @ ( posedge hsync or posedge vsync)
begin
    if (vsync)
        v <= 0;                     // vertical counter is 0
    else if (v != 9'b111111111)
        v <= v + 1;                 // count vertical counter
end

assign aVga[15:7] = v;

//--------------------------------------------------------------
//
//  Video shifter
//
//--------------------------------------------------------------

always @ ( posedge clk )
begin
    shifter <= { shifter[6:0], video }; // shift video data
end

assign dVga = shifter;

endmodule

/*
|  "640 x 350 (EGA on VGA)"    "640 x 400 VGA text"        "VGA industry standard"
|  Clock frequency 25.175 MHz  Clock frequency 25.175 MHz  Clock frequency 25.175 MHz
|  Line  frequency 31469 Hz    Line  frequency 31469 Hz    Line  frequency 31469 Hz
|  Field frequency 70.086 Hz   Field frequency 70.086 Hz   Field frequency 59.94 Hz
|  
|  One line:                   One line:                   One line:
|    8 pixels front porch        8 pixels front porch        8 pixels front porch
|   96 pixels horizontal sync   96 pixels horizontal sync   96 pixels horizontal sync
|   40 pixels back porch        40 pixels back porch        40 pixels back porch
|    8 pixels left border        8 pixels left border        8 pixels left border
|  640 pixels video            640 pixels video            640 pixels video
|    8 pixels right border       8 pixels right border       8 pixels right border
|  ---                         ---                         ---
|  800 pixels total per line   800 pixels total per line   800 pixels total per line                             
|  
|  One field:                  One field:                  One field:
|   31 lines front porch         5 lines front porch         2 lines front porch
|    2 lines vertical sync       2 lines vertical sync       2 lines vertical sync
|   54 lines back porch         28 lines back porch         25 lines back porch
|    6 lines top border          7 lines top border          8 lines top border
|  350 lines video             400 lines video             480 lines video
|    6 lines bottom border       7 lines bottom border       8 lines bottom border
|  ---                         ---                         ---
|  449 lines total per field   449 lines total per field   525 lines total
|  per field                                                           
|  
|  Sync polarity: H positive,  Sync polarity: H negative,  Sync polarity: H negative,
|                 V negative                  V positive                  V negative
|  Scan type: non interlaced.  Scan type: non interlaced.  Scan type: non interlaced
*/
