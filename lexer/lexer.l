%{
#include <stdlib.h>
#include <string.h>
#include "parser.tab.h"
%}

%option yylineno

%%

[0-9]+          { yylval.ival = atoi(yytext); return NUM; }
\"(\\.|[^\"\\\n])*\"    { 
    yytext[strlen(yytext)-1] = '\0';
    yylval.sval = strdup(yytext + 1); 
    return STRING; 
}

\'(\\.|[^\'\\\n])*\'    { 
    yytext[strlen(yytext)-1] = '\0';
    yylval.sval = strdup(yytext + 1); 
    return STRING; 
}

\"(\\.|[^\"\\\n])*    { 
    fprintf(stderr, "Erro léxico: string não terminada na linha %d\n", yylineno); 
}

\'(\\.|[^\'\\\n])*    { 
    fprintf(stderr, "Erro léxico: string não terminada na linha %d\n", yylineno); 
}
"+"             { return PLUS; }
"-"             { return MINUS; }
"*"             { return TIMES; }
"/"             { return DIVIDE; }
"("             { return LPAREN; }
")"             { return RPAREN; }
[ \t\n]+        { /* Ignorar espaços em branco */ }
.               { printf("Caractere inválido: %s\n", yytext); }

%%