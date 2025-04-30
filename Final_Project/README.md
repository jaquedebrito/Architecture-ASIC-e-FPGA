================================================================================
*********************** Aluna: Jaqueline Ferreira de Brito *********************
================================================================================

Segue as explicações sobre o processo de execução desse projeto e as tecnologias.

********************************************************************************
============================== * Projeto Final * ===============================
================================================================================
********************************************************************************
1 - Criei os arquivos .sv e testbench
2 - Abaixo segue uma pesquisa que descreve o periodo que surge, vantagens e desvantagens, e a comparação das tecnologias.
3 - Comparação das tecnologias executadas no GENUS e no Xcelium.
4 - Dentro da pasta de cada tecnologia tem o arquivo TCL de sua respectiva execução e dentro da pasta source está a ULA e o testbench da ULA.
5 - Dentro das pastas Outputs está a netlist com os arquivos de execução do Xcelium.

====================== Análise das tecnologias =================================

As tecnologias de semicondutores de 45nm e 130nm representam diferentes gerações no processo de fabricação de circuitos integrados (ICs). 
Cada uma delas tem suas características, vantagens e desvantagens, sendo utilizada em diferentes tipos de dispositivos e aplicações. 

*********************** Tecnologia de 130nm ************************************

	Características:

	    Data de introdução: Primeira metade dos anos 2000.
	    Dimensão maior dos transistores: Mais robusta e menos densa.
	    Consumo de energia: Relativamente maior devido à área dos transistores.
	    Velocidade: Menor em comparação com tecnologias mais avançadas (como 45nm).
	    Custo: Mais barato para produção em baixa escala; a infraestrutura de fabricação é mais acessível.

	Usos típicos:

	    Sensores e dispositivos IoT:
		Sensores de temperatura, pressão e dispositivos de leitura de dados simples.
		Exemplo: Chips de controle em termostatos ou medidores de energia elétrica.

	    Controle Automotivo:
		Circuitos de controle para motores e sistemas de segurança como airbags.
		Exemplo: Microcontroladores usados em sistemas de freio ABS.

	    Eletrônica industrial e médica:
		Equipamentos de diagnóstico e monitoramento simples.
		Exemplo: Controladores de dispositivos médicos portáteis.

	    Produtos de longa duração e alta confiabilidade:
		Sistemas que operam em ambientes extremos, como aplicações espaciais e industriais.
		Exemplo: Controladores para satélites e equipamentos em fábricas.

*********************** Tecnologia de 45nm ************************************

	Características:

	    Data de introdução: Segunda metade dos anos 2000.
	    Dimensão menor dos transistores: Alta densidade e maior eficiência.
	    Consumo de energia: Reduzido em relação à tecnologia de 130nm.
	    Velocidade: Transistores mais rápidos devido à menor capacitância e menor comprimento de canal.
	    Custo: Mais caro de fabricar devido à complexidade do processo.

	Usos típicos:

	    Dispositivos móveis e portáteis:
		Smartphones, tablets e wearables.
		Exemplo: Processadores de smartphones de primeira geração (como ARM Cortex A9).

	    Computação de alto desempenho:
		Chips para servidores e PCs.
		Exemplo: Processadores Intel Core 2 e AMD Phenom.

	    Aplicações em inteligência artificial (IA):
		Aceleradores de IA e chips para aprendizado de máquina.
		Exemplo: FPGAs e ASICs usados para reconhecimento de padrões.

	    Sistemas embutidos em eletrônicos de consumo:
		Televisores, consoles de jogos e dispositivos de automação residencial.
		Exemplo: Processadores usados em TVs inteligentes.

	    Dispositivos de rede e comunicação:
		Roteadores, switches e modems.
		Exemplo: Chips de processamento de dados em redes 4G.

*********************** Comparação e escolha da tecnologia *********************

	    130nm:
		Vantagem: Robustez, simplicidade de design e custo mais baixo para aplicações menos exigentes.
		Desvantagem: Maior consumo de energia e desempenho inferior.
		Ideal para: Dispositivos que não requerem alta performance ou eficiência energética extrema.

	    45nm:
		Vantagem: Alta eficiência energética, menor tamanho e maior performance.
		Desvantagem: Processo de fabricação mais caro e complexo.
		Ideal para: Dispositivos modernos que precisam de alta densidade de transistores e baixo consumo.

***Tendências e futuro

Embora ambas as tecnologias ainda sejam amplamente utilizadas, os processos mais avançados, como 7nm, 5nm e 3nm, são empregados em aplicações de ponta. No entanto, as tecnologias de 130nm e 45nm continuam sendo úteis em nichos onde simplicidade, custo ou robustez são mais importantes do que miniaturização ou eficiência máxima.

===================== * Resposta das analises das tecnologias * ================
================================================================================

O uso de uma Unidade Lógica e Aritmética (ULA) em tecnologias de fabricação diferentes, como 130 nm e 45 nm, 
tem implicações significativas em diversos aspectos do projeto de hardware. 
As diferenças principais estão relacionadas à densidade de transistores, consumo de energia, desempenho e custo. 

		1. Densidade de Transistores

		    130 nm: A densidade de transistores é menor, pois cada transistor ocupa uma área física maior. 
			    Isso limita a complexidade e o número de funções que podem ser implementadas em uma ULA dentro de um chip.
		    45 nm: A maior densidade de transistores permite a integração de mais funcionalidades na mesma área física, 
			   possibilitando a criação de ULAs mais complexas e com maior capacidade de processamento.

		2. Consumo de Energia

		    130 nm: Os transistores consomem mais energia, tanto no modo estático (vazamento de corrente) quanto no dinâmico (durante as transições de estado).
			As tensões de operação típicas são mais altas, resultando em maior dissipação térmica.
		    45 nm: A redução no tamanho dos transistores diminui o consumo dinâmico de energia, pois menos carga precisa ser movida para alternar os estados dos transistores.
			   No entanto, o vazamento de corrente pode se tornar um problema significativo devido à proximidade dos transistores, exigindo técnicas avançadas para minimização.

		3. Desempenho (Frequência de Operação)

		    130 nm: A frequência de operação é limitada devido à maior capacitância parasita e resistência nos interconectores, que aumentam os atrasos.
		    45 nm: Transistores menores e interconexões mais curtas permitem frequências de operação mais altas, resultando em maior desempenho.

		4. Tamanho da ULA

		    130 nm: A ULA ocupa uma área física maior, o que pode limitar a integração de múltiplas unidades no mesmo chip.
		    45 nm: A redução no tamanho dos transistores permite implementar ULAs menores e com mais funcionalidades, ou mesmo integrar várias ULAs no mesmo espaço.

		5. Custo

		    130 nm: O custo por wafer é relativamente menor devido à maturidade da tecnologia, mas o custo por transistor é maior devido à menor densidade.
		    45 nm: O custo por wafer é mais alto devido à maior complexidade no processo de fabricação, mas o custo por transistor é reduzido pela maior densidade.

		6. Desafios Técnicos

		    130 nm: Tecnologias mais antigas enfrentam menos desafios relacionados a fenômenos como vazamento de corrente ou efeitos quânticos.
		    45 nm: Fenômenos como vazamento, variabilidade no processo de fabricação e efeitos de canal curto se tornam mais pronunciados, 
			   exigindo técnicas avançadas de design, como o uso de materiais de alta constante dielétrica (high-k) e metal gates.

				+-----------------------+--------------------------------------+----------------------------------------+
				| Aspecto               | 130 nm                               | 45 nm                                  |
				+-----------------------+--------------------------------------+----------------------------------------+
				| Densidade             | Menor                                | Maior                                  |
				| Consumo de energia    | Maior (mais perdas)                  | Menor (vazamento pode ser problema)    |
				| Desempenho            | Menor                                | Maior                                  |
				| Tamanho               | Maior                                | Menor                                  |
				| Custo                 | Menor por wafer, maior por transistor| Maior por wafer, menor por transistor  |
				| Desafios              | Simples                              | Complexos (efeitos avançados)          |
				+-----------------------+--------------------------------------+----------------------------------------+

Escolher entre as duas tecnologias depende das necessidades específicas do projeto, como desempenho, eficiência energética e orçamento.


=========== * Comparativo da execução das tecnologias 45nm e 130nm * ===========
================================================================================
# 

As principais diferenças entre as duas tecnologias (45nm e 130nm) podem ser observadas nos aspectos de área, consumo de energia (potência) e número de células.
	
	1. Área Total

	    45nm:
		Área total: 1526.164 (unidades da biblioteca gscl45nm).
		Contagem de células: 493.
		Maior densidade devido ao processo mais avançado.
	    130nm:
		Área total: 4265.967 (unidades da biblioteca sky130_ff_1.98_0).
		Contagem de células: 362.
		Maior área por célula devido ao processo menos denso.

	Diferença:
	A tecnologia de 45nm ocupa menos área total, o que é esperado devido à maior densidade de transistores proporcionada pelo processo mais avançado.
	
	2. Potência

	    45nm:
		Potência total: 1.44873e-04 W (144.873 µW).
		Divisão:
		    Leakage: 4.78%.
		    Internal: 55.02%.
		    Switching: 40.20%.

	    130nm:
		Potência total: 3.17009e-04 W (317.009 µW).
		Divisão:
		    Leakage: 0.55%.
		    Internal: 50.35%.
		    Switching: 49.10%.

	Diferença:

	    A tecnologia de 45nm consome menos energia total (cerca de 45% da energia consumida em 130nm), 
		mas apresenta uma maior proporção de potência dissipada por leakage devido ao tamanho reduzido dos transistores.
	    A tecnologia de 130nm tem consumo energético maior, mas é mais robusta em termos de leakage.

	3. Contagem de Instâncias e Tipos de Portas

	    45nm:
		493 instâncias divididas em tipos como AND2X1, AOI21X1, INVX1, entre outros.
		Mais portas lógicas complexas (e.g., MUX2X1 e FAX1).

	    130nm:
		362 instâncias, incluindo portas como ADDFX1, AND2X1, NOR2X1.
		Maior número de células simples como NAND2X1 e NOR2X1.

	Diferença:

	    A tecnologia de 45nm permite um maior número de células e portas mais complexas no mesmo espaço devido à maior densidade e menor área por célula.
	    A tecnologia de 130nm tem menos células, mas a área total por célula é maior.

	4. Divisão de Área por Tipo de Célula

	    45nm:
		Inversores: 5.9% da área.
		Buffers: 11.8% da área.
		Lógica: 82.3% da área.
	    130nm:
		Inversores: 7.5% da área.
		Lógica: 92.5% da área.

	Diferença:

	A divisão de área indica que em 45nm, há uma melhor eficiência na implementação lógica, enquanto em 130nm, a área proporcional dedicada à lógica é maior, indicando menor densidade.

	5. Bibliotecas e Processos

	    45nm: Biblioteca gscl45nm, com condições típicas.
	    130nm: Biblioteca sky130_ff_1.98_0, com condições ff_1.98_0.

	Diferença:

	As bibliotecas refletem a tecnologia usada, com 45nm sendo mais otimizada para aplicações de alta densidade e eficiência energética, 
	enquanto 130nm é mais robusta e usada em aplicações de confiabilidade.

					+---------------------------+-------------------------+-------------------------+
					| **Característica**        | **45nm**                | **130nm**               |
					|---------------------------|-------------------------|-------------------------|
					| **Área total**            | Menor (1526.164)        | Maior (4265.967)        |
					| **Consumo de energia**    | Menor (144.873 µW)      | Maior (317.009 µW)      | 
					| **Leakage (%)**           | 4.78%                   | 0.55%                   |
					| **Número de células**     | 493                     | 362                     |
					| **Complexidade**          | Portas mais complexas   | Mais portas simples     |
					| **Densidade**             | Alta                    | Baixa                   |
					+-------------------------------------------------------------------------------+

Esses dados refletem o compromisso entre densidade, desempenho e consumo energético de cada tecnologia. 45nm é ideal para designs compactos e eficientes, 
enquanto 130nm oferece robustez e simplicidade em aplicações específicas. Abaixo segue o resultado no Genus


********************************************************************************
*                   Análise da Tecnologia 45nm                                 *
********************************************************************************

#################################################################################
				check_design
#################################################################################

@genus:root: 3> check_design

 No LEF file read in.

 	 Check Design Report (c)
	 ------------------- 
 Summary
 ------- 

              Name                       Total
----------------------------------------------
Unresolved References                        0
Empty Modules                                0
Unloaded Port(s)                             0
Unloaded Sequential Pin(s)                   0
Unloaded Combinational Pin(s)               11
Assigns                                      0
Undriven Port(s)                             0
Undriven Leaf Pin(s)                         0
Undriven hierarchical pin(s)                 0
Multidriven Port(s)                          0
Multidriven Leaf Pin(s)                      0
Multidriven hierarchical Pin(s)              0
Multidriven unloaded net(s)                  0
Constant Port(s)                             0
Constant Leaf Pin(s)                         1
Constant hierarchical Pin(s)                 0
Preserved leaf instance(s)                   0
Preserved hierarchical instance(s)           0
Feedthrough Modules(s)                       0
Libcells with no LEF cell                    0
Physical (LEF) cells with no libcell         0
Subdesigns with long module name             0
Physical only instance(s)                    0
Logical only instance(s)                   493


  Done Checking the design.

#################################################################################
				report_area
#################################################################################

@genus:root: 3> report_area
============================================================
  Generated by:           Genus(TM) Synthesis Solution 21.10-p002_1
  Generated on:           Dec 19 2024  10:44:45 am
  Module:                 ULA
  Technology libraries:   gscl45nm 
                          gscl45nm 
  Operating conditions:   typical (balanced_tree)
  Wireload mode:          enclosed
  Area mode:              timing library
============================================================

Instance Module  Cell Count  Cell Area  Net Area   Total Area   Wireload  
--------------------------------------------------------------------------
ULA                     493   1526.164     0.000     1526.164 <none> (D)  
  (D) = wireload is default in technology library


#################################################################################
				report_power
#################################################################################

@genus:root: 4> report_power
Info    : Joules engine is used. [RPT-16]
        : Joules engine is being used for the command report_power.
Instance: /ULA
Power Unit: W
PDB Frames: /stim#0/frame#0
  -------------------------------------------------------------------------
    Category         Leakage     Internal    Switching        Total    Row%
  -------------------------------------------------------------------------
      memory     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
    register     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       latch     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       logic     6.92208e-06  7.97126e-05  5.82385e-05  1.44873e-04 100.00%
        bbox     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       clock     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
         pad     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
          pm     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
  -------------------------------------------------------------------------
    Subtotal     6.92208e-06  7.97126e-05  5.82385e-05  1.44873e-04 100.00%
  Percentage           4.78%       55.02%       40.20%      100.00% 100.00%
  -------------------------------------------------------------------------

#################################################################################
				report_gates
#################################################################################

@genus:root: 5> report_gates
============================================================
  Generated by:           Genus(TM) Synthesis Solution 21.10-p002_1
  Generated on:           Dec 19 2024  10:47:51 am
  Module:                 ULA
  Technology libraries:   gscl45nm 
                          gscl45nm 
  Operating conditions:   typical (balanced_tree)
  Wireload mode:          enclosed
  Area mode:              timing library
============================================================

                             
  Gate   Instances    Area     Library   
-----------------------------------------
AND2X1          62   145.483    gscl45nm 
AOI21X1         17    47.869    gscl45nm 
AOI22X1         30    98.553    gscl45nm 
BUFX2           77   180.680    gscl45nm 
FAX1            43   383.418    gscl45nm 
HAX1             7    32.851    gscl45nm 
INVX1           64    90.106    gscl45nm 
MUX2X1          41   153.930    gscl45nm 
NAND2X1         15    28.158    gscl45nm 
NAND3X1         17    39.890    gscl45nm 
NOR2X1           5    11.732    gscl45nm 
NOR3X1           8    22.526    gscl45nm 
OAI21X1         60   168.948    gscl45nm 
OR2X1           42    98.553    gscl45nm 
XNOR2X1          2     9.386    gscl45nm 
XOR2X1           3    14.079    gscl45nm 
-----------------------------------------
total          493  1526.164             


                                         
     Type      Instances   Area   Area % 
-----------------------------------------
inverter              64   90.106    5.9 
buffer                77  180.680   11.8 
logic                352 1255.378   82.3 
physical_cells         0    0.000    0.0 
-----------------------------------------
total                493 1526.164  100.0 


********************************************************************************
*                   Análise da Tecnologia 130nm                                 *
********************************************************************************


#################################################################################
				check_design
##################################################################################

@genus:root: 8> check_design


 No LEF file read in.

 	 Check Design Report (c)
	 ------------------- 
 Summary
 ------- 

              Name                       Total
----------------------------------------------
Unresolved References                        0
Empty Modules                                0
Unloaded Port(s)                             0
Unloaded Sequential Pin(s)                   0
Unloaded Combinational Pin(s)                0
Assigns                                      0
Undriven Port(s)                             0
Undriven Leaf Pin(s)                         0
Undriven hierarchical pin(s)                 0
Multidriven Port(s)                          0
Multidriven Leaf Pin(s)                      0
Multidriven hierarchical Pin(s)              0
Multidriven unloaded net(s)                  0
Constant Port(s)                             0
Constant Leaf Pin(s)                         0
Constant hierarchical Pin(s)                 0
Preserved leaf instance(s)                   0
Preserved hierarchical instance(s)           0
Feedthrough Modules(s)                       0
Libcells with no LEF cell                    0
Physical (LEF) cells with no libcell         0
Subdesigns with long module name             0
Physical only instance(s)                    0
Logical only instance(s)                   362


  Done Checking the design.

#################################################################################
				report_area
#################################################################################

@genus:root: 3> report_area
============================================================
  Generated by:           Genus(TM) Synthesis Solution 21.10-p002_1
  Generated on:           Dec 19 2024  10:53:51 am
  Module:                 ULA
  Technology libraries:   sky130_ff_1.98_0 1.0
                          sky130_ff_1.98_0 1.0
  Operating conditions:   ff_1.98_0 (balanced_tree)
  Wireload mode:          enclosed
  Area mode:              timing library
============================================================

Instance Module  Cell Count  Cell Area  Net Area   Total Area   Wireload  
--------------------------------------------------------------------------
ULA                     362   4265.967     0.000     4265.967 <none> (D)  
  (D) = wireload is default in technology library

#################################################################################
				report_power
#################################################################################

@genus:root: 4> report_power
Info    : Joules engine is used. [RPT-16]
        : Joules engine is being used for the command report_power.
Instance: /ULA
Power Unit: W
PDB Frames: /stim#0/frame#0
  -------------------------------------------------------------------------
    Category         Leakage     Internal    Switching        Total    Row%
  -------------------------------------------------------------------------
      memory     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
    register     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       latch     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       logic     1.74832e-06  1.59606e-04  1.55654e-04  3.17009e-04 100.00%
        bbox     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
       clock     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
         pad     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
          pm     0.00000e+00  0.00000e+00  0.00000e+00  0.00000e+00   0.00%
  -------------------------------------------------------------------------
    Subtotal     1.74832e-06  1.59606e-04  1.55654e-04  3.17009e-04 100.00%
  Percentage           0.55%       50.35%       49.10%      100.00% 100.00%
  -------------------------------------------------------------------------


#################################################################################
				report_gates
#################################################################################

@genus:root: 5> report_gates
============================================================
  Generated by:           Genus(TM) Synthesis Solution 21.10-p002_1
  Generated on:           Dec 19 2024  10:57:28 am
  Module:                 ULA
  Technology libraries:   sky130_ff_1.98_0 1.0
                          sky130_ff_1.98_0 1.0
  Operating conditions:   ff_1.98_0 (balanced_tree)
  Wireload mode:          enclosed
  Area mode:              timing library
============================================================

                               
   Gate    Instances    Area         Library       
---------------------------------------------------
ADDFX1            34  1100.750    sky130_ff_1.98_0 
AND2X1            14   133.308    sky130_ff_1.98_0 
AOI211X1           5    57.130    sky130_ff_1.98_0 
AOI21X1           10    95.220    sky130_ff_1.98_0 
AOI221X1           2    26.662    sky130_ff_1.98_0 
AOI222X1           8    91.552    sky130_ff_1.98_0 
AOI22X1           16   182.816    sky130_ff_1.98_0 
CLKINVX2          36   205.668    sky130_ff_1.98_0 
CLKMX2X2           9   137.115    sky130_ff_1.98_0 
CLKXOR2X1         31   413.261    sky130_ff_1.98_0 
INVX1             10    57.130    sky130_ff_1.98_0 
INVX2             10    57.130    sky130_ff_1.98_0 
NAND2X1           58   441.844    sky130_ff_1.98_0 
NAND3X1            2    19.044    sky130_ff_1.98_0 
NOR2X1            29   220.922    sky130_ff_1.98_0 
NOR3X1             5    47.610    sky130_ff_1.98_0 
NOR4X1             2    22.852    sky130_ff_1.98_0 
OAI211X1           7    79.940    sky130_ff_1.98_0 
OAI21X1           19   180.918    sky130_ff_1.98_0 
OAI221X1           8   106.648    sky130_ff_1.98_0 
OAI222X1          15   228.525    sky130_ff_1.98_0 
OAI22X1           22   251.372    sky130_ff_1.98_0 
OR2X2              7    66.654    sky130_ff_1.98_0 
OR3X1              1    11.426    sky130_ff_1.98_0 
XNOR2X2            2    30.470    sky130_ff_1.98_0 
---------------------------------------------------
total            362  4265.967                     


                                         
     Type      Instances   Area   Area % 
-----------------------------------------
inverter              56  319.928    7.5 
logic                306 3946.039   92.5 
physical_cells         0    0.000    0.0 
-----------------------------------------
total                362 4265.967  100.0 



