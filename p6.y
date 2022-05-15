%{
#include<stdio.h> 
%} 
%token A B 
%% 
str: s '\n' { return 0;}
s: A s B;
| ;
%%
main()
{
printf("Type the string ? \n");
if(!yyparse())
printf("Valid String");
}
int yyerror()
{
printf("Invalid String");
exit (0);
}

