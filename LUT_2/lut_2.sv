//==============================================================================
// LUT2 - 2-Input Look-Up Table
//==============================================================================
// Description: Configurable 2-input LUT with 4-bit initialization parameter
// Inputs: I0, I1 (2 bits)
// Output: O (1 bit)
// Parameter: INIT (4 bits) - defines the truth table
//==============================================================================

`timescale  1 ps / 1 ps


module LUT2 (O, I0, I1);

    parameter INIT = 4'h08;

    input logic I0, I1;

    output logic O;

    logic [1:0] s; 

    assign s = {I1, I0};

  always_ff @(s) begin
       if ((s[1]^s[0] == 1) || (s[1]^s[0] == 0))
           O = INIT[s];
         else if ((INIT[0] == INIT[1]) && (INIT[2] == INIT[3]) && (INIT[0] == INIT[2])) 
           O = INIT[0];
         else if ((s[1] == 0) && (INIT[0] == INIT[1]))
           O = INIT[0];
         else if ((s[1] == 1) && (INIT[2] == INIT[3])) 
           O = INIT[2];
         else if ((s[0] == 0) && (INIT[0] == INIT[2])) 
           O = INIT[0];
         else if ((s[0] == 1) && (INIT[1] == INIT[3]))
           O = INIT[1];
         else
           O = 1'bx;
  end
endmodule
