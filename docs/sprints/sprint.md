# Metodologia de Desenvolvimento

O desenvolvimento do compilador será realizado utilizando a metodologia **Scrum**, com o objetivo de organizar as atividades da equipe, acompanhar o progresso do projeto e distribuir as tarefas de forma equilibrada entre os integrantes.

A equipe é composta por **3 integrantes**, que trabalharão de forma colaborativa nas diferentes etapas do desenvolvimento do compilador Python → JavaScript


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

O projeto será dividido em Sprints semanais, acompanhando as principais etapas do desenvolvimento do compilador.

| Sprint | Período | Objetivo |
|---|---|---|
| Sprint 0 | 26/08 – 01/09 | Organização, escopo e ambiente |
| Sprint 1 | 02/09 – 08/09 | Analisador Léxico |
| Sprint 2 | 09/09 – 15/09 | Analisador Sintático |
| Sprint 3 | 16/09 – 22/09 | AST e integração inicial |
| Sprint 4 | 23/09 – 29/09 | P1 e início da análise semântica |
<!-- | Sprint 5 | 30/09 – 06/10 | Análise Semântica |
| Sprint 6 | 07/10 – 13/10 | Geração de JavaScript |
| Sprint 7 | 14/10 – 20/10 | Integração completa |
| Sprint 8 | 21/10 – 27/10 | Testes e correções | 
| Sprint 9 | 28/10 – 03/11 | Finalização e documentação |
| Sprint 10 | 04/11 | Entrega P2 | -->

---

# Sprint 0 — Organização

**Período:** 26/08/2026 – 01/09/2026

### Objetivo

Preparar o projeto e definir as bases para o desenvolvimento do compilador.

### Atividades

- Definir o escopo do compilador;
- Definir o subconjunto de Python suportado;
- Definir funcionalidades que ficarão fora do escopo;
- Definir a arquitetura do compilador;
- Definir o fluxo Python → JavaScript;
- Configurar o ambiente de desenvolvimento;
- Instalar Flex, Bison, GCC, Make e Node.js;
- Criar a estrutura inicial do projeto;
- Criar o GitHub Project;
- Criar Labels;
- Criar Milestones;
- Criar Issues;
- Definir responsabilidades;
- Definir padrão de commits;
- Definir estratégia de Branches;
- Documentar as decisões iniciais.

### Resultado esperado

Projeto configurado e equipe preparada para iniciar o desenvolvimento do analisador léxico.

---

# Sprint 1 — Analisador Léxico

**Período:** 02/09/2026 – 08/09/2026

### Objetivo

Implementar o analisador léxico utilizando Flex.

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

Código Python convertido corretamente em uma sequência de tokens.

