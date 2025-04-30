`timescale 1 ps / 1 ps

module lut_2_3_tb;
    logic A, B, Cin;   
    logic S;   
    logic Cout;

   
	
    logic XOR1_out;          
    logic AND1_out, AND2_out, AND3_out; 


    LUT2 #(.INIT(4'h6)) XOR1(.I1(B), .I0(Cin), .O(XOR1_out));

    
    LUT2 #(.INIT(4'h8)) AND1 (.I1(B), .I0(Cin), .O(AND1_out));

    
    LUT2 #(.INIT(4'h8)) AND2 (.I1(B), .I0(A), .O(AND2_out));

    
    LUT2 #(.INIT(4'h8)) AND3 (.I1(A), .I0(Cin), .O(AND3_out));

    // saída S
    LUT2 #(.INIT(4'h6)) XOR_S (.I1(A), .I0(XOR1_out), .O(S));

    // saída Cout
    LUT3 #(.INIT(8'hFE)) OR_Cout (.I2(AND1_out), .I1(AND2_out), .I0(AND3_out), .O(Cout));

    

    initial begin

        $display("A B Cin |    S    |   Cout");
	$display("======= |  =====  |  ====="); 

        
        for (int i = 0; i < 8; i++) begin
            
            {A, B, Cin} = i[1:0]; 
            
            #05; 
            
            
            $display("%b %b %b   |    %b         %b", A, B, Cin, S, Cout);
        end

       
        $finish;
    end
endmodule

