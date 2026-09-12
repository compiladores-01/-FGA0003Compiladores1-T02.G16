%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

%token IDENTIFIER ATRIBUES NUMBER FLOAT STRING BOOLEAN
%token PRINT IF ELSE WHILE COLON
%token LPAREN RPAREN

%%
program:
    command;

command:
    variable |
    PRINT LPAREN value RPAREN;

variable:
    IDENTIFIER ATRIBUES value;

value:
    NUMBER | FLOAT | STRING | BOOLEAN;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro sintático: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}
