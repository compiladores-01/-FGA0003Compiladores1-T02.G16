# Semana 9

Material de referência: [sergioaafreitas/COMP1 — semana 09](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2009)

## Conteúdo no repositório da disciplina

### Estrutura

| Caminho | Sobre |
| --- | --- |
| `src/lexer.l` / `src/parser.y` | Flex + Bison |
| `src/ast.c` / `src/ast.h` | AST e funções de **otimização** |
| `tests/*.in` | Casos de teste |
| `Makefile` | Alvos `make`, `make test`, `make clean` |
| `README.md` | Enunciado da prática |

**Foco da prática:** **otimização de código** — em especial *constant folding* (simplificação de constantes) sobre a AST.

## Como praticar

```bash
cd "COMP1/semana 09"
make
make test
```

## Relação com o nosso projeto (Python → JS)

- [ ] Aplicar constant folding na AST ou na IR antes de emitir JS
- [ ] (Opcional) dead code elimination trivial
- [ ] Documentar a otimização em Decisões Técnicas / Problemas e Soluções

## Observações da equipe

_
