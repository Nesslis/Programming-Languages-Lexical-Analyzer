#ifndef TOKENS_H
#define TOKENS_H

typedef enum {
    INT_TYPE,
    STRING_TYPE,
    FLOAT_TYPE,
    BOOLEAN_TYPE,
    IF_KEYWORD,
    ELSEIF_KEYWORD,
    ELSE_KEYWORD,
    LOOP_KEYWORD,
    METHOD_KEYWORD,
    RETURN_KEYWORD,
    PRINT_FUNCTION,
    SCAN_FUNCTION,
    SEMICOLON,
    ADD_OP,
    SUB_OP,
    MULT_OP,
    DIV_OP,
    ASSIGN_OP,
    LEFT_PAREN,
    RIGHT_PAREN,
    LEFT_BRACE,
    RIGHT_BRACE,
    COMMA,
    INTEGER,
    FLOAT,
    STRING,
    BOOLEAN,
    IDENTIFIER,
    LESS_THAN,
    GREATER_THAN,
    WHILE_KEYWORD,
    SCAN_KEYWORD,
    COMMENT,
    UNKNOWN_TOKEN,
    CONSTANT,
    FINAL_KEYWORD
} TokenType;

#endif /* TOKENS_H */
