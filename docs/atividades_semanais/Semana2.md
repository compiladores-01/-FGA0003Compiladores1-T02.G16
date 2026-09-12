# Semana 2

Material de referência: [sergioaafreitas/COMP1 — semana 02](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2002)

## Conteúdo no repositório da disciplina

### Documentação (`semana 02/docs`)

| Arquivo | Sobre |
| --- | --- |
| Guia – Expressões regulares no Flex | ERs mais usadas para tokens no Flex |

### Código (`semana 02/src`)

| Arquivo | Sobre |
| --- | --- |
| `exemplo.l` / `exemplo.y` | Analisador que reconhece números e operadores |
| `entrada.txt` | Arquivo de teste |
| `Makefile` | Automatiza a compilação (binário `parser`) |
| `exemplo.README.md` | Instruções de compilação e execução |

## Como praticar

```bash
cd "COMP1/semana 02/src"
make
./parser entrada.txt
# ou: ./parser  (entrada manual)
```

## Relação com o nosso projeto (Python → C)

- [x]Estudar ERs para ids, números, strings e operadores Python
- [x]Esboçar tokens da subset no `lexer.l` do projeto
- [x]Reaproveitar o padrão de Makefile da semana 02

## Observações da equipe

_
