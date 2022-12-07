%{
#include<stdio.h>
#include<string.h>
int n,m;
%}

%%
[(]	{n++,m++;}
[)]	{n--;}
[+-/*%]	
[a-zA-Z]+
[+-]?[0-9]+	
.	{}
%%

int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("word.txt","r");
yylex();
if(n==0){
printf("Valid\n");
printf("No of Brackets: %d\n",m);
}
else
	printf("Invalid");
return 0;
}
