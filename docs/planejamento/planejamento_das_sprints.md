# Planejamento das Sprints

Sprints de **~2 semanas**, alinhadas ao cronograma da disciplina e às entregas **P1**, **P2** e **T**. Equipe de **4 pessoas**; compilador **Python → JavaScript**.

!!! tip "Regra de ouro"
    Cada sprint termina com: código compilando + pelo menos 1 exemplo `.py → .js` + docs atualizadas.

---

## Mapa das sprints

| Sprint | Período | Objetivo | Marco |
| --- | --- | --- | --- |
| **S0** | 10/08 – 19/08 | Kickoff, subset e ambiente | Ambiente + escopo v0 |
| **S1** | 20/08 – 02/09 | Lexer + parser inicial | Tokens + gramática mínima |
| **S2** | 03/09 – 16/09 | Erros, AST e tabela de símbolos | Front-end pronto para P1 |
| **S3** | 17/09 – 30/09 | Consolidação e **P1** | Demo P1 |
| **S4** | 01/10 – 14/10 | Semântica + IR | Análise semântica integrada |
| **S5** | 15/10 – 28/10 | Otimização + codegen JS | Protótipo `.js` |
| **S6** | 29/10 – 11/11 | Integração e **P2** | Demo P2 |
| **S7** | 12/11 – 25/11 | Fechamento | Compilador final |
| **S8** | 26/11 – 02/12 | Entrevista **T** | Entrega |

---

## Sprint 0 — Kickoff (10/08 – 19/08)

**Objetivo:** alinhar escopo e destravar o ambiente.

| Pessoa | Tarefas |
| --- | --- |
| Líder | Criar board/issues; confirmar líder e formulários futuros |
| Léxico | Listar tokens da subset Python v0 |
| Sintaxe | Rascunho da gramática (atribuição, expr, `if`, `while`, `print`) |
| Backend | Definir mapeamento preliminar Python → JS (`print`→`console.log`, etc.) |

**DoD:** Flex/Bison instalados; repositório e MkDocs no ar; subset v0 escrita em [Especificação](../Projeto_Final/Especificacao_do_projeto.md).

---

## Sprint 1 — Léxico e parser (20/08 – 02/09)

**Objetivo:** reconhecer e parsear programas mínimos.

| Frente | Entregáveis |
| --- | --- |
| Léxico | `lexer.l` com ids, números, strings, keywords (`if`, `else`, `while`, `def`, `return`, `print`, `True`, `False`) |
| Parser | `parser.y` aceitando script mínimo |
| Integração | Makefile + README de compilação |
| Docs | Atualizar decisões e semana correspondente |

**DoD:** `echo 'x = 1 + 2' | ./compilador` (ou equivalente) sem erro sintático.

---

## Sprint 2 — AST e símbolos (03/09 – 16/09)

**Objetivo:** representação interna para as próximas fases.

| Frente | Entregáveis |
| --- | --- |
| Sintaxe | Tratamento de erros sintáticos |
| AST | Nós para expr, stmt, bloco, if/while, atribuição |
| Semântica (início) | Tabela de símbolos com escopo global |
| Testes | 5 programas válidos e 5 inválidos |

**DoD:** AST imprimível (dump) + símbolos das variáveis declaradas/atribuídas.

---

## Sprint 3 — P1 (17/09 – 30/09)

**Objetivo:** fechar a 1ª entrega avaliativa.

Checklist P1:

- [ ] Formulário enviado pelo líder até **23/09/2026 23h59**
- [ ] Demo de 5–8 min ensaiada (todos sabem explicar sua frente)
- [ ] Docs: planejamento, atas, problemas/soluções e ponto de controle 1
- [ ] Repositório limpo (como clonar, compilar e rodar)

**Conteúdo mínimo sugerido na demo:** lexer → parser → AST (e tabela, se pronta) sobre 2–3 exemplos Python da subset.

---

## Sprint 4 — Semântica e IR (01/10 – 14/10)

**Objetivo:** validar o programa e preparar geração.

| Frente | Entregáveis |
| --- | --- |
| Semântica | Uso de variável não definida; tipos básicos em operações; aridade de `print`/`return` |
| IR | Representação intermediária simples |
| Parser/AST | Ajustes para funções (`def`) se ainda não estiverem estáveis |
| Testes | Suíte ampliada com erros semânticos |

**DoD:** programa semanticamente inválido é rejeitado com mensagem clara; IR gerada para casos válidos.

---

## Sprint 5 — Otimização e JavaScript (15/10 – 28/10)

**Objetivo:** emitir JS executável.

| Frente | Entregáveis |
| --- | --- |
| Otimização | Pelo menos uma: constant folding ou remoção de código morto trivial |
| Codegen | Emissor JS (`let`/`const`, `if`, `while`, `function`, `console.log`) |
| Integração | Comando: `./compilador entrada.py -o saida.js && node saida.js` |
| Docs | Registrar decisões de mapeamento Python→JS |

**DoD:** pelo menos 3 exemplos `.py` geram `.js` que rodam no Node com saída correta.

---

## Sprint 6 — P2 (29/10 – 11/11)

**Objetivo:** demonstrar o pipeline completo.

Checklist P2:

- [ ] Formulário enviado pelo líder até **04/11/2026 23h59**
- [ ] Pipeline: léxico → sintático → semântico → (IR/opt) → JS
- [ ] Limitações da subset explícitas na documentação
- [ ] Ensaio da entrevista (perguntas técnicas cruzadas entre membros)

---

## Sprint 7 — Fechamento (12/11 – 25/11)

**Objetivo:** robustez e qualidade da entrega final (**C**).

- Completar subset acordada (funções, `else`, operadores restantes).
- Corrigir bugs encontrados em P2.
- Ampliar testes e exemplos do relatório/site.
- Polir mensagens de erro e organização do código.
- Congelar features 2–3 dias antes de T (só bugfix).

**DoD:** release candidata à entrevista final.

---

## Sprint 8 — Entrevista T (26/11 – 02/12)

**Objetivo:** apresentar decisões, arquitetura e dificuldades.

Roteiro sugerido (≈ 4 pessoas):

1. Visão geral e subset Python → JS  
2. Front-end (lexer/parser/AST)  
3. Semântica / IR / otimizações  
4. Geração de JavaScript + demo ao vivo  

Presença de **todos** obrigatória.

---

## Capacidade semanal (4 pessoas)

Estimativa de esforço sustentável:

| Atividade | Horas / pessoa / semana |
| --- | --- |
| Aulas | ~4 h |
| Implementação + testes | ~4–6 h |
| Docs / reuniões | ~1–2 h |
| **Total** | **~9–12 h** |

Se uma frente atrasar, o líder redistribui tarefas na quarta seguinte — priorizando sempre o próximo milestone (P1 → P2 → T).
