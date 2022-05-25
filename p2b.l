%{
#include<stdio.h>
int flag=0;
%}
%%
(""[aA][nN][dD]"")|(""[oO][rR]"")|(""[bB][uU][tT]"") {flag=1;}
%%
int yywrap()
{
    return 1;
}
int main()
{
yyin=fopen("p2b.txt","r");
yylex();
if(flag==1)
printf("\nCompound sentence\n");
else
printf("\nSimple sentence\n");
return 0;
}