%{


%}
%token L D
%%
var : L E {printf("Valid Variable \n"); return 0;
}
E : E L ;
| E D ;
| ;
%%
main()
{
 printf("Type of variable: \n"); yyparse();
}
int yywrap()
{
    return 1;
}

