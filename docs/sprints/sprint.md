# Metodologia de Desenvolvimento

O desenvolvimento do compilador será realizado utilizando a metodologia **Scrum**, com o objetivo de organizar as atividades da equipe, acompanhar o progresso do projeto e distribuir as tarefas de forma equilibrada entre os integrantes.

A equipe é composta por **3 integrantes**, que trabalharão de forma colaborativa nas diferentes etapas do desenvolvimento do compilador Python → C


---

## Scrum

O projeto será organizado em **Sprints semanais**, nas quais serão definidas as atividades a serem realizadas, os responsáveis e os resultados esperados.

Cada Sprint terá:

- Objetivo definido;
- Tarefas distribuídas entre os integrantes;
- Issues correspondentes no GitHub;
- Acompanhamento do progresso;
- Registro das atividades realizadas;
- Registro de problemas e impedimentos;
- Documentação dos resultados.

---

## Reunião semanal

### Quarta-feira — Reunião da equipe

Toda **quarta-feira** será realizada a reunião semanal da equipe.

A reunião terá como objetivo:

- Verificar as atividades realizadas desde a última reunião;
- Verificar as Issues concluídas;
- Identificar tarefas atrasadas;
- Identificar problemas e impedimentos;
- Discutir soluções para problemas técnicos;
- Avaliar o progresso da Sprint;
- Distribuir as próximas atividades;
- Definir os responsáveis pelas tarefas;
- Atualizar o GitHub Project;
- Atualizar as Issues;
- Registrar decisões técnicas;
- Atualizar a documentação da Sprint;
- Definir o objetivo da próxima Sprint.

### Atividades antes da reunião

Antes da reunião de quarta-feira, cada integrante deverá:

- Atualizar suas Issues;
- Informar as tarefas concluídas;
- Registrar problemas encontrados;
- Realizar commits relacionados às atividades;
- Criar ou atualizar Pull Requests quando necessário;
- Executar os testes relacionados às suas alterações.

---

# Sprints

O desenvolvimento do compilador será organizado em sprints semanais, seguindo a metodologia Scrum e mantendo o acompanhamento do progresso da equipe ao longo de cada etapa do projeto.

A divisão das sprints foi pensada para acompanhar a evolução do compilador desde a organização inicial até a entrega final, com foco em análise léxica, sintática, semântica, geração de código e integração do pipeline completo.

## Visão geral

| Sprint | Período | Objetivo |
|---|---|---|
| Sprint 0 | 26/08 – 01/09 | Organização, escopo e ambiente |
| Sprint 1 | 02/09 – 08/09 | Analisador Léxico |
| Sprint 2 | 09/09 – 15/09 | Analisador Sintático |
| Sprint 3 | 16/09 – 22/09 | AST e integração inicial |
| Sprint 4 | 23/09 – 29/09 | P1 e início da análise semântica |
| Sprint 5 | 30/09 – 06/10 | Análise Semântica |
| Sprint 6 | 07/10 – 13/10 | Geração de C |
| Sprint 7 | 14/10 – 20/10 | Integração completa |
| Sprint 8 | 21/10 – 27/10 | Testes e correções |
| Sprint 9 | 28/10 – 03/11 | Finalização e documentação |
| Sprint 10 | 04/11 | Entrega P2 |

---

# Sprint 0 — Organização e planejamento

**Período:** 26/08/2026 – 01/09/2026

### Objetivo

Preparar o projeto e definir as bases para o desenvolvimento do compilador.

### Atividades

- Definir o escopo do compilador;
- Definir o subconjunto de Python suportado;
- Definir funcionalidades que ficarão fora do escopo;
- Definir a arquitetura do compilador;
- Definir o fluxo Python → C;
- Configurar o ambiente de desenvolvimento;
- Instalar Flex, Bison, GCC e Make;
- Criar a estrutura inicial do projeto;
- Criar o GitHub Project;
- Criar labels;
- Criar milestones;
- Criar issues;
- Definir responsabilidades;
- Definir padrão de commits;
- Definir estratégia de branches;
- Documentar as decisões iniciais.

### Resultado esperado

Projeto configurado, equipe organizada e ambiente pronto para iniciar as implementações do compilador.

---

# Sprint 1 — Analisador Léxico

**Período:** 02/09/2026 – 08/09/2026

### Objetivo

Implementar o analisador léxico utilizando Flex, transformando o código Python em uma sequência de tokens válidos para o restante do compilador.

### Atividades

- Criar o arquivo `lexer.l`;
- Definir tokens;
- Implementar identificadores;
- Implementar números inteiros;
- Implementar números reais;
- Implementar strings;
- Implementar palavras reservadas;
- Implementar operadores;
- Implementar delimitadores;
- Implementar comentários;
- Implementar controle de linhas;
- Implementar indentação;
- Implementar `INDENT`;
- Implementar `DEDENT`;
- Implementar erros léxicos;
- Criar testes do Lexer;
- Documentar os tokens.

### Resultado esperado

Código Python convertido corretamente em uma sequência de tokens, pronta para ser consumida pelo parser.

---

# Sprint 2 — Analisador Sintático

**Período:** 09/09/2026 – 15/09/2026

### Objetivo

Implementar o analisador sintático utilizando Bison.

### Atividades

- Definir a gramática;
- Criar `parser.y`;
- Integrar Lexer e Parser;
- Implementar atribuições;
- Implementar expressões;
- Implementar operadores;
- Definir precedência;
- Implementar `print`;
- Implementar `if`;
- Implementar `else`;
- Implementar `while`;
- Implementar funções;
- Implementar `return`;
- Implementar chamadas de funções;
- Implementar blocos;
- Implementar erros sintáticos;
- Criar testes.

### Resultado esperado

O compilador deverá verificar se os programas pertencem à gramática definida.

```text
Python
  ↓
Lexer
  ↓
Tokens
  ↓
Parser
  ↓
Programa válido
```

---

# Sprint 3 — AST e integração inicial

**Período:** 16/09/2026 – 22/09/2026

### Objetivo

Criar a Árvore Sintática Abstrata e integrar o Lexer e o Parser.

### Atividades

- Definir estrutura da AST;
- Criar nós para programas;
- Criar nós para variáveis;
- Criar nós para expressões;
- Criar nós para operadores;
- Criar nós para `print`;
- Criar nós para `if/else`;
- Criar nós para `while`;
- Criar nós para funções;
- Criar nós para `return`;
- Implementar construção da AST;
- Implementar impressão da AST;
- Integrar Lexer;
- Integrar Parser;
- Integrar AST;
- Criar testes de integração;
- Corrigir problemas encontrados.

### Resultado esperado

```text
Python
  ↓
Lexer
  ↓
Parser
  ↓
AST
```

---

# Sprint 4 — P1 e análise semântica inicial

**Período:** 23/09/2026 – 29/09/2026

### Objetivo

Preparar a entrega da P1 e iniciar a análise semântica.

### Atividades

- Revisar Lexer;
- Revisar Parser;
- Revisar AST;
- Executar testes;
- Corrigir bugs;
- Atualizar documentação;
- Atualizar README;
- Revisar GitHub Project;
- Preparar material da P1;
- Realizar a entrega da P1;
- Definir tabela de símbolos;
- Definir tipos;
- Planejar análise semântica.

### Resultado esperado

Versão estável do projeto para a P1 e estrutura inicial da análise semântica.

---

# Sprint 5 — Análise Semântica

**Período:** 30/09/2026 – 06/10/2026

### Objetivo

Implementar as verificações semânticas do compilador.

### Atividades

- Criar tabela de símbolos;
- Registrar variáveis;
- Registrar funções;
- Registrar parâmetros;
- Implementar escopos;
- Implementar busca de símbolos;
- Definir tipos;
- Verificar variáveis não declaradas;
- Verificar tipos;
- Verificar operações;
- Verificar comparações;
- Verificar operadores lógicos;
- Verificar chamadas de funções;
- Verificar quantidade de argumentos;
- Verificar `return`;
- Criar mensagens de erro;
- Criar testes semânticos.

### Resultado esperado

```text
AST
 ↓
Análise Semântica
 ↓
AST válida
```

---

# Sprint 6 — Geração de C

**Período:** 07/10/2026 – 13/10/2026

### Objetivo

Implementar a geração de código C a partir da AST.

### Atividades

- Criar gerador de código;
- Gerar variáveis;
- Gerar números;
- Gerar strings;
- Gerar booleanos;
- Gerar `None`;
- Gerar operações matemáticas;
- Gerar comparações;
- Gerar operadores lógicos;
- Gerar atribuições;
- Gerar `print`;
- Gerar `if/else`;
- Gerar `while`;
- Gerar funções;
- Gerar `return`;
- Gerar chamadas de funções;
- Definir regras Python → C;
- Criar testes do Codegen.

### Resultado esperado

```text
AST
 ↓
Code Generator
 ↓
C
```

---

# Sprint 7 — Integração completa

**Período:** 14/10/2026 – 20/10/2026

### Objetivo

Integrar todas as etapas do compilador.

### Pipeline

```text
programa.py
     ↓
   Lexer
     ↓
   Parser
     ↓
    AST
     ↓
 Semântica
     ↓
  Codegen
     ↓
 programa.c
```

### Atividades

- Criar programa principal;
- Receber arquivo `.py`;
- Executar Lexer;
- Executar Parser;
- Construir AST;
- Executar análise semântica;
- Gerar C;
- Criar arquivo `.c`;
- Criar CLI;
- Integrar Makefile;
- Compilar C com GCC;
- Corrigir problemas de integração;
- Testar o pipeline completo.

### Resultado esperado

Executar:

```bash
./compilador programa.py
```

e obter:

```text
programa.c
```

---

# Sprint 8 — Testes e correções

**Período:** 21/10/2026 – 27/10/2026

### Objetivo

Garantir que o compilador funcione corretamente.

### Testes positivos

- Variáveis;
- Números;
- Strings;
- Operações;
- Comparações;
- Booleanos;
- `print`;
- `if/else`;
- `while`;
- Funções;
- `return`;
- Programas maiores.

### Testes negativos

- Erros léxicos;
- Erros sintáticos;
- Erros de indentação;
- Variáveis inexistentes;
- Tipos incompatíveis;
- Funções inexistentes;
- Número incorreto de argumentos.

### Atividades

- Executar testes;
- Registrar bugs;
- Corrigir bugs;
- Refatorar código;
- Melhorar mensagens de erro;
- Verificar warnings;
- Executar novamente todos os testes.

---

# Sprint 9 — Finalização

**Período:** 28/10/2026 – 03/11/2026

### Objetivo

Finalizar código, documentação e apresentação.

### Atividades

- Revisar código;
- Revisar arquitetura;
- Revisar Lexer;
- Revisar Parser;
- Revisar AST;
- Revisar análise semântica;
- Revisar Codegen;
- Executar testes finais;
- Atualizar README;
- Atualizar MkDocs;
- Documentar gramática;
- Documentar arquitetura;
- Documentar decisões técnicas;
- Documentar testes;
- Documentar limitações;
- Revisar Issues;
- Revisar Milestones;
- Revisar Pull Requests;
- Preparar apresentação;
- Dividir apresentação entre os integrantes;
- Realizar ensaio.

---

# Sprint 10 — Entrega P2

**Período:** 04/11/2026

### Objetivo

Realizar a entrega final do projeto.

### Checklist

- Código final revisado;
- Lexer funcionando;
- Parser funcionando;
- AST funcionando;
- Análise semântica funcionando;
- Geração C funcionando;
- Pipeline completo funcionando;
- Testes passando;
- README atualizado;
- MkDocs atualizado;
- GitHub Project atualizado;
- Issues atualizadas;
- Milestones atualizadas;
- Apresentação pronta;
- Entrega realizada.

---

# Distribuição de tarefas

As tarefas serão distribuídas buscando equilíbrio entre os três integrantes.

| Área | Fernanda | Integrante 2 | Integrante 3 |
|---|---|---|---|
| Organização | ✓ | ✓ | ✓ |
| Lexer | Principal | Apoio | Apoio |
| Parser | Apoio | Principal | Apoio |
| AST | Apoio | Apoio | Principal |
| Semântica | Apoio | Apoio | Principal |
| Codegen | Apoio | Apoio | Principal |
| Integração | Principal | Principal | Principal |
| Testes | ✓ | ✓ | ✓ |
| Documentação | ✓ | ✓ | ✓ |
| Apresentação | ✓ | ✓ | ✓ |

A distribuição será revisada durante as reuniões semanais para evitar sobrecarga ou concentração de tarefas em apenas um integrante.

---

# Fluxo de trabalho no GitHub

Para cada atividade, será utilizada uma Issue.

```text
Issue criada
     ↓
Atribuição do responsável
     ↓
Desenvolvimento
     ↓
Commit
     ↓
Pull Request
     ↓
Revisão por outro integrante
     ↓
Merge
     ↓
Issue fechada
```

Nenhuma alteração importante deverá ser integrada diretamente à branch principal sem revisão de pelo menos um outro integrante.

---

# Documentação das Sprints

Cada sprint deverá possuir um registro contendo:

- Período;
- Objetivo;
- Integrantes;
- Atividades planejadas;
- Atividades concluídas;
- Atividades não concluídas;
- Problemas encontrados;
- Impedimentos;
- Soluções adotadas;
- Decisões técnicas;
- Pull Requests realizados;
- Resultado da Sprint;
- Próximos passos.

A documentação das sprints será armazenada em:

```text
docs/
└── sprints/
    ├── sprint-00.md
    ├── sprint-01.md
    ├── sprint-02.md
    ├── sprint-03.md
    ├── sprint-04.md
    ├── sprint-05.md
    ├── sprint-06.md
    ├── sprint-07.md
    ├── sprint-08.md
    └── sprint-09.md
```

Essa estrutura organiza o histórico do projeto e facilita o acompanhamento do progresso ao longo do desenvolvimento.

