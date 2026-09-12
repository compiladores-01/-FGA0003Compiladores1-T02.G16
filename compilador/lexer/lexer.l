%{
#include <stdlib.h>
#include "parser.tab.h"
#include <string.h>
%}

%%
"print"     { return PRINT; }
"("     { return LPAREN; }
")"     { return RPAREN; }
"if"        { return IF; }
"else"      { return ELSE; }
"while"     { return WHILE; }
":"         { return COLON; }

[a-zA-Z_][a-zA-Z0-9_]* {
    if (strcmp(yytext, "true") == 0 || strcmp(yytext, "false") == 0)
        return BOOLEAN;
    return IDENTIFIER;
}
"="             {return ATRIBUES;}
[0-9]+          { yylval = atoi(yytext); return NUMBER; }
[0-9]+\.[0-9]+       { return FLOAT; }
\"[^\"]*\"            { return STRING; }



[ \t\n]+        { /* Ignorar espaços em branco */ }
.               { printf("Caractere inválido: %s\n", yytext); }

%%

int yywrap(void) {
    return 1;
}
