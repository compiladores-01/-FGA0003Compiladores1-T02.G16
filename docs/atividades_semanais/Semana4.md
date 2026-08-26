# Semana 4

Material de referência: [sergioaafreitas/COMP1 — semana 04](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2004)

## Conteúdo no repositório da disciplina

### Código (`semana 04/src`)

| Arquivo | Sobre |
| --- | --- |
| `scanner.l` | Tokens de expressões aritméticas |
| `parser.y` | Gramática Bison com precedência (`*`/`/` sobre `+`/`-`) |
| `Makefile` | Compilação automatizada |
| `README.md` | Como compilar, executar e interpretar erros |

**Foco da prática:** implementação inicial do **parser** integrado ao scanner — reconhecimento de expressões com números, operadores e parênteses.

## Como praticar

```bash
cd "COMP1/semana 04/src"
make
echo "3+4*2" | ./parser
```

- Entrada válida: o exemplo mínimo encerra em silêncio (sucesso).
- Entrada inválida: mensagem de erro sintático.

## Relação com o nosso projeto (Python → JS)

- [ ] Criar `parser.y` da subset (atribuição, expressões, depois `if`/`while`)
- [ ] Definir precedência dos operadores Python que forem suportados
- [ ] Integrar lexer + parser no Makefile do repositório da equipe

## Observações da equipe

_
