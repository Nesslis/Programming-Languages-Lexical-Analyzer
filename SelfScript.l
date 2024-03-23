%{
#include <stdio.h>
%}

%option noyywrap

/* Token Definitions */
%{
#define INT_TYPE            1
#define STRING_TYPE            2
#define FLOAT_TYPE            3
#define BOOLEAN_TYPE           4
#define IF_KEYWORD      5
#define ELSEIF_KEYWORD 6
#define ELSE_KEYWORD   7
#define LOOP_KEYWORD       8
#define METHOD_KEYWORD      9
#define RETURN_KEYWORD      10
#define PRINT_FUNCTION     11
#define SEMICOLON           12
#define ADD_OP              13
#define SUB_OP              14
#define MULT_OP             15
#define DIV_OP              16
#define ASSIGN_OP           17
#define LEFT_PAREN          18
#define RIGHT_PAREN         19
#define LEFT_BRACE          20
#define RIGHT_BRACE         21
#define COMMA               22
#define INTEGER             23
#define FLOAT               24
#define STRING              25
#define BOOLEAN             26
#define IDENTIFIER          27
#define LESS_THAN           28
#define GREATER_THAN        29
#define UNKNOWN_TOKEN       30
%}

%%
"int"               { printf("INT_TYPE\n"); return INT_TYPE; }
"str"               { printf("STRING_TYPE\n"); return STRING_TYPE; }
"flo"               { printf("FLOAT_TYPE\n"); return FLOAT_TYPE; }
"bool"              { printf("BOOLEAN_TYPE\n"); return BOOLEAN_TYPE; }
"whynot"            { printf("IF_KEYWORD\n"); return IF_KEYWORD; }
"whynotagain"       { printf("ELSEIF_KEYWORD\n"); return ELSEIF_KEYWORD; }
"otherwise"         { printf("ELSE_KEYWORD\n"); return ELSE_KEYWORD; }
"loopy"             { printf("LOOP_KEYWORD\n"); return LOOP_KEYWORD; }
"metoot"            { printf("METHOD_KEYWORD\n"); return METHOD_KEYWORD; }
"echo"              { printf("RETURN_KEYWORD\n"); return RETURN_KEYWORD; }
"giggle"            { printf("PRINT_FUNCTION\n"); return PRINT_FUNCTION; }
";"                 { printf("SEMICOLON\n"); return SEMICOLON; }
","                 { printf("COMMA\n"); return COMMA; }
"+"                 { printf("ADD_OP\n"); return ADD_OP; }
"-"                 { printf("SUB_OP\n"); return SUB_OP; }
"*"                 { printf("MULT_OP\n"); return MULT_OP; }
"/"                 { printf("DIV_OP\n"); return DIV_OP; }
"="                 { printf("ASSIGN_OP\n"); return ASSIGN_OP; }
"("                 { printf("LEFT_PAREN\n"); return LEFT_PAREN; }
")"                 { printf("RIGHT_PAREN\n"); return RIGHT_PAREN; }
"{"                 { printf("LEFT_BRACE\n"); return LEFT_BRACE; }
"}"                 { printf("RIGHT_BRACE\n"); return RIGHT_BRACE; }
"<"                 { printf("LESS_THAN\n"); return LESS_THAN; }
">"                 { printf("GREATER_THAN\n"); return GREATER_THAN; }
[0-9]+              { printf("INTEGER: %s\n", yytext); return INTEGER; }
[0-9]+\.[0-9]+      { printf("FLOAT: %s\n", yytext); return FLOAT; }
\"[^\"\n]*\"        { printf("STRING: %s\n", yytext); return STRING; }
true|false          { printf("BOOLEAN: %s\n", yytext); return BOOLEAN; }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); return IDENTIFIER; }
[ \t\n]             ; // Ignore whitespace characters
.                   { printf("UNKNOWN_TOKEN: %s\n", yytext); return UNKNOWN_TOKEN; }
%%

/* Renamed the yywrap() function to avoid conflicts */
int my_yywrap() {
    return 1;
}

int main() {
    int token;
    
    do {
        token = yylex();
    } while (token != 0);

    return 0;
}
