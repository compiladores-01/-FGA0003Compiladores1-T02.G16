# Metodologia

A disciplina adota **aulas expositivas + Problem Based Learning (PBL)**. A equipe aplica o mesmo ciclo ao compilador **Python → C**.

## Dinâmica da disciplina

| Dia | Tipo | Uso pela equipe |
| --- | --- | --- |
| Segunda (16h–17h50) | Aula teórica | Alinhar conceitos (autômatos, GLC, semântica, geração) ao design do compilador |
| Quarta (16h–17h50) | Prática / PBL | Implementar, integrar e testar incrementos no repositório |

Material de apoio do professor: [slides CEDIS](https://slides.cedis.tec.br/c/sergio-compiladores) · repositório de referência: [sergioaafreitas/COMP1](https://github.com/sergioaafreitas/COMP1).

```


## Organização do grupo 

Papéis **fixos** (podem rotacionar a cada sprint, mas cada um mantém uma frente principal):

| Papel | Responsabilidade principal | Frente técnica |
| --- | --- | --- |
| **Líder / integração** | Prazos, formulários P1/P2, merge e demo | Integração do pipeline e releases |
| **Léxico** | Tokens e ERs da subset Python | `lexer` (Flex) |
| **Sintaxe / AST** | Gramática, erros, árvore | `parser` (Bison) + AST |
| **Semântica / backend** | Tabela de símbolos, checagens, emissão C | Semântica + codegen |



## Ritmo semanal sugerido

| Quando | Atividade |
| --- | --- |
| Após a segunda | Atualizar backlog da sprint com o tema teórico |
| Quarta (aula) | Coding session coletivo |
| Até domingo | Fechar PR/issues da semana + atualizar docs |
| Antes de P1/P2 | Ensaio da apresentação (todos falam pelo menos um tópico) |

## Critérios internos de qualidade

- Código organizado e compilável a partir do README/docs.
- Subset Python documentada (o que entra / o que não entra).
- Exemplos de entrada (`.py`) e saída (`.c`) versionados.
- Site MkDocs refletindo o estado real do projeto.


