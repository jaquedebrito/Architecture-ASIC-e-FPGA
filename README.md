# 💡 Architecture ASIC & FPGA - Educational Repository
### *Arquitetura ASIC e FPGA - Repositório Educacional*

[![SystemVerilog](https://img.shields.io/badge/SystemVerilog-Hardware-blue.svg)](https://www.systemverilog.io/)
[![License](https://img.shields.io/badge/License-Educational-green.svg)]()

> **English** | [Português](#português)

---

## 📋 Table of Contents

- [Overview](#overview)
- [Repository Structure](#repository-structure)
- [Projects](#projects)
  - [LUT Implementations](#lut-implementations)
  - [ALU Final Project](#alu-final-project)
- [Technology Comparison](#technology-comparison)
- [Learning Objectives](#learning-objectives)
- [How to Use](#how-to-use)
- [Additional Resources](#additional-resources)
- [Author](#author)
- [Português](#português)

---

## 🎯 Overview

This educational repository contains practical implementations and comparative studies of digital circuits designed for both **ASIC (Application-Specific Integrated Circuit)** and **FPGA (Field-Programmable Gate Array)** technologies. The work focuses on understanding the trade-offs between different semiconductor manufacturing processes, specifically comparing 45nm and 130nm technologies.

### Key Features

- ✅ SystemVerilog hardware descriptions
- ✅ Comparative analysis of 45nm vs 130nm technologies
- ✅ Complete synthesis reports and power analysis
- ✅ LUT (Look-Up Table) implementations
- ✅ Full-featured ALU (Arithmetic Logic Unit) design
- ✅ Educational documentation in Portuguese

---

## 📁 Repository Structure

```
Architecture-ASIC-e-FPGA/
├── Final_Project/          # Main ALU project with technology comparisons
│   ├── 45nm/              # 45nm technology implementation
│   │   ├── source/        # ULA.sv and testbench
│   │   ├── outputs/       # Synthesis outputs
│   │   └── reports/       # Area, power, and gate reports
│   ├── 130nm/             # 130nm technology implementation
│   │   ├── source/        # ULA.sv and testbench
│   │   ├── outputs/       # Synthesis outputs
│   │   └── reports/       # Area, power, and gate reports
│   └── README.md          # Detailed project documentation
├── LUT_2/                 # 2-input Look-Up Table implementation
├── LUT3/                  # 3-input Look-Up Table implementation
├── LUT_2_e_LUT_3/        # Combined LUT2 and LUT3 implementation
└── README.md              # This file
```

---

## 🔧 Projects

### LUT Implementations

The repository includes implementations of configurable Look-Up Tables:

- **LUT2**: 2-input LUT with 4-bit configuration
- **LUT3**: 3-input LUT with 8-bit configuration
- **LUT2_e_LUT3**: Combined implementation

These are fundamental building blocks in FPGA architectures, demonstrating how programmable logic is implemented at the hardware level.

### ALU Final Project

The main project is an 8-bit Arithmetic Logic Unit (ALU) supporting:

**Arithmetic Operations (M=0):**
- Addition (A + B)
- Subtraction (A - B)
- Multiplication (A × B)
- Division (A ÷ B)
- Decrement operations
- Complement operations

**Logic Operations (M=1):**
- NOT, AND, OR, XOR
- NAND, NOR, XNOR

The ALU was synthesized using both 45nm and 130nm technology libraries to demonstrate the impact of process technology on circuit performance.

---

## 📊 Technology Comparison

### Summary of 45nm vs 130nm Results

| Characteristic | 45nm (gscl45nm) | 130nm (sky130) | Winner |
|----------------|-----------------|----------------|---------|
| **Total Area** | 1,526 units | 4,266 units | ✅ 45nm (64% smaller) |
| **Cell Count** | 493 cells | 362 cells | 130nm (fewer cells) |
| **Total Power** | 144.9 µW | 317.0 µW | ✅ 45nm (54% less) |
| **Leakage Power** | 4.78% | 0.55% | ✅ 130nm (more robust) |
| **Density** | High | Low | ✅ 45nm |
| **Complexity** | Complex gates | Simple gates | 45nm (more options) |

### Key Findings

1. **45nm Technology Advantages:**
   - ⚡ 54% lower total power consumption
   - 📏 64% smaller total area
   - 🚀 Higher transistor density
   - 🎯 Better for modern, high-performance applications

2. **130nm Technology Advantages:**
   - 💪 More robust (lower leakage)
   - 💰 Lower manufacturing cost
   - 🛡️ Better for harsh environments
   - ⏱️ Proven reliability for industrial applications

3. **Design Trade-offs:**
   - The 45nm design uses more cells (493 vs 362) but achieves smaller total area
   - Leakage power is higher in 45nm (4.78% vs 0.55%) due to smaller transistors
   - 130nm is ideal for cost-sensitive, reliability-critical applications
   - 45nm is ideal for performance-critical, power-constrained applications

---

## 🎓 Learning Objectives

By exploring this repository, you will:

- ✅ Understand the fundamental differences between ASIC and FPGA design flows
- ✅ Learn how semiconductor process technology (45nm vs 130nm) affects circuit characteristics
- ✅ Analyze trade-offs between area, power, and performance
- ✅ Understand LUT-based programmable logic implementation
- ✅ Design and verify digital circuits using SystemVerilog
- ✅ Interpret synthesis reports for area, power, and timing analysis

---

## 🚀 How to Use

### Prerequisites

- Cadence Genus (for synthesis)
- Cadence Xcelium (for simulation)
- SystemVerilog-compatible simulator
- Technology libraries: gscl45nm and sky130

### Running Simulations

For LUT designs:
```bash
cd LUT_2
# Run with Xcelium or compatible simulator
xrun lut_2.sv lut_2_tb.sv
```

For ALU project:
```bash
cd Final_Project/45nm/source
# Synthesis with Genus
genus -f ../ULA.tcl

# Simulation with Xcelium
xrun ULA.sv ULA_tb.sv
```

### Synthesis Flow

Each technology folder contains TCL scripts for automated synthesis:
```tcl
# See Final_Project/45nm/ULA.tcl for complete flow
# - Library setup
# - Read HDL
# - Elaborate design
# - Synthesize
# - Generate reports
```

---

## 📚 Additional Resources

This repository includes comprehensive documentation to help you get started:

- **[SUMMARY.md](SUMMARY.md)** - Detailed project summary with insights and conclusions
- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - Quick reference guide with commands and examples
- **[Final_Project/README.md](Final_Project/README.md)** - In-depth ALU project documentation

### Recommended Reading

- SystemVerilog Language Reference Manual
- Cadence Genus and Xcelium documentation
- SkyWater 130nm PDK documentation
- Digital Design and Computer Architecture textbooks

---

## 👤 Author

**Jaqueline Ferreira de Brito**

This repository was created as part of an educational course on ASIC and FPGA design, demonstrating practical implementation and analysis of digital circuits across different semiconductor technologies.

---

## 📝 License

This is an educational repository. Feel free to use for learning purposes.

---

<a name="português"></a>

# 💡 Arquitetura ASIC e FPGA - Repositório Educacional

## 🎯 Visão Geral

Este repositório educacional contém implementações práticas e estudos comparativos de circuitos digitais projetados para tecnologias **ASIC (Application-Specific Integrated Circuit)** e **FPGA (Field-Programmable Gate Array)**. O trabalho foca em entender as diferenças entre diferentes processos de fabricação de semicondutores, especificamente comparando tecnologias de 45nm e 130nm.

## 🔧 Projetos Incluídos

### Implementações de LUT
- **LUT2**: Tabela lookup de 2 entradas com configuração de 4 bits
- **LUT3**: Tabela lookup de 3 entradas com configuração de 8 bits
- Blocos fundamentais em arquiteturas FPGA

### Projeto Final - ULA
ULA (Unidade Lógica Aritmética) de 8 bits suportando:

**Operações Aritméticas (M=0):**
- Adição, Subtração, Multiplicação, Divisão
- Operações de decremento e complemento

**Operações Lógicas (M=1):**
- NOT, AND, OR, XOR, NAND, NOR, XNOR

## 📊 Comparação de Tecnologias

### Resumo dos Resultados 45nm vs 130nm

| Característica | 45nm | 130nm | Vencedor |
|----------------|------|-------|----------|
| **Área Total** | 1.526 unidades | 4.266 unidades | ✅ 45nm (64% menor) |
| **Células** | 493 células | 362 células | 130nm |
| **Potência Total** | 144,9 µW | 317,0 µW | ✅ 45nm (54% menor) |
| **Vazamento** | 4,78% | 0,55% | ✅ 130nm (mais robusto) |

### Principais Conclusões

**Vantagens do 45nm:**
- ⚡ 54% menos consumo de potência
- 📏 64% menor área total
- 🚀 Maior densidade de transistores
- 🎯 Melhor para aplicações modernas de alto desempenho

**Vantagens do 130nm:**
- 💪 Mais robusto (menor vazamento)
- 💰 Menor custo de fabricação
- 🛡️ Melhor para ambientes extremos
- ⏱️ Confiabilidade comprovada para aplicações industriais

## 🎓 Objetivos de Aprendizagem

Ao explorar este repositório, você irá:
- ✅ Entender diferenças entre fluxos de design ASIC e FPGA
- ✅ Aprender como a tecnologia de processo afeta características do circuito
- ✅ Analisar trade-offs entre área, potência e desempenho
- ✅ Compreender implementação de lógica programável baseada em LUT
- ✅ Projetar e verificar circuitos digitais usando SystemVerilog

## 🚀 Como Usar

### Pré-requisitos
- Cadence Genus (para síntese)
- Cadence Xcelium (para simulação)
- Bibliotecas de tecnologia: gscl45nm e sky130

### Simulação
```bash
cd LUT_2
xrun lut_2.sv lut_2_tb.sv
```

### Síntese
```bash
cd Final_Project/45nm/source
genus -f ../ULA.tcl
```

## 👤 Autora

**Jaqueline Ferreira de Brito**

Repositório criado como parte de um curso educacional sobre design de ASIC e FPGA, demonstrando implementação prática e análise de circuitos digitais em diferentes tecnologias de semicondutores.

---

**⭐ Se este repositório foi útil para seus estudos, considere dar uma estrela!**
