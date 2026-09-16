# Documentação dos Tokens

Esta documentação descreve **todos os tokens** reconhecidos pelo analisador léxico (lexer) do compilador de subconjunto **Python para C**.

> ** Observação sobre o estado atual:**

> Enquanto os PRs não forem mesclados, alguns tokens documentados aqui ainda **não estão** na branch `main`.

---

## O que são tokens?

Tokens são as **unidades mínimas significativas** de um programa. O analisador léxico (implementado com **Flex**) lê o código-fonte caractere por caractere e o transforma em uma sequência de tokens, que são depois consumidos pelo analisador sintático (implementado com **Bison**).

**Exemplo:**

```python
x = 10
print(x)
```

É transformado em:

```
IDENTIFIER(x) ATRIBUES(=) NUMBER(10)
PRINT(print) LPAREN(() IDENTIFIER(x) RPAREN())
```

---

## Tabela de Tokens

### Palavras-chave

Palavras reservadas da linguagem. São reconhecidas pelo lexer e retornam tokens específicos.

| Token | Padrão no lexer | Exemplo | Descrição |
|-------|-----------------|---------|-----------|
| `PRINT` | `"print"` | `print(x)` | Comando de impressão |
| `IF` | `"if"` | `if x > 5:` | Estrutura condicional |
| `ELSE` | `"else"` | `else:` | Caso contrário do `if` |
| `WHILE` | `"while"` | `while x < 10:` | Laço de repetição |

> ** Detalhe:** As palavras-chave `for`, `def`, `return`, `None` **não estão no escopo atual** 

---

### Operadores

Operadores aritméticos e de atribuição.

| Token | Padrão no lexer | Exemplo | Descrição | Origem |
|-------|-----------------|---------|-----------|--------|
| `ATRIBUES` | `"="` | `x = 10` | Atribuição | Código atual |
| `PLUS` | `"+"` | `1 + 2` | Soma | PR #26 |
| `MINUS` | `"-"` | `5 - 3` | Subtração | PR #26 |
| `TIMES` | `"*"` | `2 * 3` | Multiplicação | PR #26 |
| `DIVIDE` | `"/"` | `10 / 2` | Divisão | PR #26 |

> ** Pendência:** Operadores relacionais (`==`, `!=`, `<`, `>`, `<=`, `>=`) **não estão implementados** e **não estão no escopo oficial**. 

---

### Delimitadores

Símbolos que delimitam expressões, blocos e listas de argumentos.

| Token | Padrão no lexer | Exemplo | Descrição | Origem |
|-------|-----------------|---------|-----------|--------|
| `LPAREN` | `"("` | `print(` | Parêntese esquerdo | Código atual |
| `RPAREN` | `")"` | `)` | Parêntese direito | Código atual |
| `COLON` | `":"` | `if x:` | Dois pontos | Código atual |
| `COMMA` | `","` | `print(a, b)` | Vírgula | PR #28 |

> ** Observação:** Colchetes (`[`, `]`) e chaves (`{`, `}`) **não foram implementados** porque listas e dicionários **não estão no escopo oficial** 

---

### Literais

Valores constantes no código.

| Token | Padrão no lexer | Exemplo | Descrição | Origem |
|-------|-----------------|---------|-----------|--------|
| `NUMBER` | `[0-9]+` | `10`, `42` | Número inteiro | Código atual |
| `FLOAT` | `[0-9]+\.[0-9]+` | `3.14`, `2.5` | Número real | Código atual |
| `STRING` | `"..."` ou `'...'` | `"hello"`, `'world'` | Cadeia de caracteres |  |
| `BOOLEAN` | `"true"` ou `"false"` | `true`, `false` | Valor booleano | Código atual |

> ** Detalhe:** O lexer atual usa `true`/`false` (minúsculo), mas o padrão Python é `True`/`False` (maiúsculo). 

> ** Detalhe:** O token `BOOLEAN` retorna o mesmo valor para `true` e `false`. O parser **não consegue distinguir** qual dos dois foi digitado. Se o time quiser distinguir, seria necessário criar tokens separados (`TRUE` e `FALSE`).

---

### Identificadores

Nomes de variáveis, funções e outros identificadores definidos pelo usuário.

| Token | Padrão no lexer | Exemplo | Descrição |
|-------|-----------------|---------|-----------|
| `IDENTIFIER` | `[a-zA-Z_][a-zA-Z0-9_]*` | `x`, `nome`, `_var` | Nome de variável |

**Regras:**
- Deve começar com letra (`a-z`, `A-Z`) ou sublinhado (`_`)
- Pode conter letras, números e sublinhado
- **Não pode** começar com número (ex: `1var` é inválido)

**Exemplos válidos:**
```python
x
nome
_var
variavel123
```

**Exemplos inválidos:**
```python
1var    # não pode começar com número
var-nome  # hífen não é permitido
```

---

### Strings (detalhado)

O token `STRING` reconhece cadeias de caracteres. 
**Delimitadores aceitos:**
- Aspas duplas: `"hello"`
- Aspas simples: `'hello'`

**Suporte a escapes (caracteres especiais):**

| Escape | Significado | Exemplo |
|--------|-------------|---------|
| `\"` | Aspas duplas literais | `"Ele disse \"oi\""` |
| `\'` | Aspas simples literais | `'it\'s'` |
| `\\` | Barra invertida literal | `"caminho\\pasta"` |

**Exemplos válidos:**
```python
"hello"
'hello'
"Ele disse \"oi\""
'string com "aspas" dentro'
""
''
```

**Erro léxico — string não terminada:**

Se uma string não for fechada, o lexer gera uma mensagem de erro **com o número da linha**:

```python
print("hello)
```

Saída:
```
Erro léxico: string não terminada na linha 1
```


---

### Comentários

Comentários começam com `#` e vão até o fim da linha. São **ignorados** pelo lexer (não geram tokens).

```python
# isso é um comentário
x = 10  # isso também é um comentário
```

**Regra no lexer :**
```lex
#.*    { /* Ignorar comentário */ }
```

> ** Observação:** A regra de comentário está **depois** da regra de string, garantindo que `#` dentro de strings (`"# isso é string"`) **não** seja tratado como comentário.

---

### Espaços em branco

Espaços, tabulações e quebras de linha são **ignorados** pelo lexer.

**Regra no lexer:**
```lex
[ \t\n]+    { /* Ignorar espaços em branco */ }
```

> ** Observação:** Esta regra **não** consome o `\n` dentro de strings ou comentários — isso é importante para o controle de linhas (`%option yylineno`, adicionado no PR #25).

---

### Caracteres inválidos

Qualquer caractere que não se encaixe nas regras acima gera uma mensagem de erro.

**Regra no lexer:**
```lex
.    { printf("Caractere inválido: %s\n", yytext); }
```

**Exemplo:**

```python
x = 10 @ 5
```

Saída:
```
Caractere inválido: @
```

> ** Observação:** O lexer **não para** ao encontrar um caractere inválido — ele continua processando o resto do arquivo. Isso é importante para reportar múltiplos erros em uma única execução.

---

## Tokens ainda não implementados

Os seguintes tokens ainda **não foram implementados**, mas estão previstos no escopo do projeto (issue #001) ou são essenciais para o funcionamento:

### 1. Operadores relacionais (essenciais para `if`/`while`)

| Token | Padrão | Exemplo | Descrição |
|-------|--------|---------|-----------|
| `EQ` | `"=="` | `x == 5` | Igualdade |
| `NEQ` | `"!="` | `x != 5` | Diferença |
| `LT` | `"<"` | `x < 5` | Menor que |
| `GT` | `">"` | `x > 5` | Maior que |
| `LE` | `"<="` | `x <= 5` | Menor ou igual |
| `GE` | `">="` | `x >= 5` | Maior ou igual |

** Essenciais:** Sem esses operadores, `if x > 5:` e `while x != 0:` **não funcionam**. Precisa decidir se serão adicionados.

### 2. Indentação (essencial para blocos Python)

| Token | Descrição |
|-------|-----------|
| `INDENT` | Aumento de indentação (início de bloco) |
| `DEDENT` | Diminuição de indentação (fim de bloco) |

** Essenciais:** Python usa indentação para definir blocos. Sem `INDENT`/`DEDENT`, `if`, `else` e `while` **não conseguem ter blocos**.

### 3. Palavras-chave adicionais (fora do escopo atual)

| Token | Descrição |
|-------|-----------|
| `FOR` | Laço de repetição `for` |
| `DEF` | Definição de função |
| `RETURN` | Retorno de função |
| `NONE` | Valor nulo |

** Fora do escopo:** Não estão previstos na issue #001.

---

## Integração com o Bison

Todos os tokens acima são declarados no arquivo `compilador/parser/parser.y` através da diretiva `%token`. O lexer retorna o token correspondente através da função `yylex()`.

**Exemplo de integração:**

No lexer (`compilador/lexer/lexer.l`):
```lex
[0-9]+    { yylval = atoi(yytext); return NUMBER; }
```

No parser (`compilador/parser/parser.y`):
```yacc
%token NUMBER
```

**Fluxo completo:**

```
Código Python → Flex (lexer) → tokens → Bison (parser) → AST → código C
```

---

## Resumo

| Categoria | Tokens | Status |
|-----------|--------|--------|
| Palavras-chave | `PRINT`, `IF`, `ELSE`, `WHILE` |   |
| Operadores aritméticos | `ATRIBUES`, `PLUS`, `MINUS`, `TIMES`, `DIVIDE` |  |
| Delimitadores | `LPAREN`, `RPAREN`, `COLON`, `COMMA` |   |
| Literais | `NUMBER`, `FLOAT`, `STRING`, `BOOLEAN` |   |
| Identificadores | `IDENTIFIER` |   |
| Comentários | Ignorados pelo lexer |   |
| Espaços em branco | Ignorados pelo lexer |   |
| **Operadores relacionais** | `EQ`, `NEQ`, `LT`, `GT`, `LE`, `GE` | Fora do escopo |
| **Indentação** | `INDENT`, `DEDENT` |  Pendente |
| **Palavras-chave adicionais** | `FOR`, `DEF`, `RETURN`, `NONE` |  Fora do escopo |