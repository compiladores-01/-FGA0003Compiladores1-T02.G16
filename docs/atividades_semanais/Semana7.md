# Semana 7

Material de referência: [sergioaafreitas/COMP1 — semana 07](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2007)

## Conteúdo no repositório da disciplina

### Código (`semana 07/src`)

| Arquivo | Sobre |
| --- | --- |
| `lexer.l` / `parser.y` | Front-end |
| `ast.*` / `tabela.*` | AST e símbolos |
| `tests/` | Casos válidos e de erro semântico |
| `run_tests.sh` | Suíte automatizada |
| `README.md` | Objetivo e exemplos |

**Foco da prática:** integração da **análise semântica** — declaração, redeclaração, compatibilidade de tipos e anotação da AST.

### Testes incluídos

| Arquivo | Cenário |
| --- | --- |
| `valido_01.txt` / `valido_02.txt` | Programas válidos |
| `erro_nao_declarada.txt` | Variável não declarada |
| `erro_redeclaracao.txt` | Redeclaração |
| `erro_tipo.txt` | Tipos incompatíveis |

## Como praticar

```bash
cd "COMP1/semana 07/src"
make
./parser
./run_tests.sh
```

## Relação com o nosso projeto (Python → C)

- [ ] Regras semânticas da subset (uso antes de atribuição, tipos em `+`, etc.)
- [ ] Criar pasta `tests/` com `.py` válidos e inválidos
- [ ] Mensagens de erro semântico claras para a demo P2

## Observações da equipe

_
