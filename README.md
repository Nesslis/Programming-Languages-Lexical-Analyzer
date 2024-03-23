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

## Syntax
