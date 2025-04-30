`timescale 1 ps / 1 ps

module lut_3_tb;
    logic A3, A2, A1, A0; 
    logic Y;  

    logic AND1_OR_out, NAND1_out, NAND2_out, AND2_OR_out;

    // 
    LUT3 #(.INIT(8'h7F)) AND1_OR(.I2(A3), .I1(A2), .I0(A1), .O(AND1_OR_out));
    LUT3 #(.INIT(8'hFE)) NAND1(.I2(A3), .I1(A2), .I0(A0), .O(NAND1_out));
    LUT3 #(.INIT(8'hFE)) NAND2(.I2(A3), .I1(A2), .I0(A1), .O(NAND2_out));
    LUT3 #(.INIT(8'h7F)) AND2_OR(.I2(A3), .I1(A2), .I0(A0), .O(AND2_OR_out));

    assign Y = ~AND1_OR_out | ~NAND1_out | ~NAND2_out | ~AND2_OR_out;

    initial begin
	for (int i = 0; i < 16; i++) begin
            {A3, A2, A1, A0} = i[3:0];  
            #10; 
        end

    end
    // 
    initial begin
        $display("Tempo | A3  A2  A1  A0 |AND1|NAND1|NAND2|AND2 | Y");
	$display("===== | ============== |====|=====|=====|==== | =");
        $monitor("%5t   | %b  %b  %b  %b 	| %b |  %b  |  %b  |  %b  | %b", $time, A3, A2, A1, A0, AND1_OR_out, NAND1_out, NAND2_out, AND2_OR_out, Y);
    end
endmodule

