%{
#include<stdio.h>
#include<string.h>
int n,m;
%}
%%
[aeiou] 	{printf("it is a vowel");}
[bcdfghjklmnpqrstvwxyz] {printf("Consonent");}
.	{}
%%
int yywrap()
{
return 1;
}
int main()
{
yylex();
return 0;
}
