# Semana 5

Material de referência: [sergioaafreitas/COMP1 — semana 05](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2005)

## Conteúdo no repositório da disciplina

### Código (`semana 05/src`)

| Arquivo | Sobre |
| --- | --- |
| `scanner.l` | Tokens + `;` como terminador |
| `parser.y` | Parser com **precedência** (`%left`) e **recuperação de erros** |
| `Makefile` / `README.md` | Compilação e exemplos |

**Foco da prática:** continuação do parser — expressões terminadas em `;`, avaliação com resultado impresso, e recuperação via `error` até `;` (`yyerrok` / `yyclearin`).

## Como praticar

```bash
cd "COMP1/semana 05/src"
make
./parser
# exemplo: 3+4*2;
# erro:     3++2;
```

## Relação com o nosso projeto (Python → C)

- [ ] Definir estratégia de erro sintático para a subset (ex.: recuperar até nova linha / fim de bloco)
- [ ] Eliminar conflitos shift/reduce com `%left` / `%right` quando necessário
- [ ] Adaptar o modelo de recuperação ao estilo Python (indentação/newlines — se adotarmos)

## Observações da equipe

_
