%{
#include <stdio.h>
%}

%option noyywrap

%%
"whynot"            { printf("IF_KEYWORD\n"); return IF_KEYWORD; }
"whynotagain"       { printf("ELSE_IF_KEYWORD\n"); return ELSE_IF_KEYWORD; }
"otherwise"         { printf("ELSE_KEYWORD\n"); return ELSE_KEYWORD; }
"loopy"             { printf("LOOP_KEYWORD\n"); return LOOP_KEYWORD; }
"metoot"            { printf("METHOD_KEYWORD\n"); return METHOD_KEYWORD; }
"giggle"           { printf("PRINT_KEYWORD\n"); return PRINT_KEYWORD; }
"echo"              { printf("RETURN_KEYWORD\n"); return RETURN_KEYWORD; }
";"                 { printf("SEMICOLON\n"); return SEMICOLON; }
"//"                 { printf("COMMENT_DELIMITER\n"); return COMMENT_DELIMITER; }
[0-9]+              { printf("INTEGER: %s\n", yytext); return INTEGER; }
[0-9]+\.[0-9]+      { printf("FLOAT: %s\n", yytext); return FLOAT; }
\"[^\"\n]*\"        { printf("STRING: %s\n", yytext); return STRING; }
true|false          { printf("BOOLEAN: %s\n", yytext); return BOOLEAN; }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); return IDENTIFIER; }
"+"                 { printf("ADD_OP\n"); return ADD_OP; }
"-"                 { printf("SUB_OP\n"); return SUB_OP; }
"*"                 { printf("MULT_OP\n"); return MULT_OP; }
"/"                 { printf("DIV_OP\n"); return DIV_OP; }
"="                 { printf("ASSIGN_OP\n"); return ASSIGN_OP; }
"("                 { printf("LEFT_PAREN\n"); return LEFT_PAREN; }
")"                 { printf("RIGHT_PAREN\n"); return RIGHT_PAREN; }
"{"                 { printf("LEFT_BRACE\n"); return LEFT_BRACE; }
"}"                 { printf("RIGHT_BRACE\n"); return RIGHT_BRACE; }
[ \t\n]             ; // Ignore whitespace characters
.                   { printf("UNKNOWN_TOKEN: %s\n", yytext); return UNKNOWN_TOKEN; }
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
