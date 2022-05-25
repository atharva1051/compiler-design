%{
int ch=0,wd=1,ln=1,sp=0;
%}
%%
" " {sp++;wd++;}
[\n] ln++;wd++;
[\t\n] wd++;
[^\n\t] ch++;
%%
int yywrap()
{
    return 1;
}
int main()
{
  yyin=fopen("p1a.txt","r");
  yylex();
  printf("Number of charector are %d\n",ch);
  printf("Number of spaces are %d\n",sp);
  printf("Number of words are %d\n",wd);
  printf("Number of lines are %d\n",ln);
  return 0;
}