# Programming Language : SelfScript

Group Members:
20200808051 Neslihan AKKOÇ ,
20200808041 Uğur AKIN

## Introduction

- Our language name is : SelfScript
- Takes a file with extension .self

- SelfScript is a high-level programming language designed for ease of use and readability. It supports a wide range of data types, control structures, and operator functionalities, making it suitable for various application domains.

## Explanations about the language

- Data Types: SelfScript supports integer, float, string, and boolean data types.
- Control Structures: It includes if-else statements and loops (both for and while loops) for efficient flow control.
  Example
  loopy(i<5) //when user uses it like this it is a while loop
  loopy(i:3; i < 8 ; i++ ) // in this stuation it performs as a for loop

- Method Declarations: Methods are declared using the metoot keyword followed by the method signature and a block of statements, allowing for modular code organization and reusability.
  Example :
  metoot add(a, b) {
  echo a + b
  }

- Operator Support: SelfScript provides comprehensive support for arithmetic and logical operators, enabling developers to perform complex computations and logical operations.
- Commenting: Comments can be added using the `//` syntax, allowing developers to annotate their code for better understanding.

## Syntax Explanation:

- Data Types : Integer, float, string, boolean.
- Control Structures : if-else statements, loops(both for and while loops)
- Method Declarations : Methods are declared using the keyword 'metoot' followed by the method signature and a block of statements, allowing for modular code organization.
- Operator Supports : We implemented support for arithmetic and logical operators
- Comment Support : Comments are denoted by `//`.

- You can run your program by running the makefile and giving it to SelfScript as input:

make
./SelfScript < example.self

## Syntax in BNF

<program> ::= <statement_list>

<statement_list> ::= <statement> | <statement_list> <statement>

<statement> ::= <assignment_statement>
              | <conditional_statement>
              | <loop_statement>
              | <output_statement>
              | <return_statement>
              | <comment_statement>
              | <method_declaration>

<assignment_statement> ::= <variable> '=' <expression> ';'

<conditional_statement> ::= <if_statement>
                           | <else_if_statement>
                           | <else_statement>

<if_statement> ::= 'whynot' '(' <condition> ')' <block>

<else_if_statement> ::= 'whynotagain' '(' <condition> ')' <block>

<else_statement> ::= 'otherwise' <block>

<loop_statement> ::= 'loopy' <loop_type>

<loop_type> ::= <while_loop> | <for_loop>

<while_loop> ::= '(' <condition> ')' <block>

<for_loop> ::= '(' <init_statement> ';' <condition> ';' <update_statement> ')' <block>

<init_statement> ::= <assignment_statement>

<update_statement> ::= <assignment_statement>

<output_statement> ::= 'giggle' '(' <expression> ')' ';'

<return_statement> ::= 'echo' <expression> ';'

<comment_statement> ::= '//' <comment_text>

<method_declaration> ::= 'metoot' <method_signature> <block>

<method_signature> ::= <identifier> '(' <parameter_list> ')' 
<parameter_list> ::= <parameter> | <parameter_list> ',' <parameter>
<parameter> ::= <type> <identifier>

<block> ::= '{' <statement_list> '}'

<expression> ::= <term> | <expression> <add_operator> <term>

<term> ::= <factor> | <term> <mult_operator> <factor>

<factor> ::= <variable> | <value> | '(' <expression> ')' | <unary_operator> <factor>

<value> ::= <integer> | <float> | <string> | <boolean>

<integer> ::= [0-9]+

<float> ::= [0-9]+\.[0-9]+

<string> ::= '"' <characters> '"'

<boolean> ::= 'true' | 'false'

<identifier> ::= [a-zA-Z_][a-zA-Z0-9_]*

<characters> ::= <character> | <characters> <character>

<character> ::= <letter> | <digit> | <special_character>

<letter> ::= [a-zA-Z]

<digit> ::= [0-9]

<special_character> ::= [!@#$%^&*()_+{}\[\]:;<>,.?/~`|-]

<add_operator> ::= '+' | '-'

<mult_operator> ::= '*' | '/'

<unary_operator> ::= '!' | 'not'

