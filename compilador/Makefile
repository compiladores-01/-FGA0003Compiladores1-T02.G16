# Ferramentas
CC     = gcc
FLEX   = flex
BISON  = bison

CFLAGS = -Wall -g
LDLIBS =            # se o flex reclamar de yywrap, use: LDLIBS = -lfl

# Arquivos
OBJ = parser.tab.o lex.yy.o ast.o tabela.o
HDR = ast.h tabela.h tipos.h

# Alvo padrao
all: compilador

# Bison gera o parser e o cabecalho com os tokens
parser.tab.c parser.tab.h: parser.y $(HDR)
	$(BISON) -d parser.y

# Flex depende de parser.tab.h (precisa dos tokens)
lex.yy.c: scanner.l parser.tab.h
	$(FLEX) scanner.l

# Compilacao dos objetos
parser.tab.o: parser.tab.c $(HDR)
	$(CC) $(CFLAGS) -c parser.tab.c

lex.yy.o: lex.yy.c $(HDR)
	$(CC) $(CFLAGS) -c lex.yy.c

ast.o: ast.c ast.h tipos.h
	$(CC) $(CFLAGS) -c ast.c

tabela.o: tabela.c tabela.h
	$(CC) $(CFLAGS) -c tabela.c

# Linkagem final
compilador: $(OBJ)
	$(CC) $(CFLAGS) -o compilador $(OBJ) $(LDLIBS)

# Roda todos os testes de tests/
test: compilador
	@echo "Executando testes em ./tests/"
	@for t in tests/*.txt; do \
		echo "==== Teste: $$t ===="; \
		./compilador < $$t; \
		echo ""; \
	done

clean:
	rm -f *.o parser.tab.c parser.tab.h lex.yy.c compilador

.PHONY: all clean test
