%{
#include<stdio.h>
#include<string.h>
int n,m;
%}

%%
[aeiou]	{n++;}	
.	{}
%%

int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("word1.txt","r");
yylex();
printf("No of Vowels: %d\n",n);
return 0;
}
