# Semana 10

Material de referência: [sergioaafreitas/COMP1 — semana 10](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2010)

## Conteúdo no repositório da disciplina

### Estrutura

| Caminho | Sobre |
| --- | --- |
| `src/lexer.l` / `src/parser.y` | Flex + Bison |
| `src/ast.c` / `src/ast.h` | AST e geração |
| `tests/hello.java`, `tests/calc1.java` | Entradas de teste |
| `Makefile` | `make`, `make test`, `make clean` |
| `README.md` | Objetivo da prática |

**Foco da prática:** **geração de código final** — exemplo simplificado que lê um Java mínimo e emite um **bitcode textual** (IR de saída).

Exemplo (`tests/hello.java`):

```java
int x = 3 + 4;
```

Saída ilustrativa:

```text
LOAD_CONST 3
LOAD_CONST 4
ADD
STORE x
```

## Como praticar

```bash
cd "COMP1/semana 10"
make
make test
```

## Relação com o nosso projeto (Python → C)

No nosso caso o “código final” é **C**, não bitcode Java. Use a semana 10 como modelo de:

- [ ] Percorrer AST/IR e emitir instruções/código alvo
- [ ] Organizar `tests/` com programas de entrada e saída esperada
- [ ] Fechar o pipeline: `.py` → análise → (IR/opt) → `.c` → `gcc`

## Observações da equipe

_
