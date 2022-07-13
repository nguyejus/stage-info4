
(* The type of tokens. *)

type token = 
  | TVIEW
  | TVERT
  | TUNRELATED
  | TUNKNOWN
  | TTODO
  | TTEXT of (string)
  | TSTODO
  | TSTAR
  | TSPACE
  | TSLASH
  | TSAME
  | TRAB
  | TORG
  | TOK
  | TNONBUG
  | TLINB
  | TLAB
  | TInt of (int)
  | TId of (string)
  | TIGNORED
  | THASHPLUS
  | TFP
  | TFACE
  | TEQUAL
  | TCONFIG
  | TCOLON
  | TCOLE
  | TCOLB
  | TBUG
  | EOL

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val tail: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)

val oneline: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (int * Ast_org.org)

val link: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast_org.link)
