# 🔬 Projeto Final - ULA (ALU) com Comparação de Tecnologias
### Final Project - ALU with Technology Comparison

**Autora / Author:** Jaqueline Ferreira de Brito

---

## 📋 Estrutura do Projeto / Project Structure

```
Final_Project/
├── 45nm/                      # Implementação em tecnologia 45nm
│   ├── ULA.tcl               # Script de síntese Genus
│   ├── source/               # Código-fonte ULA.sv e testbench
│   ├── outputs_*/            # Netlists e resultados de simulação
│   ├── reports_*/            # Relatórios de síntese
│   └── gui_schematic_45nm.gif
├── 130nm/                     # Implementação em tecnologia 130nm
│   ├── ULA.tcl               # Script de síntese Genus
│   ├── source/               # Código-fonte ULA.sv e testbench
│   ├── outputs_*/            # Netlists e resultados de simulação
│   ├── reports_*/            # Relatórios de síntese
│   └── gui_schematic_130nm.gif
└── README.md                  # Este arquivo
```

## 🎯 Objetivo / Objective

Implementar uma ULA (Unidade Lógica Aritmética) de 8 bits em SystemVerilog e comparar os resultados de síntese em duas tecnologias diferentes: **45nm** (gscl45nm) e **130nm** (sky130), analisando área, potência e complexidade.

*Implement an 8-bit ALU in SystemVerilog and compare synthesis results in two different technologies: 45nm and 130nm, analyzing area, power, and complexity.*

## 🔧 Especificações da ULA / ALU Specifications

### Entradas / Inputs
- `A[7:0]`, `B[7:0]` - Operandos de 8 bits
- `S[2:0]` - Seletor de operação (3 bits)
- `M` - Modo: 0 = Aritmético, 1 = Lógico

### Saída / Output
- `F[7:0]` - Resultado de 8 bits

### Operações Suportadas / Supported Operations

| M | S[2:0] | Operação |
|---|--------|----------|
| 0 | 000 | A + B |
| 0 | 001 | A - B |
| 0 | 010 | A × B |
| 0 | 011 | A ÷ B |
| 0 | 100 | A - 1 |
| 0 | 101 | B - 1 |
| 0 | 110 | A + ~B |
| 0 | 111 | ~A + B |
| 1 | 000 | ~A |
| 1 | 001 | ~(A \| B) - NOR |
| 1 | 010 | ~(A & B) - NAND |
| 1 | 011 | ~(A ^ B) - XNOR |
| 1 | 100 | A & B - AND |
| 1 | 101 | A \| B - OR |
| 1 | 110 | A ^ B - XOR |
| 1 | 111 | ~B |

---

## 📊 Resultados da Síntese / Synthesis Results

### Comparação 45nm vs 130nm

| Métrica / Metric | 45nm (gscl45nm) | 130nm (sky130) | Diferença / Difference |
|------------------|-----------------|----------------|------------------------|
| **Área Total / Total Area** | 1.526,164 | 4.265,967 | **64% menor / smaller (45nm)** |
| **Células / Cell Count** | 493 | 362 | 36% mais / more (45nm) |
| **Potência Total / Total Power** | 144,873 µW | 317,009 µW | **54% menor / less (45nm)** |
| **Leakage Power** | 6,922 µW (4,78%) | 1,748 µW (0,55%) | **91% maior / higher (45nm)** |
| **Internal Power** | 79,713 µW (55,02%) | 159,606 µW (50,35%) | 50% menor / less (45nm) |
| **Switching Power** | 58,239 µW (40,20%) | 155,654 µW (49,10%) | 63% menor / less (45nm) |

### Análise por Tipo de Célula / Cell Type Analysis

**45nm:**
- Inversores / Inverters: 5,9% da área
- Buffers: 11,8% da área
- Lógica / Logic: 82,3% da área
- 493 células totais incluindo: FAX1 (43), MUX2X1 (41), AND2X1 (62), OAI21X1 (60)

**130nm:**
- Inversores / Inverters: 7,5% da área
- Lógica / Logic: 92,5% da área
- 362 células totais incluindo: ADDFX1 (34), NAND2X1 (58), CLKXOR2X1 (31)

---

## 🔍 Análise das Tecnologias / Technology Analysis

### Tecnologia 130nm

**Características:**
- 📅 Introdução: Início dos anos 2000
- 📏 Transistores maiores e mais robustos
- ⚡ Maior consumo de energia
- 🐌 Velocidade menor comparada a tecnologias avançadas
- 💰 Custo de produção mais baixo

**Aplicações Típicas:**
- Sensores e dispositivos IoT
- Controle automotivo (ABS, airbags)
- Eletrônica industrial e médica
- Sistemas de longa duração e alta confiabilidade
- Aplicações espaciais e industriais

**Vantagens:**
- ✅ Mais robusto (menor vazamento de corrente)
- ✅ Menor custo de fabricação
- ✅ Ideal para ambientes extremos
- ✅ Confiabilidade comprovada

### Tecnologia 45nm

**Características:**
- 📅 Introdução: Final dos anos 2000
- 📏 Alta densidade de transistores
- ⚡ Consumo de energia reduzido
- 🚀 Transistores mais rápidos
- 💰 Custo de fabricação mais alto

**Aplicações Típicas:**
- Dispositivos móveis (smartphones, tablets)
- Computação de alto desempenho
- Inteligência Artificial e Machine Learning
- Eletrônicos de consumo (TVs, consoles)
- Dispositivos de rede e comunicação

**Vantagens:**
- ✅ 54% menor consumo de potência total
- ✅ 64% menor área total
- ✅ Maior densidade de transistores
- ✅ Melhor para aplicações modernas de alto desempenho

---

## 📈 Principais Conclusões / Key Findings

### Trade-offs de Design / Design Trade-offs

1. **Densidade vs Robustez:** 45nm oferece mais células em menos área, mas 130nm é mais robusto com menor leakage.

2. **Potência:** 45nm consome menos energia total, mas tem maior proporção de leakage (4,78% vs 0,55%).

3. **Complexidade:** 45nm permite portas lógicas mais complexas (FAX1, MUX2X1), enquanto 130nm usa mais portas simples.

4. **Escolha de Tecnologia:**
   - **45nm:** Para dispositivos modernos com restrições de potência e espaço
   - **130nm:** Para aplicações que requerem confiabilidade e operam em condições extremas

### Impacto na ULA / Impact on ALU

- A ULA implementada em 45nm ocupa **64% menos área** mas usa **36% mais células**
- O consumo de potência é **54% menor** em 45nm
- O vazamento de corrente (leakage) é **9x maior** em 45nm devido aos transistores menores
- 45nm utiliza células mais complexas (full adders, multiplexers)
- 130nm utiliza células mais simples mas em maior área física

---

## 🚀 Como Executar / How to Run

### Síntese no Genus / Synthesis in Genus

```bash
cd 45nm  # ou/or 130nm
genus -f ULA.tcl
```

O script TCL executa / The TCL script performs:
1. Configuração da biblioteca / Library setup
2. Leitura do HDL / HDL read
3. Elaboração do design / Design elaboration
4. Síntese / Synthesis
5. Geração de relatórios (área, potência, gates) / Report generation

### Simulação no Xcelium / Simulation in Xcelium

```bash
cd 45nm/source  # ou/or 130nm/source
xrun ULA.sv ULA_tb.sv
```

### Comandos Úteis Genus / Useful Genus Commands

```tcl
check_design           # Verifica integridade do design
report_area            # Relatório de área
report_power           # Relatório de potência
report_gates           # Relatório de células/portas
report_timing          # Relatório de timing
```

---

## 📚 Referências / References

**Bibliotecas utilizadas / Libraries used:**
- gscl45nm (45nm Generic Standard Cell Library)
- sky130_ff_1.98_0 (SkyWater 130nm PDK)

**Ferramentas / Tools:**
- Cadence Genus Synthesis Solution 21.10
- Cadence Xcelium Simulator

**Condições de operação / Operating conditions:**
- 45nm: typical (balanced_tree)
- 130nm: ff_1.98_0 (balanced_tree)

---

## 💡 Conclusão / Conclusion

Este projeto demonstra claramente como a escolha da tecnologia de fabricação impacta significativamente as características do circuito final. 

**Em 45nm:** Obtemos um design mais compacto e eficiente em termos de potência, ideal para dispositivos portáteis e aplicações que requerem alta densidade de integração.

**Em 130nm:** Obtemos um design mais robusto com menor vazamento de corrente, ideal para aplicações industriais, automotivas e de longa duração.

A escolha entre as tecnologias deve considerar:
- Restrições de área e potência
- Ambiente de operação
- Requisitos de confiabilidade
- Custo de fabricação
- Volume de produção

---

*This project clearly demonstrates how the choice of manufacturing technology significantly impacts the final circuit characteristics. The 45nm technology offers advantages in terms of area and power consumption, being ideal for modern applications. The 130nm technology remains relevant in applications that prioritize robustness and reliability.*

---

**⭐ Desenvolvido como parte do curso de Arquitetura ASIC e FPGA**

*Developed as part of the ASIC and FPGA Architecture course*
