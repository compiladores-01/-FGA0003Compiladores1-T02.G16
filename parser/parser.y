%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(const char *s);
%}

%union {
    int ival;
    char *sval;
}

%token <ival> NUM
%token <sval> STRING
%token PLUS MINUS TIMES DIVIDE LPAREN RPAREN

%%

expressao:
	     expressao PLUS expressao
  | expressao MINUS expressao
  | expressao TIMES expressao
  | expressao DIVIDE expressao
  | LPAREN expressao RPAREN
  | NUM
  ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Erro sintático: %s\n", s);
}

/* Comentado temporariamente pra testar só o Lexer.
   Reativar quando o Parser estiver pronto para rodar o compilador completo. */
/*

int main(void) {
    yyparse();
    return 0;
}
*/