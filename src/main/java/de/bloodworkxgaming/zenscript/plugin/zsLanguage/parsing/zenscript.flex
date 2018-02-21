package de.bloodworkxgaming.zenscript.plugin.zsLanguage.parsing;


import com.intellij.lexer.FlexLexer;
import com.intellij.psi.tree.IElementType;
import de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi.ZsTypes;
import com.intellij.psi.TokenType;

import static de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi.ZsTypes.*;
import static com.intellij.psi.TokenType.*;

// suppress various warnings/inspections for the generated class
@SuppressWarnings ({"FieldCanBeLocal", "UnusedDeclaration", "UnusedAssignment", "AccessStaticViaInstance", "MismatchedReadAndWriteOfArray", "WeakerAccess", "SameParameterValue", "CanBeFinal", "SameReturnValue", "RedundantThrows", "ConstantConditions"})

%%

%class _ZsLexer
%implements FlexLexer
%final
%unicode
%function advance
%type IElementType
%eof{ return;
%eof}


%{
    StringBuffer string = new StringBuffer();

    public _ZsLexer() {
        this(null);
  }
%}


CRLF=\R
WHITE_SPACE=[\ \n\t\f]
FIRST_VALUE_CHARACTER=[^ \n\f\\] | "\\"{CRLF} | "\\".
VALUE_CHARACTER=[^\n\f\\] | "\\"{CRLF} | "\\".
END_OF_LINE_COMMENT=("#"|"//")[^\r\n]*
SEPARATOR=[:=]
KEY_CHARACTER=[^:=\ \n\t\f\\] | "\\ "



LineTerminator = \r|\n|\r\n

WHITE_SPACE_CHAR = [\ \n\r\t\f]

C_STYLE_COMMENT=("/*"[^"*"]{COMMENT_TAIL})|"/*"
DOC_COMMENT="/*""*"+("/"|([^"/""*"]{COMMENT_TAIL}))?
COMMENT_TAIL=([^"*"]*("*"+[^"*""/"])?)*("*"+"/")?
END_OF_LINE_COMMENT="/""/"[^\r\n]*


%state mu
%state emu
%state par
%state comment
%state comment_block
%state comment_end
%state data
%state raw

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     = {LineTerminator} | [ \t\f]


/* */
Identifier = [:jletter:] [:jletterdigit:]*
DecIntegerLiteral = 0 | [1-9][0-9]*

%state STRING
%state WAITING_VALUE

%%

/* keywords */
/*<YYINITIAL> "boolean"            { return ZsTypes_old.BOOLEAN; }
<YYINITIAL> "break"              { return ZsTypes_old.BREAK; } */

<YYINITIAL> {
  /* identifiers */ 
  /*{Identifier}                   { return ZsTypes_old.IDENTIFIER; }*/
 
  /* literals */
  /*{DecIntegerLiteral}            { return ZsTypes_old.INTEGER_LITERAL; }*/

  /* {WHITE_SPACE_CHAR}+ { return ZsTypes_old.WHITESPACE; } */

  /*{C_STYLE_COMMENT} { return ZsTypes_old.C_STYLE_COMMENT; }
  {END_OF_LINE_COMMENT} { return ZsTypes_old.END_OF_LINE_COMMENT; }
  {DOC_COMMENT} { return ZsTypes_old.DOC_COMMENT; }*/

  /* operators */
  /*
  "="                            { return ZsTypes_old.EQ; }
  "=="                           { return ZsTypes_old.EQEQ; }
  "+"                            { return ZsTypes_old.PLUS; }
  */
    // \"  { string.setLength(0); yybegin(STRING); }

    {END_OF_LINE_COMMENT}                       { yybegin(YYINITIAL); return ZsTypes.COMMENT; }
    // {KEY_CHARACTER}+                            { yybegin(YYINITIAL); return ZsTypes.KEYWORD; }
    {SEPARATOR}                                 { yybegin(WAITING_VALUE); return ZsTypes.SEPARATOR; }


    "("                                         { yybegin(YYINITIAL); return L_ROUND_BRACKET; }
    ")"                                         { yybegin(YYINITIAL); return R_ROUND_BRACKET; }
    "<"                                         { yybegin(YYINITIAL); return L_ANGLE_BRACKET; }
    ">"                                         { yybegin(YYINITIAL); return R_ANGLE_BRACKET; }
    "["                                         { yybegin(YYINITIAL); return L_SQUARE_BRACKET; }
    "]"                                         { yybegin(YYINITIAL); return R_SQUARE_BRACKET; }
    "{"                                         { yybegin(YYINITIAL); return L_SWIRL_BRACKET; }
    "}"                                         { yybegin(YYINITIAL); return R_SWIRL_BRACKET; }
}

<WAITING_VALUE> {
    {CRLF}({CRLF}|{WHITE_SPACE})+               { yybegin(YYINITIAL); return TokenType.WHITE_SPACE; }
    {WHITE_SPACE}+                              { yybegin(WAITING_VALUE); return TokenType.WHITE_SPACE; }
    {FIRST_VALUE_CHARACTER}{VALUE_CHARACTER}*   { yybegin(YYINITIAL); return ZsTypes.VALUE; }
}

({CRLF}|{WHITE_SPACE})+                         { yybegin(YYINITIAL); return TokenType.WHITE_SPACE; }


[^] { return BAD_CHARACTER; }
