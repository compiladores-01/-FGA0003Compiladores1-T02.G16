## Introdução

Bem-vindo ao repositório do projeto de **Compiladores 1** da Universidade de Brasília.

O projeto aborda os fundamentos e os mecanismos envolvidos na construção de compiladores: análise léxica, análise sintática, representação intermediária, análise semântica e geração de código. Como aplicação prática, a equipe desenvolve um compilador de um subconjunto de `Python` para `C`, utilizando **Flex** e **Bison**.



## Como Executar

### 1. Clonar o repositório

```bash
git clone https://github.com/Fernandavazgit1/-FGA0003Compiladores1-T02.G16.git
cd -FGA0003Compiladores1-T02.G16
```

### 2. Instalar dependências

É necessário ter **Flex**, **Bison** e **GCC** instalados.

Em distribuições Linux baseadas em Debian/Ubuntu:

```bash
sudo apt-get update
sudo apt-get install flex bison build-essential
```

No Windows, recomenda-se utilizar **WSL2** ou **MSYS2 MinGW64**.

### 3. Gerar os arquivos do compilador

Na raiz do projeto, execute:

```bash
bison -d parser/parser.y -o parser.tab.c
flex -o lex.yy.c lexer/lexer.l
```

Esses comandos geram `parser.tab.c`, `parser.tab.h` e `lex.yy.c`.

### 4. Compilar o compilador

```bash
gcc parser.tab.c lex.yy.c -o compilador
```

No Windows com MSYS2, o comando equivalente pode ser executado no terminal MinGW64:

```bash
gcc parser.tab.c lex.yy.c -o compilador.exe
```

### 5. Executar

O compilador recebe a entrada pela entrada padrão:

```bash
echo "1 + 2" | ./compilador
```

Também é possível usar um arquivo:

```bash
./compilador < entrada.py
```

No Windows:

```bash
Get-Content entrada.py | .\compilador.exe
```

## Estado Atual

O protótipo atual reconhece expressões aritméticas com:

- números inteiros;
- operadores `+`, `-`, `*` e `/`;
- parênteses;
- tratamento básico de caracteres inválidos;
- análise sintática realizada pelo Bison.

As próximas etapas ampliam o subconjunto de Python com variáveis, estruturas de controle, funções, análise semântica e geração de código C.



## Pipeline do Compilador

```text
programa.py -> Flex -> tokens -> Bison -> AST -> análise semântica -> código C
```

## Melhorias Planejadas

- ampliar o conjunto de tokens reconhecidos;
- implementar variáveis e atribuições;
- adicionar estruturas `if`, `else` e `while`;
- construir e percorrer a AST;
- implementar tabela de símbolos e checagens semânticas;
- gerar arquivos `.c` a partir da AST ou de uma representação intermediária;
- adicionar testes automatizados;
- documentar decisões técnicas, problemas e soluções.

## Organização da Equipe

As atividades são organizadas em sprints, com acompanhamento no GitHub e na documentação do projeto. As páginas de planejamento, atas, atividades semanais e decisões técnicas estão disponíveis no site MkDocs.
![Logo do Projeto](C:\Users\euoid\Documents\compiladores\-FGA0003Compiladores1-T02.G16\docs\assets\ptoc.jpg)