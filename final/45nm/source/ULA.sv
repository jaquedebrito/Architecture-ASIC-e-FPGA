// Aluna: Jaqueline Ferreira de Brito

// Modulo ULA (Unidade Lógica Aritmética)
module ULA (

	 //inputs
	 input logic [7:0] A, B, 	// Entradas de 8 bits que alimentam a ULA
	 input logic [2:0] S,		// Seleção de Operação, com 3 bits. 
	 input logic M,				// M é o modo de operação, onde M = 1 ativa as operações lógicas e M = 0 ativa as operações aritméticas.

	 //outputs
	 output logic [7:0] F 		// Saída de 8 bits da ULA, que é o resultado da operação realizada.
	);
 	
	//Lógica combinacional para gerar as operações da ULA
	always_comb begin

		//O valor de F depende de S e M, portanto, precisa ser calculado com base neles case (M)
		case (M) 

			1'b1: begin	// M = 1 (Função Lógica) 
				case (S)
					3'b000: F = ~A; 		// NOT A
					3'b001: F = ~(A | B);	// NOR
				 	3'b010: F = ~(A & B);	// NAND
				 	3'b011: F = ~(A ^ B);	// XNOR
				 	3'b100: F = A & B;		// AND
				 	3'b101: F = A | B;		// OR
				 	3'b110: F = A ^ B;		// XOR
				 	3'b111: F = ~B;			// NOT B
				 	default: F = 8'd0;
				endcase
			end

			1'b0: begin // M = 0 (Operações Aritméticas)
				case(S)
				 	3'b000: F = A + B;		// SOMA
				 	3'b001: F = A - B;		// SUBTRAÇÃO
				 	3'b010: F = A * B;		// MULTIPLICAÇÃO
				 	3'b011: F = (B != 0) ? A / B : 8'd0;	// DIVISÃO, verificação para evitar divisão por zero
				 	3'b100: F = A - 1;		// SUBTRAI 1 DE A 
				 	3'b101: F = B - 1;		// SUBTRAI 1 DE B
				 	3'b110: F = A + ~B;		// SOMA A COM O COMPLEMENTO DE B
				 	3'b111: F = ~A + B;		// SOMA O COMPLEMENTO DE A COM B
				 	default: F = 8'd0;
			 	endcase
			end
			default: F = 8'd0; // Caso de erro para M
		endcase
	end

	// Monitoramento do valor das variáveis durante a simulação
	initial begin
        $monitor("Tempo: %t | A=%b | B=%b | S=%b | M=%b | F=%b", $time, A, B, S, M, F);
    end

// Fim do modulo
endmodule 





	

