%{
#include <stdio.h>
#include <string.h>
#include "tokens.h"
%}

%option noyywrap

%%

"PI"                    { printf("CONSTANT: PI\n"); return CONSTANT; }
"SPEED_OF_LIGHT"        { printf("CONSTANT: SPEED_OF_LIGHT\n"); return CONSTANT; }
"GRAVITY"               { printf("CONSTANT: GRAVITATIONAL_CONSTANT\n"); return CONSTANT; }
"PLANCK"                { printf("CONSTANT: PLANCK_CONSTANT\n"); return CONSTANT; }
"int"                   { printf("INT_TYPE\n"); return INT_TYPE; }
"str"                   { printf("STRING_TYPE\n"); return STRING_TYPE; }
"flo"                   { printf("FLOAT_TYPE\n"); return FLOAT_TYPE; }
"bool"                  { printf("BOOLEAN_TYPE\n"); return BOOLEAN_TYPE; }
"whynot"                { printf("IF_KEYWORD\n"); return IF_KEYWORD; }
"whynotagain"           { printf("ELSEIF_KEYWORD\n"); return ELSEIF_KEYWORD; }
"otherwise"             { printf("ELSE_KEYWORD\n"); return ELSE_KEYWORD; }
"loopy"                 { printf("WHILE_KEYWORD\n"); return WHILE_KEYWORD; }
"metoot"                { printf("METHOD_KEYWORD\n"); return METHOD_KEYWORD; }
"echo"                  { printf("RETURN_KEYWORD\n"); return RETURN_KEYWORD; }
"giggle"                { printf("PRINT_FUNCTION\n"); return PRINT_FUNCTION; }
"read"                  { printf("SCAN_FUNCTION\n"); return SCAN_FUNCTION; }
"nochange"              { printf("FINAL_KEYWORD\n"); return FINAL_KEYWORD;}
";"                     { printf("SEMICOLON\n"); return SEMICOLON; }
","                     { printf("COMMA\n"); return COMMA; }
"+"                     { printf("ADD_OP\n"); return ADD_OP; }
"-"                     { printf("SUB_OP\n"); return SUB_OP; }
"*"                     { printf("MULT_OP\n"); return MULT_OP; }
"/"                     { printf("DIV_OP\n"); return DIV_OP; }
"="                     { printf("ASSIGN_OP\n"); return ASSIGN_OP; }
"("                     { printf("LEFT_PAREN\n"); return LEFT_PAREN; }
")"                     { printf("RIGHT_PAREN\n"); return RIGHT_PAREN; }
"{"                     { printf("LEFT_BRACE\n"); return LEFT_BRACE; }
"}"                     { printf("RIGHT_BRACE\n"); return RIGHT_BRACE; }
"<"                     { printf("LESS_THAN\n"); return LESS_THAN; }
">"                     { printf("GREATER_THAN\n"); return GREATER_THAN; }
[0-9]+                  { printf("INTEGER: %s\n", yytext); return INTEGER; }
[0-9]+\.[0-9]+          { printf("FLOAT: %s\n", yytext); return FLOAT; }
\"[^\"\n]*\"            { printf("STRING: %s\n", yytext); return STRING; }
true|false              { printf("BOOLEAN: %s\n", yytext); return BOOLEAN; }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("IDENTIFIER: %s\n", yytext); return IDENTIFIER; }
"//"([^"\n])*            { /* Single-line comment, ignore */ }
"/\*".*"\*/"             { /* Multi-line comment, ignore */ }
[ \t\r]                  { /* Ignore whitespace */ }
.                       { printf("UNKNOWN_TOKEN: %s\n", yytext); return UNKNOWN_TOKEN; }
<<EOF>>                 { return EOF; } // Handle end of file
%%

int my_yywrap() {
    return 1;
}


