# 🚀 Guia Rápido / Quick Reference Guide

## Comandos e Uso / Commands and Usage

---

## 📁 Estrutura de Diretórios / Directory Structure

```
Architecture-ASIC-e-FPGA/
│
├── README.md              # Documentação principal
├── SUMMARY.md            # Resumo detalhado do projeto
├── QUICK_REFERENCE.md    # Este arquivo
│
├── LUT_2/               # LUT de 2 entradas
│   ├── lut_2.sv
│   └── lut_2_tb.sv
│
├── LUT3/                # LUT de 3 entradas
│   ├── lut_3.sv
│   └── lut_3_tb.sv
│
├── LUT_2_e_LUT_3/      # LUTs combinadas
│   ├── lut2_e_3.sv
│   └── lut2_e_3_tb.sv
│
└── Final_Project/       # Projeto principal - ULA
    ├── README.md        # Documentação do projeto
    ├── 45nm/           # Implementação 45nm
    │   ├── ULA.tcl
    │   └── source/
    │       ├── ULA.sv
    │       └── ULA_tb.sv
    └── 130nm/          # Implementação 130nm
        ├── ULA.tcl
        └── source/
            ├── ULA.sv
            └── ULA_tb.sv
```

---

## ⚡ Comandos Rápidos / Quick Commands

### Simulação / Simulation

```bash
# Simular LUT2
cd LUT_2
xrun lut_2.sv lut_2_tb.sv

# Simular LUT3
cd LUT3
xrun lut_3.sv lut_3_tb.sv

# Simular ULA 45nm
cd Final_Project/45nm/source
xrun ULA.sv ULA_tb.sv

# Simular ULA 130nm
cd Final_Project/130nm/source
xrun ULA.sv ULA_tb.sv
```

### Síntese / Synthesis

```bash
# Sintetizar ULA 45nm
cd Final_Project/45nm
genus -f ULA.tcl

# Sintetizar ULA 130nm
cd Final_Project/130nm
genus -f ULA.tcl
```

---

## 🎯 ULA - Tabela de Operações / ALU Operations Table

### Operações Aritméticas (M=0)

| S[2:0] | Operação | Descrição |
|--------|----------|-----------|
| 000 | F = A + B | Adição |
| 001 | F = A - B | Subtração |
| 010 | F = A × B | Multiplicação |
| 011 | F = A ÷ B | Divisão (com proteção /0) |
| 100 | F = A - 1 | Decremento A |
| 101 | F = B - 1 | Decremento B |
| 110 | F = A + ~B | A + Complemento B |
| 111 | F = ~A + B | Complemento A + B |

### Operações Lógicas (M=1)

| S[2:0] | Operação | Descrição |
|--------|----------|-----------|
| 000 | F = ~A | NOT A |
| 001 | F = ~(A \| B) | NOR |
| 010 | F = ~(A & B) | NAND |
| 011 | F = ~(A ^ B) | XNOR |
| 100 | F = A & B | AND |
| 101 | F = A \| B | OR |
| 110 | F = A ^ B | XOR |
| 111 | F = ~B | NOT B |

---

## 📊 Comparação Rápida 45nm vs 130nm

| Aspecto | 45nm | 130nm |
|---------|------|-------|
| **Área** | 1.526 ⭐ | 4.266 |
| **Potência** | 144.9 µW ⭐ | 317.0 µW |
| **Células** | 493 | 362 ⭐ |
| **Leakage %** | 4.78% | 0.55% ⭐ |
| **Densidade** | Alta ⭐ | Baixa |
| **Robustez** | Média | Alta ⭐ |
| **Custo** | Alto | Baixo ⭐ |

⭐ = Melhor neste aspecto

---

## 🔧 Comandos Genus / Genus Commands

```tcl
# Configurar biblioteca
set_db init_lib_search_path <path>
read_libs <library.lib>

# Ler design
read_hdl <file.sv>

# Elaborar
elaborate <module_name>

# Síntese
syn_generic
syn_map
syn_opt

# Relatórios
check_design
report_area
report_power
report_gates
report_timing

# Exportar
write_hdl > netlist.v
```

---

## 🧪 Comandos Xcelium / Xcelium Commands

```bash
# Compilar e simular
xrun file.sv

# Com GUI
xrun -gui file.sv

# Com coverage
xrun -coverage all file.sv

# Com waves
xrun -access +rw file.sv

# Múltiplos arquivos
xrun file1.sv file2.sv testbench.sv
```

---

## 📝 Template de Testbench

```systemverilog
`timescale 1ns/1ps

module tb_module;
    // Sinais
    logic [7:0] A, B;
    logic [2:0] S;
    logic M;
    logic [7:0] F;
    
    // Instância do módulo
    ULA dut (
        .A(A),
        .B(B),
        .S(S),
        .M(M),
        .F(F)
    );
    
    // Estímulos
    initial begin
        // Inicialização
        A = 8'd0; B = 8'd0;
        S = 3'd0; M = 1'b0;
        
        // Testes
        #10 A = 8'd5; B = 8'd3; S = 3'd0; M = 1'b0; // ADD
        #10 S = 3'd1; // SUB
        
        // Finalizar
        #100 $finish;
    end
    
    // Monitor
    initial begin
        $monitor("T=%0t A=%d B=%d S=%b M=%b F=%d", 
                 $time, A, B, S, M, F);
    end
endmodule
```

---

## 💡 Dicas / Tips

### Para Síntese
- ✅ Use always_comb para lógica combinacional
- ✅ Evite latches não intencionais
- ✅ Especifique todos os casos em case statements
- ✅ Use parâmetros para configurabilidade

### Para Simulação
- ✅ Use $monitor para debug
- ✅ Adicione delays entre estímulos
- ✅ Teste casos extremos
- ✅ Verifique operações com zero

### Para Documentação
- ✅ Comente interfaces de módulos
- ✅ Explique algoritmos complexos
- ✅ Documente parâmetros e constantes
- ✅ Inclua exemplos de uso

---

## 🐛 Debug Comum / Common Debug

### Erro: "Unable to elaborate"
```
Solução: Verifique se todos os módulos estão definidos
```

### Erro: "Unresolved reference"
```
Solução: Verifique se a biblioteca foi carregada corretamente
```

### Warning: "Inferred latch"
```
Solução: Complete todos os cases ou adicione default
```

### Erro: "Division by zero"
```
Solução: Já tratado na ULA com ternário (B != 0) ? A/B : 0
```

---

## 📚 Recursos / Resources

### Documentação Online
- SystemVerilog LRM
- Cadence Online Documentation
- SkyWater PDK Docs

### Tutoriais Recomendados
- "RTL Coding Guidelines"
- "Low Power Design Techniques"
- "Synthesis Best Practices"

---

## ⌨️ Atalhos Úteis / Useful Shortcuts

### Genus
- `Ctrl+C` - Interromper comando
- `Ctrl+D` - Sair
- `↑/↓` - Histórico de comandos

### Xcelium (GUI)
- `Ctrl+R` - Run
- `Ctrl+S` - Stop
- `F5` - Step

---

## 🎓 Checklist de Projeto / Project Checklist

- [ ] Especificação clara
- [ ] Código SystemVerilog escrito
- [ ] Testbench criado
- [ ] Simulação funcional OK
- [ ] Síntese executada
- [ ] Relatórios analisados
- [ ] Documentação atualizada
- [ ] Código comentado

---

## 📞 Comandos Git / Git Commands

```bash
# Ver status
git status

# Ver diferenças
git diff

# Adicionar arquivos
git add .

# Commit
git commit -m "Mensagem"

# Push
git push origin main

# Ver histórico
git log --oneline
```

---

**🎯 Use este guia como referência rápida durante o desenvolvimento!**
