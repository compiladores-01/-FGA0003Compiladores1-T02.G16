# Semana 1

Material de referência: [sergioaafreitas/COMP1 — semana 01](https://github.com/sergioaafreitas/COMP1/tree/main/semana%2001)

## Conteúdo no repositório da disciplina

### Documentação (`semana 01/docs`)

| Arquivo | Sobre |
| --- | --- |
| Glossário de termos | Definições importantes de compiladores e ferramentas |
| Guia – Configuração do ambiente | Instalação de Flex, Bison e compilador C/C++ |
| Guia – Projeto de um compilador | Etapas para construir um compilador |
| Guia – Projeto de um interpretador | Etapas para construir um interpretador |
| Trabalho de Compiladores | Proposta do trabalho (PBL, equipes, P1, P2, entrevista) |

### Código (`semana 01/src`)

| Arquivo | Sobre |
| --- | --- |
| `hello.l` / `hello.y` | Exemplo mínimo Flex + Bison (“Hello, World!”) |
| `hello.README.md` | Como compilar e executar o exemplo |

## Como praticar

```bash
git clone https://github.com/sergioaafreitas/COMP1.git
cd "COMP1/semana 01/src"
bison -d hello.y
flex hello.l
gcc -o hello hello.tab.c lex.yy.c -lfl
./hello
```

## Relação com o nosso projeto (Python → JS)

- [ ] Ambiente Flex/Bison configurado (WSL ou MSYS2)
- [ ] Hello World compilando
- [ ] Ler a proposta de trabalho e o guia de compilador
- [ ] Confirmar subset Python → JavaScript da equipe

## Observações da equipe

_
