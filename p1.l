%{
#include<stdio.h>
#include<string.h>
int n=0,o;
%}

%%
[+-/*%]	{printf("Operator");o++;}
[a-zA-Z]+[0-9]*	{printf("identifer");n++;}
.	{printf("Nothing");}
%%

int yywrap()
{
return 1;
}
int main()
{
yylex();
printf("%d",n);
return 0;
}
