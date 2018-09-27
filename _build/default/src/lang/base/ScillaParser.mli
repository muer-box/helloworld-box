
(* The type of tokens. *)

type token = 
  | WITH
  | UNDERSCORE
  | TRANSITION
  | TID of (string)
  | TFUN
  | TARROW
  | STRING of (string)
  | SEND
  | SEMICOLON
  | RPAREN
  | RBRACE
  | PERIOD
  | NUMLIT of (Big_int.big_int)
  | MATCH
  | MAP
  | LPAREN
  | LIBRARY
  | LET
  | LBRACE
  | IN
  | IMPORT
  | ID of (string)
  | HEXLIT of (string)
  | FUN
  | FORALL
  | FIELD
  | EVENT
  | EQ
  | EOF
  | END
  | EMP
  | CONTRACT
  | COMMA
  | COLON
  | CID of (string)
  | BUILTIN
  | BLOCK
  | BIND
  | BAR
  | AT
  | ASSIGN
  | ARROW
  | AND
  | ACCEPT

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val types: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Syntax.typ list)

val stmts_term: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (ParserUtil.ParsedSyntax.stmt_annot list)

val lmodule: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (ParserUtil.ParsedSyntax.library)

val exps: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (ParserUtil.ParsedSyntax.expr_annot list)

val cmodule: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (ParserUtil.ParsedSyntax.cmodule)
