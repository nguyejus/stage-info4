
(* The type of tokens. *)

type token = 
  | TYLEGENDFACTOR
  | TYLEGEND
  | TYAXIS
  | TXMIN
  | TXLEGEND
  | TXAXIS
  | TWITH
  | TWEBSITE
  | TVMIN
  | TVERSIONS
  | TSUBDIR
  | TSTRING of (string)
  | TSTAR
  | TSPFLAGS
  | TSORT
  | TSLASH
  | TSIZE
  | TRPAR
  | TRESULTS
  | TRCB
  | TRATIO
  | TPUBLICSCM
  | TPRUNE
  | TPROJECTS
  | TPROJECT
  | TPREFIX
  | TPLUS
  | TPATTERNCOLOR
  | TPATTERN
  | TON
  | TNOTEXISTCOLOR
  | TNONE
  | TMINUS
  | TMARKTYPE
  | TMARKSIZE
  | TLPAR
  | TLOCALSCM
  | TLINESTYLE
  | TLEGEND
  | TLCB
  | TInt of (int)
  | TId of (string)
  | TINFO
  | TGROUP
  | TGRAPH
  | TFloat of (float)
  | TFORMAT
  | TFOOTER
  | TFINDCMD
  | TFINDCHILD
  | TFILENAME
  | TFILE
  | TFACTOR
  | TEXPERIMENT
  | TEQUAL
  | TEMPTY
  | TDIR
  | TDBCONN
  | TDATA
  | TCURVE
  | TCPUCORE
  | TCORREL
  | TCOMMA
  | TCOLOR
  | TCOCCI
  | TCLEANCOLOR
  | TBOOL of (bool)
  | TAUTHOR
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val projects_cache: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((string * Ast_config.version list) list)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (unit)
