%{
#include<stdio.h>
int pi=0,ni=0,pf=0,nf=0;
%}
%%
[-][0-9]+ {ni++;}
[+]?[0-9]+ {pi++;}
[-][0-9]*\.[0-9]+ {nf++;}
[+]?[0-9]*\.[0-9]+ {pf++;}
%%
int main()
{
	yyin=fopen("p3a.txt","r");
	yylex();
	printf("Number of positive integer %d\n",pi);
	printf("Number of negative integer %d\n",ni);
	printf("Number of positive fraction %d\n",pf);
	printf("Number of negative fraction %d\n",nf);
	return 1;
	}
int yywrap(){
return 1;
}
