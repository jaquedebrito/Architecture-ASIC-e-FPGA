`timescale  1ps/1ps

module lut_2_tb;

   
    logic A, B, C, D;
    logic NAND1_out, NAND2_out, NAND3_out, X;
  
    LUT2 #(.INIT(4'b1110)) NAND1(.I0(A), .I1(B), .O(NAND1_out));
    LUT2 #(.INIT(4'b1110)) NAND2(.I0(NAND1_out), .I1(C), .O(NAND2_out));
    LUT2 #(.INIT(4'b1110)) NAND3(.I0(C), .I1(D), .O(NAND3_out));
    
    LUT2 #(.INIT(4'b1000)) NOR_X(.I0(NAND3_out), .I1(NAND2_out), .O(X));

        
    initial begin
              
        for (int i = 0; i < 16; i++) begin
    	    A = i[3];
	    B = i[2];
	    C = i[1];
	    D = i[0];
    	    #5; 
	end
    end

    initial begin
	$display("			Tempo |         A B C D |NAND1|NAND2|NAND3|NOR_X");
        $display("			===== |         ========|=====|=====|=====|=====");
        $monitor("	%t   	        %b %b %b %b    %b     %b     %b     %b", $time, A, B, C, D, NAND1_out, NAND2_out, NAND3_out, X);
    end

endmodule

