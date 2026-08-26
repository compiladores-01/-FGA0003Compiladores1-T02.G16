# Especificação do Projeto

Especificação da equipe com base na **Proposta de Trabalho – Compiladores 1** (Prof. Dr. Sergio Antônio Andrade de Freitas) e no plano de ensino 2026/2.

| | |
| --- | --- |
| **Tipo de projeto** | Compilador |
| **Linguagem-fonte** | Subconjunto de **Python** |
| **Linguagem-alvo** | **JavaScript** |
| **Ferramentas** | **Flex** (léxico) + **Bison** (sintático) + C |
| **Equipe** | 4 membros (limite da disciplina: até 5) |
| **Metodologia** | PBL + Scrum (sprints) |
| **GitHub da disciplina** | [sergioaafreitas/COMP1](https://github.com/sergioaafreitas/COMP1) |

---

## 1. Objetivo do trabalho

Desenvolver, ao longo do semestre, um **compilador** que traduza programas de um subconjunto de Python para JavaScript, aplicando os conceitos de:

- análise léxica e sintática;
- estruturas internas (AST, tabela de símbolos);
- análise semântica;
- geração (e, se possível, otimização) de código.

O trabalho cobre **planejamento, projeto, implementação, testes e documentação**. Toda decisão relevante deve ser **justificada** (ver [Decisões Técnicas](../decisoes/decisao.md)).

---

## 2. Formação da equipe e organização

- Equipe de **4 estudantes** (dentro do limite de até 5).
- Projeto definido cedo: **compilador Python → JavaScript** (não interpretador).
- Organização recomendada: **Scrum** com sprints (detalhes em [Planejamento das Sprints](../planejamento/planejamento_das_sprints.md)).
- Guias de referência (semana 01 do GitHub da disciplina):
  - [Guia – Projeto de um Compilador](https://github.com/sergioaafreitas/COMP1)
  - Guia – Projeto de um Interpretador (não adotado nesta equipe)

### Papéis internos

| Papel | Foco |
| --- | --- |
| Líder | Integração, prazos, formulários P1/P2 |
| Léxico | Flex / tokens da subset Python |
| Sintaxe / AST | Bison, erros, árvore |
| Semântica / codegen | Tabela de símbolos, IR, emissão JS |

---

## 3. Requisitos oficiais do projeto

### 3.1 Repositório GitHub

- Criado e usado pela equipe **durante todo** o desenvolvimento.
- O professor acessa o repositório na entrega final (**cerca de 15 dias antes da entrevista**).
- A documentação do site/repositório deve conter, no mínimo:

| Conteúdo exigido | Onde está neste site |
| --- | --- |
| Estrutura do projeto | Home + Guia Detalhado |
| Decisões técnicas | Decisões Técnicas |
| Planejamento das sprints | Planejamento → Sprints |
| Problemas e soluções | Problemas e Soluções |
| Atas / acompanhamento | Atas, Atividades Semanais, Ponto de Controle |

### 3.2 Pontos de controle

**P1 — o que apresentar**

- Definição do projeto (compilador Python → JS)
- Linguagem escolhida e subset
- Planejamento das sprints
- O que já foi implementado

**P2 — o que apresentar**

- Funcionalidades principais desenvolvidas
- Melhorias desde o P1
- Ajustes no planejamento

**Formulários (somente o líder envia)**

| Entrega | Prazo | Link |
| --- | --- | --- |
| P1 | até 23/09/2026, 23h59 | [Formulário P1](https://forms.office.com/r/MyKh4HiAAu) |
| P2 | até 04/11/2026, 23h59 | [Formulário P2](https://forms.office.com/r/gNG6Eb7e71) |

!!! warning "Atenção"
    Não envio do formulário no prazo ⇒ nota **0** naquele ponto de controle. Não há ajuste de última hora: o formulário deve refletir o progresso real. Presença de **todos** os membros é obrigatória em P1, P2 e na entrevista final.

### 3.3 Entrega final (T)

- Projeto no GitHub (código + documentação).
- **Entrevista presencial** cobrindo:
  - funcionamento do compilador;
  - justificativa das decisões técnicas;
  - dificuldades e soluções.

---

## 4. Escopo técnico (subset Python → JavaScript)

### Incluído (meta do semestre)

| Construção Python | Tradução JS típica |
| --- | --- |
| Literais `int`, `float`, `str`, `bool` | number / string / boolean |
| Atribuição e expressões | `let` / expressões JS |
| `if` / `else` | `if` / `else` |
| `while` | `while` |
| `print(...)` | `console.log(...)` |
| `def` / `return` (meta P2) | `function` / `return` |

### Fora do escopo inicial

Classes, comprehensions, `async`, tipagem estática completa, imports complexos, exceções avançadas.

A subset pode crescer se a equipe tiver folga após o pipeline ponta a ponta estar estável.

---

## 5. Critérios de aceite

### Até P1

- [ ] Repositório e documentação MkDocs ativos
- [ ] Lexer Flex reconhecendo tokens da subset v0
- [ ] Parser Bison aceitando programas mínimos
- [ ] AST (e/ou início da tabela de símbolos) demonstrável
- [ ] Formulário P1 enviado; equipe preparada para entrevista/apresentação

### Até P2

- [ ] Análise semântica básica integrada
- [ ] Geração de JavaScript (direta ou via IR)
- [ ] Exemplos `.py` → `.js` executáveis no Node.js
- [ ] Evolução clara em relação ao P1 documentada
- [ ] Formulário P2 enviado

### Até T

- [ ] Pipeline completo e testado
- [ ] README / docs com como compilar e rodar
- [ ] Decisões e problemas/soluções atualizados
- [ ] Todos os membros capazes de explicar o sistema

---

## 6. Avaliação (referência)

Conforme a proposta e o plano de ensino:

| Critério | O que avalia |
| --- | --- |
| **P1 e P2** | Progresso, planejamento e execução |
| **Código (C)** | Correção, qualidade e organização |
| **Documentação** | Clareza e detalhamento |
| **Entrevista (T)** | Demonstração e justificativa das escolhas |

Fórmula do plano de ensino:

\[
NF = \frac{P1 + 2\cdot P2 + 3\cdot C + 4\cdot T}{10}
\]

Aprovação: **NF ≥ 5,0** e **≥ 75%** de presença.

---

## 7. Recomendações da proposta (adotadas pela equipe)

1. Projeto definido cedo → **compilador Python → JS**.
2. Scrum + sprints documentadas neste site.
3. Commits frequentes no GitHub.
4. Uso dos guias e exemplos do repositório da disciplina.
5. Aproveitar as quartas (prática) para integração e dailies.
6. Distribuir tarefas de forma equilibrada entre os 4 membros.
7. Documentar decisões e problemas — a entrevista pode sortear qualquer integrante.
