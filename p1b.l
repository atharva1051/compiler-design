%{
#include<stdio.h>
int i=0;
%}
digit [0-9]
letter [a-zA-Z]
%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i;}
%%
int yywrap()
{
  return 1;

}
int main()
{
yyin=fopen("p1b.txt","r");
yylex();
printf("Number of identifiers = %d\n", i);
return 1;
}
