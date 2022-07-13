
(* The type of tokens. *)

type token = 
  | TTrue
  | TSC
  | TInt of (int)
  | TId of (string)
  | TFalse
  | EOL
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast_exist.matrix)

val entries: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast_exist.entry list)
