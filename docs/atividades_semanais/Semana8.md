# Semana 8

Material de referência: [sergioaafreitas/COMP1 — semana 08](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2008)

## Conteúdo no repositório da disciplina

### Código (`semana 08/src`)

| Arquivo | Sobre |
| --- | --- |
| `ast.c` / `ast.h` | AST |
| `main.c` | Protótipo que gera **TAC** (três endereços) |
| `tests/` + `run_tests.sh` | Exemplos de expressões/atribuições |
| `Makefile` / `README.md` | Build e execução |

**Foco da prática:** protótipo de **geração de código intermediário** (TAC), a partir da AST.

Exemplo de saída (README):

```text
t0 = b * c
t1 = a + t0
t2 = x = t1
```

## Como praticar

```bash
cd "COMP1/semana 08/src"
make
./main
./run_tests.sh
```

## Relação com o nosso projeto (Python → C)

- [ ] Definir IR da equipe (TAC ou lista de instruções equivalente)
- [ ] Emitir IR a partir da AST de programas Python da subset
- [ ] Planejar o passo seguinte: IR → C

## Observações da equipe

_
