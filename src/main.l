%{
#include <stdio.h>
%}

LETRADIGITO [a-zA-Z0-9]

%%

{LETRADIGITO}+([._-]?{LETRADIGITO}+)*@{LETRADIGITO}+[\._-]

{LETRADIGITO}+([._-]?{LETRADIGITO}+)*@{LETRADIGITO}+([._-]?{LETRADIGITO}+)* {printf("%s\n",yytext);}

\n ;

. ;

%%

int main() {
  yylex();
  return 0;
}
