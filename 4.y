%{#include<stdio.h>
#include<stdlib.h>
int yylex();
void yyerror(const char *s);
%}
%token num
%left '+''-'
%left '*''/'
%%
input:exp {printf("%d\n",$$);exit(0);}
exp:exp'+'exp {$$=$1+$3;}
|exp'-'exp {$$=$1-$3;}
|exp'*'exp {$$=$1*$3;}
|exp'/'exp {if($3==0){printf("Division by zero\n");exit(0);}
else
$$=$1/$3;}
|'('exp')' {$$=$2;}
|num {$$=$1;};
%%
int main()
{
printf("Enter the expression:\n");
yyparse();
}
int yywrap()
{
    return 1;
}