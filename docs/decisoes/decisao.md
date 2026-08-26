# Decisões Técnicas

Registro das decisões do projeto **compilador Python → JavaScript** (Flex + Bison), conforme a proposta de trabalho da disciplina: toda escolha relevante deve ser justificada.

## Decisões estruturantes

| Data | Decisão | Alternativas | Justificativa |
| --- | --- | --- | --- |
| 2026/2 | Construir um **compilador** (não interpretador) | Interpretador Python | Alinha ao guia de compilador; gera artefato JS executável e cobre geração de código |
| 2026/2 | Fonte: **subset Python** | Linguagem inventada / C subset | Sintaxe familiar à equipe; subset controlável para o semestre |
| 2026/2 | Alvo: **JavaScript** | C / bytecode próprio / assembly | Validação fácil via Node.js; mapeamento direto de várias construções |
| 2026/2 | Ferramentas: **Flex + Bison** (+ C) | Parser gerado à mão / outra stack | Exigência prática da disciplina e material de apoio do professor |
| 2026/2 | Organização: **Scrum** + site MkDocs | Kanban solto / docs só no README | Atende requisitos de documentação (sprints, decisões, problemas) |

## Decisões de design (a detalhar nas sprints)

| Tema | Direção atual | Status |
| --- | --- | --- |
| Representação interna | AST + tabela de símbolos | Previsto Sprint 2–3 |
| IR | Código de três endereços (ou lista de instruções equivalente) | Previsto Sprint 4 |
| Otimizações | Constant folding e/ou dead code trivial | Opcional, Sprint 5 |
| Escopos | Global primeiro; funções em seguida | Incremental |
| Erros | Mensagens por fase (léxico / sintático / semântico) | Contínuo |

## Como registrar novas decisões

Para cada decisão nova, incluir:

1. **Contexto** — o que motivou a escolha  
2. **Alternativas** — o que foi considerado  
3. **Decisão** — o que foi adotado  
4. **Consequências** — impacto em código, prazo ou testes  

!!! tip "Entrevista final"
    Qualquer membro pode ser perguntado sobre estas decisões — mantenham a página atualizada e alinhada ao código.
