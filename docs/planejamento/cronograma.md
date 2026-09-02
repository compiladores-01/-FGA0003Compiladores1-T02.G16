# Cronograma

Planejamento da equipe (4 integrantes) para o compilador **Python → C**, alinhado ao plano de ensino de **FGA0003 – Compiladores 1** (2026/2), turma **T02**.

!!! info "Datas-chave de avaliação"
    - **P1 (formulário):** até **23/09/2026, 23h59** — [forms.office.com/r/MyKh4HiAAu](https://forms.office.com/r/MyKh4HiAAu)
    - **P1 (apresentação/entrevista):** 28/09 e 30/09/2026
    - **P2 (formulário):** até **04/11/2026, 23h59** — [forms.office.com/r/gNG6Eb7e71](https://forms.office.com/r/gNG6Eb7e71)
    - **P2 (apresentação/entrevista):** 09/11 e 11/11/2026
    - **Entrevista final (T):** 30/11 e 02/12/2026

Encontros: **segundas e quartas, 16h–17h50**, sala **I10**.

---

## Visão geral do semestre

| Fase | Período | Foco do projeto (Python → C) | Marco |
| --- | --- | --- | --- |
| Fundação | 10/08 – 26/08 | Ambiente, escopo da subset Python, lexer | Scanner inicial |
| Sintaxe | 31/08 – 16/09 | Parser, erros, AST e tabela de símbolos | Front-end estável |
| **P1** | 23/09 – 30/09 | Consolidação e demonstração | Entrega P1 |
| Semântica e IR | 05/10 – 14/10 | Análise semântica + IR | Pipeline intermediário |
| Código e otimização | 19/10 – 28/10 | Otimizações + geração de C | Backend inicial |
| **P2** | 04/11 – 11/11 | Integração e demonstração | Entrega P2 |
| Fechamento | 16/11 – 25/11 | Polimento, testes, docs | Compilador final |
| **T** | 30/11 – 02/12 | Entrevista de entrega | Nota C + T |

---

## Cronograma detalhado (aula × entrega da equipe)

### Agosto — Fundação léxica

| Data | Aula (plano de ensino) | Entrega / meta da equipe |
| --- | --- | --- |
| 10/08 (seg.) | Apresentação da disciplina | Formação do grupo (4 pessoas), definição do líder |
| 12/08 (qua.) | Avaliação diagnóstica | Confirmar subset Python → C (ver escopo abaixo) |
| 17/08 (seg.) | Fundamentos de linguagens formais e autômatos | Modelar tokens da subset (números, ids, keywords, operadores) |
| 19/08 (qua.) | Prática: analisadores léxicos (ERs) | Protótipo Flex com tokens básicos |
| 24/08 (seg.) | Organização de compiladores/interpretadores | Pipeline: fonte Python → tokens → AST → C |
| 26/08 (qua.) | Prática: projeto inicial (fase léxica) | **Milestone M1:** lexer reconhecendo a subset v0 |

### Setembro — Parser, AST e P1

| Data | Aula (plano de ensino) | Entrega / meta da equipe |
| --- | --- | --- |
| 31/08 (seg.) | Análise sintática (GLC e ferramentas) | Gramática Bison da subset |
| 02/09 (qua.) | Prática: parser inicial | Parser aceita programas mínimos |
| 07/09 (seg.) | **FERIADO** | Trabalho assíncrono no parser |
| 09/09 (qua.) | Offline: parser + erros sintáticos | `yyerror` + recuperação básica |
| 14/09 (seg.) | AST e tabela de símbolos (teoria) | Definir nós da AST e escopos |
| 16/09 (qua.) | Prática: AST + tabela de símbolos | **Milestone M2:** AST + tabela para subset v0 |
| 21–23/09 | Semana Universitária | Finalizar demo P1; líder envia formulário até **23/09 23h59** |
| 28/09 (seg.) | **P1** (equipes 1–8) | Apresentação/entrevista — presença de todos |
| 30/09 (qua.) | **P1** (equipes 9–16) | Idem |

**Meta P1 (sugerida):** lexer + parser + AST (e início da tabela de símbolos) para um subconjunto Python mínimo, com documentação e demo reproduzível.

### Outubro — Semântica, IR, otimização e C

| Data | Aula (plano de ensino) | Entrega / meta da equipe |
| --- | --- | --- |
| 05/10 (seg.) | Análise semântica (teoria) | Regras de tipo/escopo da subset |
| 07/10 (qua.) | Prática: integração semântica | **Milestone M3:** checagens semânticas básicas |
| 12/10 (seg.) | **FERIADO** | Continuidade assíncrona |
| 14/10 (qua.) | Prática: IR intermediário | IR simples (ex.: três endereços / bytecode leve) |
| 19/10 (seg.) | Otimização de código (teoria) | Escolher 1–2 otimizações viáveis |
| 21/10 (qua.) | Prática: otimização | Constant folding / dead code (na IR) |
| 26/10 (seg.) | Geração de código final (teoria) | Mapeamento IR → C |
| 28/10 (qua.) | Prática: geração final | **Milestone M4:** protótipo emitindo `.c` |

### Novembro / Dezembro — P2, fechamento e T

| Data | Aula (plano de ensino) | Entrega / meta da equipe |
| --- | --- | --- |
| 02/11 (seg.) | **FERIADO** | Preparar formulário P2 |
| 04/11 (qua.) | Compiladores e LLM | Líder envia formulário P2 até **04/11 23h59** |
| 09/11 (seg.) | **P2** (equipes 16→9) | Apresentação/entrevista — presença de todos |
| 11/11 (qua.) | **P2** (equipes 8→1) | Idem |
| 16–25/11 | Implementação final | **Milestone M5:** subset completa + testes + docs |
| 30/11 (seg.) | Entrevistas **T** | Entrega final |
| 02/12 (qua.) | Entrevistas **T** | Entrega final |
| 07–09/12 | Revisão de menção | Agendar com o professor se necessário |

**Meta P2 (sugerida):** pipeline completo (léxico → sintático → semântico → geração C), com exemplos compiláveis no GCC e documentação atualizada.

---

## Escopo da linguagem (subconjunto Python → C)

Versão inicial (v0) — realista para P1:

- Literais: `int`, `float`, `str`, `bool` (`True`/`False`)
- Variáveis e atribuição (`=`)
- Expressões aritméticas e relacionais
- `if` / `else`
- `while`
- `print(...)` → `printf(...)`
- Funções simples (`def`) com parâmetros e `return` (se o tempo permitir até P1; senão até P2)

Fora do escopo inicial (avaliar só se sobrar capacidade):

- Classes, herança, decorators
- List/dict comprehensions, generators
- `async`/`await`, tipagem estática completa, módulos complexos

---

## Fórmula de avaliação (referência)

\[
NF = \frac{P1 + 2 \cdot P2 + 3 \cdot C + 4 \cdot T}{10}
\]

Aprovação: **NF ≥ 5,0** e **≥ 75%** de presença. Presença de **todos** os membros é obrigatória em P1, P2 e T.
