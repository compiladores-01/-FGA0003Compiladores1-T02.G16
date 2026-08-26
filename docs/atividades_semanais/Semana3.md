# Semana 3

Material de referência: [sergioaafreitas/COMP1 — semana 03](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2003)

## Conteúdo no repositório da disciplina

### Código (`semana 03/src`)

| Arquivo | Sobre |
| --- | --- |
| `scanner.l` | Projeto inicial focado na **fase léxica** |

O scanner de exemplo reconhece, entre outros:

- palavras-chave: `if`, `while`
- identificadores e números
- operadores `+ - * / =`
- comentários de linha (`//`) e de bloco (`/* */`)
- caracteres desconhecidos (`UNKNOWN`)

## Como praticar

```bash
cd "COMP1/semana 03/src"
flex scanner.l
gcc -o scanner lex.yy.c -lfl
./scanner
```

## Relação com o nosso projeto (Python → JS)

- [ ] Adaptar o scanner para keywords Python (`def`, `return`, `print`, `True`, `False`, `else`, …)
- [ ] Tratar comentários `#` do Python
- [ ] Emitir tokens que o Bison do projeto vai consumir (não só `printf`)

## Observações da equipe

_
