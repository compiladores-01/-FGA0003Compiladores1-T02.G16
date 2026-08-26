# Sobre

Documentação do projeto **COMP1** — compilador **Python → JavaScript** desenvolvido na disciplina **FGA0003 – Compiladores 1** (2026/2).

| | |
| --- | --- |
| **Curso** | Engenharia de Software |
| **Turma** | T02 |
| **Carga horária** | 60 horas |
| **Professor** | Dr. Sergio Antônio Andrade de Freitas ([sergiofreitas@unb.br](mailto:sergiofreitas@unb.br)) |
| **Equipe** | 4 integrantes |
| **Alvo** | Traduzir um subconjunto de Python para JavaScript (Flex + Bison) |


## Introdução

O projeto integra teoria e prática (PBL): a cada semana a equipe avança uma fase do compilador — análise léxica, sintática, semântica e geração de código — até obter um tradutor funcional de uma **subset Python** para **JavaScript** executável no Node.js.

## Membros da Equipe

| Nome | Matrícula |
|  --- | --- | 
|**Fernanda Vaz** |  **221007715**|
|**Manoel Castro**| **200023535**|
|**Caua Clemente**|  **222006623**|
| | |
| | |


## Estrutura do Repositório

```text
.
├── lexer/          # Flex — análise léxica
├── parser/         # Bison — análise sintática
├── src/            # Integração / codegen (em evolução)
├── docs/           # Documentação MkDocs
└── mkdocs.yml
```

## Como Executar

```bash
# dependências (WSL/Ubuntu)
sudo apt-get install flex bison build-essential

# gerar e compilar (ajustar conforme o Makefile do repositório)
bison -d parser/parser.y -o parser.tab.c
flex -o lex.yy.c lexer/lexer.l
gcc parser.tab.c lex.yy.c -o compilador

# documentação
python -m pip install -r docs/requirements.txt
python -m mkdocs serve
```


## Links úteis

- Material do professor: [sergioaafreitas/COMP1](https://github.com/sergioaafreitas/COMP1)
- Slides: [slides.cedis.tec.br/c/sergio-compiladores](https://slides.cedis.tec.br/c/sergio-compiladores)
- Formulário **P1** (até 23/09/2026 23h59): [forms.office.com/r/MyKh4HiAAu](https://forms.office.com/r/MyKh4HiAAu)
- Formulário **P2** (até 04/11/2026 23h59): [forms.office.com/r/gNG6Eb7e71](https://forms.office.com/r/gNG6Eb7e71)
