`timescale  1 ps / 1 ps

module LUT2 (O, I0, I1);

    parameter INIT = 4'h0;

    input logic I0, I1;

    output logic O;

    logic [1:0] s; 

    assign s = {I1, I0};

  always_ff @(s) begin
       if ((s[1]^s[0] ==1) || (s[1]^s[0] ==0))
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


module LUT3 (O, I0, I1, I2);

    parameter INIT = 8'h00;

    input I0, I1, I2;

    output logic O;

    logic tmp;
  
    always_ff @(  I2 or  I1 or  I0 )  begin
      tmp =  I0 ^ I1  ^ I2;
      if ( tmp == 0 || tmp == 1)
           O = INIT[{I2, I1, I0}];
      else
           O = lut3_mux4 ( {1'b0, 1'b0, lut3_mux4 (INIT[7:4], {I1, I0}),
                          lut3_mux4 (INIT[3:0], {I1, I0}) }, {1'b0, I2});
    end

  function lut3_mux4;
  input [3:0] d;
  input [1:0] s;

  begin
       if ((s[1]^s[0] ==1) || (s[1]^s[0] ==0))
           lut3_mux4 = d[s];
         else if ((d[0] === d[1]) && (d[2] === d[3]) && (d[0] === d[2]))
           lut3_mux4 = d[0];
         else if ((s[1] == 0) && (d[0] === d[1]))
           lut3_mux4 = d[0];
         else if ((s[1] == 1) && (d[2] === d[3]))
           lut3_mux4 = d[2];
         else if ((s[0] == 0) && (d[0] === d[2]))
           lut3_mux4 = d[0];
         else if ((s[0] == 1) && (d[1] === d[3]))
           lut3_mux4 = d[1];
         else
           lut3_mux4 = 1'bx;
   end
   endfunction

endmodule
