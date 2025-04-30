// Aluna: Jaqueline Ferreira de Brito

// Testbench Modulo ULA (Unidade Lógica Aritmética)

module ULA_tb;

    logic [7:0] A, B;       // Entradas de 8 bits da ULA
    logic [2:0] S;          // Entrada de 3 bits para escolher as operações da ULA
    logic M;                // Entrada de 1 bit para selecionar entre as operações de função lógica = 1 e operações aritméticas = 0 
    logic [7:0] F;          // Saída de 8 bits da ULA, apresentando os resultados
    
    // Auto-verificação para checagem se as funções da ULA estão corretas
    logic [7:0] expected;   // É o valor calculado manualmente (esperado) para comparação.
    logic error_flag;       // É usado para indicar se algum erro foi encontrado durante os testes.

    // Instância da ULA
    ULA ula (
        .A(A),
        .B(B),
        .S(S),
        .M(M),
        .F(F)
    );

    // Modo lógico (M = 1): Testa operações bit a bit como AND, OR, XOR, etc.
    // Modo aritmético (M = 0): Testa operações como soma, subtração, multiplicação, etc.
    // Comparação de resultados: O valor calculado manualmente (expected) é comparado com a saída da ULA (F).
    // Detecção de erros: Se houver discrepância, a flag de erro é ativada e reportada.

    // Variáveis de controle para os testes

    logic [7:0] i; //Contador para os testes lógicos e aritméticos. 

    // Bloco initial para Testes
    initial begin

        // Teste para todas as operações lógicas (M = 1) e aritméticas (M = 0)
        i = 0;        
        A = 8'b0;
        B = 8'b0;
        S = 3'b0;           // Inicializa com a operação desejada
        M = 1'b0; 
        expected = 8'd0;
        error_flag = 0;     // Inicializa a flag de erro como 0
        #1;                 // ciclo antes de iniciar as operações da ULA para deixar o F em 00.   
        A = 8'b00011001;
        B = 8'b11100110;


        // Testando o Modo Lógico (M = 1)
        // O modo lógico é ativado com M = 1.
        // O loop for itera 8 vezes (0 a 7), cobrindo todas as combinações de S(3 bits).
        // A operação esperada é calculada usando case (S).
        // Se F ≠ expected, um erro é detectado e reportado

        
        $display("Testando operações lógicas (M = 1): Tempo = %0t, i = %0d, S = %b,  M = %b, Esperado = %h, F = %h", $time, i, S, M, expected, F);
        M = 1;        
        for (i = 0; i < 8; i++) begin            
            S = i;                   
            case (S)
                3'b000: expected = ~A;          // NOT A
                3'b001: expected = ~(A | B);    // NOR
                3'b010: expected = ~(A & B);    // NAND
                3'b011: expected = ~(A ^ B);    // XNOR
                3'b100: expected = A & B;       // AND
                3'b101: expected = A | B;       // OR
                3'b110: expected = A ^ B;       // XOR
                3'b111: expected = ~B;          // NOT B
                default: expected = 8'd0;
            endcase
            #5;

            // Verificando se F foi calculado corretamente
            // Debugando a comparação
            // $display("Debug constante: i = %d | S = %b | M = %b | F = %b | Esperado = %b", i, S, M, F, expected);
           
            if (F != expected) begin
                $display("Erro detectado no modo lógico: M = %b, S = %b, A = %h, B = %h, F = %h, Esperado = %h", 
                         M, S, A, B, F, expected);
                error_flag = 1;
            end
        end

        // Testando o Modo Aritmético (M = 0)        
        // O modo aritmético é ativado com M = 0.
        // Semelhante ao modo lógico, o loop varre todas as combinações de S(3 bits).
        // Cada operação esperada é calculada dentro do case.
        $display("Testando operações Artiméticas (M = 0): Tempo = %0t, i = %0d, S = %b,  M = %b, Esperado = %h, F = %h", $time, i, S, M, expected, F);
        M = 0;
        for (i = 0; i < 8; i++) begin            
            S = i;            
            case (S)
                3'b000: expected = A + B;                       // SOMA
                3'b001: expected = A - B;                       // SUBTRAÇÃO
                3'b010: expected = A * B;                       // MULTIPLICAÇÃO
                3'b011: expected = (B != 0) ? A / B : 8'd0;     // DIVISÃO
                3'b100: expected = A - 1;                       // SUBTRAI 1 DE A       
                3'b101: expected = B - 1;                       // SUBTRAI 1 DE B
                3'b110: expected = A + ~B;                      // SOMA A COM O COMPLEMENTO DE B
                3'b111: expected = ~A + B;                      // SOMA O COMPLEMENTO DE A COM B
                default: expected = 8'd0;
            endcase
            #5;
            
            // Verificando se F foi calculado corretamente
            // Debugando a comparação
            // $display("Debug constante: i = %d | S = %b | M = %b | F = %b | Esperado = %b", i, S, M, F, expected);
            

            if (F != expected) begin
                $display("Erro detectado no modo aritmético: M = %b, S = %b, A = %h, B = %h, F = %h, Esperado = %h", 
                         M, S, A, B, F, expected);
                error_flag = 1;
                
            end
        end

        // Finaliza o teste
        if (!error_flag) begin
            $display("Todos os testes passaram com sucesso!");
        end else begin
            $display("Erros detectados durante os testes.");
        end

        $display("Tempo = %0t, M = %b, S = %b, F = %h, expected = %h", $time, M, S, F, expected);
        
        $stop;                      
    end

    // Monitoramento Contínuo
    initial begin
        // $monitor exibe continuamente os valores das variáveis em tempo de simulação.
        $monitor("Tempo = %2t | A = %b | B = %b | i = %b | S = %b | M = %b | F = %b | Esperado = %b", $time, A, B, i, S, M, F, expected);
        
    end

endmodule
