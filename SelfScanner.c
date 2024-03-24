#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tokens.h"
#include "lex.yy.c"

extern FILE *yyin;

const char *token_names[] = {
    "INT_TYPE",
    "STRING_TYPE",
    "FLOAT_TYPE",
    "BOOLEAN_TYPE",
    "IF_KEYWORD",
    "ELSEIF_KEYWORD",
    "ELSE_KEYWORD",
    "LOOP_KEYWORD",
    "METHOD_KEYWORD",
    "RETURN_KEYWORD",
    "PRINT_FUNCTION",
    "SCAN_FUNCTION",
    "SEMICOLON",
    "ADD_OP",
    "SUB_OP",
    "MULT_OP",
    "DIV_OP",
    "ASSIGN_OP",
    "LEFT_PAREN",
    "RIGHT_PAREN",
    "LEFT_BRACE",
    "RIGHT_BRACE",
    "COMMA",
    "INTEGER",
    "FLOAT",
    "STRING",
    "BOOLEAN",
    "IDENTIFIER",
    "LESS_THAN",
    "GREATER_THAN",
    "WHILE_KEYWORD",
    "SCAN_KEYWORD",
    "COMMENT",
    "UNKNOWN_TOKEN",
    "CONSTANT",
    "FINAL_KEYWORD"
};



// Function to tokenize the input file and print out the tokens
int tokenize_and_print(FILE *file) {
    TokenType token;
    
    do {
        token = yylex();
       
    } while (token != EOF);

    return 0;
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error opening file");
        return EXIT_FAILURE;
    }

    // Set the input file for the lexer
    yyin = file;

    // Tokenize and print out the tokens
    tokenize_and_print(file);

    fclose(file);

    return EXIT_SUCCESS;
}

