%{
#include<stdio.h>
int i=0;
%}
gdigit[0-9]
letter[a-zA-Z]
%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i++;}
"\n" {printf("no of identifiers = %d \n",i);}
%%
int yywrap()
{
    return 1;
}
int main()
{
  printf("Enter the values ");
  yylex();
  return 0;
}