package pl6;
import java_cup.runtime.*;
%%
%unicode
%cup
%line
%column

ENDOFLINE=\n|\r|\n\r
BLANK={ENDOFLINE}+|[ \t\f]+

%%
[iI][nN][tT] { return new Symbol(sym.TIPO_INT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
[fF][lL][oO][aA][tT] { return new Symbol(sym.TIPO_FLOAT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
[pP][rR][iI][nN][tT] { return new Symbol(sym.PRINT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
[:digit:]+ { return new Symbol(sym.INTEGER, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1), new Integer(yytext())); }
\d+\.?\d+([eE][+-]?\d+)?|\d+\.?\d*([eE][+-]?\d+)? { return new Symbol(sym.FLOAT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1), new Float(yytext())); }
[sS][qQ][rR][tT] { return new Symbol(sym.SQRT, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
[:jletter:][:jletterdigit:]* { 	return new Symbol(sym.ID, yyline+1, yycolumn+1, yytext()); }
"+" { return new Symbol(sym.PLUS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"-" { return new Symbol(sym.MINUS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"*" { return new Symbol(sym.TIMES, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"/" { return new Symbol(sym.DIV, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"^" { return new Symbol(sym.POW, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
";" { return new Symbol(sym.SEMICOLON, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"(" { return new Symbol(sym.LEFT_PARENTHESIS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
")" { return new Symbol(sym.RIGHT_PARENTHESIS, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"[" { return new Symbol(sym.LEFT_SQBRACKET, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"]" { return new Symbol(sym.RIGHT_SQBRACKET, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"{" { return new Symbol(sym.LEFT_BRACE, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"}" { return new Symbol(sym.RIGHT_BRACE, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
"=" { return new Symbol(sym.ASSIGN, Integer.valueOf(yyline+1), Integer.valueOf(yycolumn+1)); }
{BLANK} {}
. { System.out.println("[Lex] Error léxico en línea "+(yyline+1)+", columna "+ (yycolumn+1)); }