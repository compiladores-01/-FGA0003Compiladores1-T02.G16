# Semana 6

Material de referência: [sergioaafreitas/COMP1 — semana 06](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2006)

## Conteúdo no repositório da disciplina

### Código (`semana 06/src`)

| Arquivo | Sobre |
| --- | --- |
| `lexer.l` / `parser.y` | Front-end Flex/Bison |
| `ast.c` / `ast.h` | Árvore Sintática Abstrata (AST) |
| `tabela.c` / `tabela.h` | Tabela de símbolos |
| `tipos.h` | Tipos básicos |
| `Makefile` / `README.md` | Build e casos de uso |

**Foco da prática:** estruturas internas — construir **AST** e **tabela de símbolos** a partir de expressões com identificadores.

## Como praticar

```bash
cd "COMP1/semana 06/src"
make
./parser
# ex.: a + b
# Ctrl+D para EOF
```

Saída esperada (exemplo do README): dump da AST e símbolos (`a`, `b`, …).

## Relação com o nosso projeto (Python → JS)

- [ ] Definir nós da AST para stmts Python (assign, if, while, call, …)
- [ ] Popular tabela de símbolos nas atribuições / `def`
- [ ] Usar a AST como base da semântica e do codegen JS

!!! tip "Marco P1"
    Esta semana alinha bem com a meta de P1: lexer + parser + AST (+ início da tabela).

## Observações da equipe

_
