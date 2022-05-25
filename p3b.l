%{
#include<stdio.h>
int sf=0,pf=0;
%}
%%
"scanf" {sf++; fprintf(yyout,"readf");}
"printf" {pf++; fprintf(yyout,"writef");}
%%
int yywrap()
{
 return 1;   
}
int main()
{
yyin=fopen("3b1.txt","r");
yyout=fopen("3b2.txt","w");
yylex();
printf("no of scanf =%d\nno of printf =%d\n",sf,pf);
return 0;
}
