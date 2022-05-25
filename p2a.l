%{
#include<stdio.h>
int single=0;
int multi=0;    
%}
%%
"//"[a-zA-Z0-9' '\t] {++single;}
"/*"[a-zA-Z0-9' '\t\n]*"*/" {++multi;}
%%
int yywrap()
{
    return 1;
}
int main()
{
    yyin=fopen("p2a.txt","r");
    yyout=fopen("p2ao.txt","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    printf("no of single line comment = %d ", single);
    printf("no of multi line comment = %d ", multi);
    return 0;
}