
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
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
    | TSTRING of (
# 38 "config_parser.mly"
      (string)
# 26 "config_parser.ml"
  )
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
    | TInt of (
# 35 "config_parser.mly"
      (int)
# 59 "config_parser.ml"
  )
    | TId of (
# 37 "config_parser.mly"
      (string)
# 64 "config_parser.ml"
  )
    | TINFO
    | TGROUP
    | TGRAPH
    | TFloat of (
# 36 "config_parser.mly"
      (float)
# 72 "config_parser.ml"
  )
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
    | TBOOL of (
# 39 "config_parser.mly"
      (bool)
# 97 "config_parser.ml"
  )
    | TAUTHOR
    | EOF
  
end

include MenhirBasics

# 1 "config_parser.mly"
  

  exception BadConfigFormat

    (*
      In jgraph, you could use a '\' follow by a newline '\n'
      to have multiple lines legend. For convenience, we use
      '\n' and convert them to '\' followed by '\n'.
    *)
  let to_jgraph_fmt s =
    let newlinere = Str.regexp_string "\\n" in
    Str.global_replace newlinere "\\\n" s

  let build_date m d y =
    snd (Unix.mktime {Unix.tm_mon=m-1; Unix.tm_mday=d; Unix.tm_year=y-1900;
       (* Don't care about the time *)
       Unix.tm_sec=0; Unix.tm_min=0; Unix.tm_hour=0;
       (* Will be normalized by mktime *)
       Unix.tm_wday=0; Unix. tm_yday=0; Unix.tm_isdst=false
      })

# 128 "config_parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_main) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: main. *)

  | MenhirState015 : (('s, _menhir_box_main) _menhir_cell1_TPROJECT _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 015.
        Stack shape : TPROJECT TId.
        Start symbol: main. *)

  | MenhirState023 : (('s, _menhir_box_main) _menhir_cell1_TYAXIS, _menhir_box_main) _menhir_state
    (** State 023.
        Stack shape : TYAXIS.
        Start symbol: main. *)

  | MenhirState067 : (('s, _menhir_box_main) _menhir_cell1_TXMIN, _menhir_box_main) _menhir_state
    (** State 067.
        Stack shape : TXMIN.
        Start symbol: main. *)

  | MenhirState086 : (('s, _menhir_box_main) _menhir_cell1_TVERSIONS, _menhir_box_main) _menhir_state
    (** State 086.
        Stack shape : TVERSIONS.
        Start symbol: main. *)

  | MenhirState090 : (('s, _menhir_box_main) _menhir_cell1_TLPAR _menhir_cell0_TSTRING, _menhir_box_main) _menhir_state
    (** State 090.
        Stack shape : TLPAR TSTRING.
        Start symbol: main. *)

  | MenhirState101 : (('s, _menhir_box_main) _menhir_cell1_version, _menhir_box_main) _menhir_state
    (** State 101.
        Stack shape : version.
        Start symbol: main. *)

  | MenhirState107 : (('s, _menhir_box_main) _menhir_cell1_TSUBDIR, _menhir_box_main) _menhir_state
    (** State 107.
        Stack shape : TSUBDIR.
        Start symbol: main. *)

  | MenhirState108 : (('s, _menhir_box_main) _menhir_cell1_TSLASH, _menhir_box_main) _menhir_state
    (** State 108.
        Stack shape : TSLASH.
        Start symbol: main. *)

  | MenhirState111 : (('s, _menhir_box_main) _menhir_cell1_gid, _menhir_box_main) _menhir_state
    (** State 111.
        Stack shape : gid.
        Start symbol: main. *)

  | MenhirState122 : (('s, _menhir_box_main) _menhir_cell1_TSIZE, _menhir_box_main) _menhir_state
    (** State 122.
        Stack shape : TSIZE.
        Start symbol: main. *)

  | MenhirState123 : ((('s, _menhir_box_main) _menhir_cell1_TSIZE, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 123.
        Stack shape : TSIZE float.
        Start symbol: main. *)

  | MenhirState138 : (('s, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR, _menhir_box_main) _menhir_state
    (** State 138.
        Stack shape : TPATTERNCOLOR.
        Start symbol: main. *)

  | MenhirState139 : ((('s, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 139.
        Stack shape : TPATTERNCOLOR float.
        Start symbol: main. *)

  | MenhirState140 : (((('s, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 140.
        Stack shape : TPATTERNCOLOR float float.
        Start symbol: main. *)

  | MenhirState146 : (('s, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR, _menhir_box_main) _menhir_state
    (** State 146.
        Stack shape : TNOTEXISTCOLOR.
        Start symbol: main. *)

  | MenhirState147 : ((('s, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 147.
        Stack shape : TNOTEXISTCOLOR float.
        Start symbol: main. *)

  | MenhirState148 : (((('s, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 148.
        Stack shape : TNOTEXISTCOLOR float float.
        Start symbol: main. *)

  | MenhirState155 : (('s, _menhir_box_main) _menhir_cell1_TMARKSIZE, _menhir_box_main) _menhir_state
    (** State 155.
        Stack shape : TMARKSIZE.
        Start symbol: main. *)

  | MenhirState184 : (('s, _menhir_box_main) _menhir_cell1_TFACTOR, _menhir_box_main) _menhir_state
    (** State 184.
        Stack shape : TFACTOR.
        Start symbol: main. *)

  | MenhirState187 : (('s, _menhir_box_main) _menhir_cell1_TDIR, _menhir_box_main) _menhir_state
    (** State 187.
        Stack shape : TDIR.
        Start symbol: main. *)

  | MenhirState190 : (('s, _menhir_box_main) _menhir_cell1_TDATA, _menhir_box_main) _menhir_state
    (** State 190.
        Stack shape : TDATA.
        Start symbol: main. *)

  | MenhirState195 : (('s, _menhir_box_main) _menhir_cell1_TLPAR, _menhir_box_main) _menhir_state
    (** State 195.
        Stack shape : TLPAR.
        Start symbol: main. *)

  | MenhirState198 : (('s, _menhir_box_main) _menhir_cell1_expression, _menhir_box_main) _menhir_state
    (** State 198.
        Stack shape : expression.
        Start symbol: main. *)

  | MenhirState200 : (('s, _menhir_box_main) _menhir_cell1_expression, _menhir_box_main) _menhir_state
    (** State 200.
        Stack shape : expression.
        Start symbol: main. *)

  | MenhirState203 : (('s, _menhir_box_main) _menhir_cell1_expression, _menhir_box_main) _menhir_state
    (** State 203.
        Stack shape : expression.
        Start symbol: main. *)

  | MenhirState205 : (('s, _menhir_box_main) _menhir_cell1_expression, _menhir_box_main) _menhir_state
    (** State 205.
        Stack shape : expression.
        Start symbol: main. *)

  | MenhirState213 : (('s, _menhir_box_main) _menhir_cell1_TCOLOR, _menhir_box_main) _menhir_state
    (** State 213.
        Stack shape : TCOLOR.
        Start symbol: main. *)

  | MenhirState214 : ((('s, _menhir_box_main) _menhir_cell1_TCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 214.
        Stack shape : TCOLOR float.
        Start symbol: main. *)

  | MenhirState215 : (((('s, _menhir_box_main) _menhir_cell1_TCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 215.
        Stack shape : TCOLOR float float.
        Start symbol: main. *)

  | MenhirState218 : (('s, _menhir_box_main) _menhir_cell1_TCLEANCOLOR, _menhir_box_main) _menhir_state
    (** State 218.
        Stack shape : TCLEANCOLOR.
        Start symbol: main. *)

  | MenhirState219 : ((('s, _menhir_box_main) _menhir_cell1_TCLEANCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 219.
        Stack shape : TCLEANCOLOR float.
        Start symbol: main. *)

  | MenhirState220 : (((('s, _menhir_box_main) _menhir_cell1_TCLEANCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_state
    (** State 220.
        Stack shape : TCLEANCOLOR float float.
        Start symbol: main. *)

  | MenhirState227 : (('s, _menhir_box_main) _menhir_cell1_attr, _menhir_box_main) _menhir_state
    (** State 227.
        Stack shape : attr.
        Start symbol: main. *)

  | MenhirState233 : (('s, _menhir_box_main) _menhir_cell1_TPATTERN _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 233.
        Stack shape : TPATTERN TId.
        Start symbol: main. *)

  | MenhirState234 : (('s, _menhir_box_main) _menhir_cell1_TLCB, _menhir_box_main) _menhir_state
    (** State 234.
        Stack shape : TLCB.
        Start symbol: main. *)

  | MenhirState238 : (('s, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_state
    (** State 238.
        Stack shape : TGRAPH.
        Start symbol: main. *)

  | MenhirState240 : ((('s, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_cell1_path, _menhir_box_main) _menhir_state
    (** State 240.
        Stack shape : TGRAPH path.
        Start symbol: main. *)

  | MenhirState241 : (((('s, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_cell1_path, _menhir_box_main) _menhir_cell1_list_attr_, _menhir_box_main) _menhir_state
    (** State 241.
        Stack shape : TGRAPH path list(attr).
        Start symbol: main. *)

  | MenhirState244 : (('s, _menhir_box_main) _menhir_cell1_TGROUP _menhir_cell0_TSTRING, _menhir_box_main) _menhir_state
    (** State 244.
        Stack shape : TGROUP TSTRING.
        Start symbol: main. *)

  | MenhirState248 : (('s, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TSTRING, _menhir_box_main) _menhir_state
    (** State 248.
        Stack shape : TCURVE TSTRING.
        Start symbol: main. *)

  | MenhirState251 : (('s, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 251.
        Stack shape : TCURVE TId.
        Start symbol: main. *)

  | MenhirState253 : ((('s, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_TPATTERN _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 253.
        Stack shape : TCURVE TId TPATTERN TId.
        Start symbol: main. *)

  | MenhirState257 : (('s, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 257.
        Stack shape : TCURVE TId.
        Start symbol: main. *)

  | MenhirState261 : (('s, _menhir_box_main) _menhir_cell1_curve, _menhir_box_main) _menhir_state
    (** State 261.
        Stack shape : curve.
        Start symbol: main. *)

  | MenhirState269 : (('s, _menhir_box_main) _menhir_cell1_group, _menhir_box_main) _menhir_state
    (** State 269.
        Stack shape : group.
        Start symbol: main. *)

  | MenhirState281 : (('s, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 281.
        Stack shape : TEXPERIMENT TId TId.
        Start symbol: main. *)

  | MenhirState284 : (('s, _menhir_box_main) _menhir_cell1_projectobj, _menhir_box_main) _menhir_state
    (** State 284.
        Stack shape : projectobj.
        Start symbol: main. *)

  | MenhirState289 : ((('s, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_list_projectobj_ _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 289.
        Stack shape : TEXPERIMENT TId TId list(projectobj) TId.
        Start symbol: main. *)

  | MenhirState292 : (('s, _menhir_box_main) _menhir_cell1_patternsub, _menhir_box_main) _menhir_state
    (** State 292.
        Stack shape : patternsub.
        Start symbol: main. *)

  | MenhirState296 : (('s, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 296.
        Stack shape : TEXPERIMENT TId TId.
        Start symbol: main. *)

  | MenhirState299 : (('s, _menhir_box_main) _menhir_cell1_patternobj, _menhir_box_main) _menhir_state
    (** State 299.
        Stack shape : patternobj.
        Start symbol: main. *)

  | MenhirState304 : ((('s, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_list_patternobj_ _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 304.
        Stack shape : TEXPERIMENT TId TId list(patternobj) TId.
        Start symbol: main. *)

  | MenhirState307 : (('s, _menhir_box_main) _menhir_cell1_projectsub, _menhir_box_main) _menhir_state
    (** State 307.
        Stack shape : projectsub.
        Start symbol: main. *)

  | MenhirState320 : (('s, _menhir_box_main) _menhir_cell1_toplevel, _menhir_box_main) _menhir_state
    (** State 320.
        Stack shape : toplevel.
        Start symbol: main. *)

  | MenhirState330 : ('s, _menhir_box_projects_cache) _menhir_state
    (** State 330.
        Stack shape : .
        Start symbol: projects_cache. *)

  | MenhirState332 : (('s, _menhir_box_projects_cache) _menhir_cell1_TId, _menhir_box_projects_cache) _menhir_state
    (** State 332.
        Stack shape : TId.
        Start symbol: projects_cache. *)

  | MenhirState335 : (('s, _menhir_box_projects_cache) _menhir_cell1_TLPAR _menhir_cell0_TSTRING, _menhir_box_projects_cache) _menhir_state
    (** State 335.
        Stack shape : TLPAR TSTRING.
        Start symbol: projects_cache. *)

  | MenhirState339 : (('s, _menhir_box_projects_cache) _menhir_cell1_full_version_desc, _menhir_box_projects_cache) _menhir_state
    (** State 339.
        Stack shape : full_version_desc.
        Start symbol: projects_cache. *)

  | MenhirState342 : (('s, _menhir_box_projects_cache) _menhir_cell1_project_cache, _menhir_box_projects_cache) _menhir_state
    (** State 342.
        Stack shape : project_cache.
        Start symbol: projects_cache. *)


and ('s, 'r) _menhir_cell1_attr = 
  | MenhirCell1_attr of 's * ('s, 'r) _menhir_state * (Ast_config.attr)

and ('s, 'r) _menhir_cell1_curve = 
  | MenhirCell1_curve of 's * ('s, 'r) _menhir_state * (Ast_config.curve)

and ('s, 'r) _menhir_cell1_date = 
  | MenhirCell1_date of 's * ('s, 'r) _menhir_state * (Unix.tm option)

and ('s, 'r) _menhir_cell1_expression = 
  | MenhirCell1_expression of 's * ('s, 'r) _menhir_state * (Ast_config.expression)

and ('s, 'r) _menhir_cell1_float = 
  | MenhirCell1_float of 's * ('s, 'r) _menhir_state * (float)

and ('s, 'r) _menhir_cell1_full_version_desc = 
  | MenhirCell1_full_version_desc of 's * ('s, 'r) _menhir_state * (Ast_config.version)

and ('s, 'r) _menhir_cell1_gid = 
  | MenhirCell1_gid of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_group = 
  | MenhirCell1_group of 's * ('s, 'r) _menhir_state * (Ast_config.group)

and ('s, 'r) _menhir_cell1_list_attr_ = 
  | MenhirCell1_list_attr_ of 's * ('s, 'r) _menhir_state * (Ast_config.attr list)

and ('s, 'r) _menhir_cell1_list_patternobj_ = 
  | MenhirCell1_list_patternobj_ of 's * ('s, 'r) _menhir_state * (Ast_config.expPattern list)

and ('s, 'r) _menhir_cell1_list_projectobj_ = 
  | MenhirCell1_list_projectobj_ of 's * ('s, 'r) _menhir_state * (Ast_config.expProject list)

and ('s, 'r) _menhir_cell1_path = 
  | MenhirCell1_path of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_patternobj = 
  | MenhirCell1_patternobj of 's * ('s, 'r) _menhir_state * (Ast_config.expPattern)

and ('s, 'r) _menhir_cell1_patternsub = 
  | MenhirCell1_patternsub of 's * ('s, 'r) _menhir_state * (Ast_config.expPattern)

and ('s, 'r) _menhir_cell1_project_cache = 
  | MenhirCell1_project_cache of 's * ('s, 'r) _menhir_state * (string * Ast_config.version list)

and ('s, 'r) _menhir_cell1_projectobj = 
  | MenhirCell1_projectobj of 's * ('s, 'r) _menhir_state * (Ast_config.expProject)

and ('s, 'r) _menhir_cell1_projectsub = 
  | MenhirCell1_projectsub of 's * ('s, 'r) _menhir_state * (Ast_config.expProject)

and ('s, 'r) _menhir_cell1_toplevel = 
  | MenhirCell1_toplevel of 's * ('s, 'r) _menhir_state * (unit)

and ('s, 'r) _menhir_cell1_version = 
  | MenhirCell1_version of 's * ('s, 'r) _menhir_state * (Ast_config.version)

and ('s, 'r) _menhir_cell1_TCLEANCOLOR = 
  | MenhirCell1_TCLEANCOLOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TCOLOR = 
  | MenhirCell1_TCOLOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TCURVE = 
  | MenhirCell1_TCURVE of 's * ('s, 'r) _menhir_state * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_TDATA = 
  | MenhirCell1_TDATA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TDIR = 
  | MenhirCell1_TDIR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TEXPERIMENT = 
  | MenhirCell1_TEXPERIMENT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TFACTOR = 
  | MenhirCell1_TFACTOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TGRAPH = 
  | MenhirCell1_TGRAPH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TGROUP = 
  | MenhirCell1_TGROUP of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TId = 
  | MenhirCell1_TId of 's * ('s, 'r) _menhir_state * (
# 37 "config_parser.mly"
      (string)
# 520 "config_parser.ml"
) * Lexing.position

and 's _menhir_cell0_TId = 
  | MenhirCell0_TId of 's * (
# 37 "config_parser.mly"
      (string)
# 527 "config_parser.ml"
) * Lexing.position

and ('s, 'r) _menhir_cell1_TLCB = 
  | MenhirCell1_TLCB of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TLPAR = 
  | MenhirCell1_TLPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TMARKSIZE = 
  | MenhirCell1_TMARKSIZE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TNOTEXISTCOLOR = 
  | MenhirCell1_TNOTEXISTCOLOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TPATTERN = 
  | MenhirCell1_TPATTERN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TPATTERNCOLOR = 
  | MenhirCell1_TPATTERNCOLOR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TPROJECT = 
  | MenhirCell1_TPROJECT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TSIZE = 
  | MenhirCell1_TSIZE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TSLASH = 
  | MenhirCell1_TSLASH of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_TSTRING = 
  | MenhirCell0_TSTRING of 's * (
# 38 "config_parser.mly"
      (string)
# 561 "config_parser.ml"
)

and ('s, 'r) _menhir_cell1_TSUBDIR = 
  | MenhirCell1_TSUBDIR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TVERSIONS = 
  | MenhirCell1_TVERSIONS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TXMIN = 
  | MenhirCell1_TXMIN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TYAXIS = 
  | MenhirCell1_TYAXIS of 's * ('s, 'r) _menhir_state

and _menhir_box_projects_cache = 
  | MenhirBox_projects_cache of ((string * Ast_config.version list) list) [@@unboxed]

and _menhir_box_main = 
  | MenhirBox_main of (unit) [@@unboxed]

let _menhir_action_002 =
  fun b r v ->
    (
# 105 "config_parser.mly"
                                                   ( Ast_config.Color(r,v,b) )
# 587 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_003 =
  fun () ->
    (
# 106 "config_parser.mly"
                                                   ( Ast_config.Correl("none") )
# 595 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_004 =
  fun dft ->
    (
# 107 "config_parser.mly"
                                                   ( Ast_config.Correl(dft) )
# 603 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_005 =
  fun b r v ->
    (
# 108 "config_parser.mly"
                                                   ( Ast_config.CleanColor(r,v,b))
# 611 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_006 =
  fun dft ->
    (
# 109 "config_parser.mly"
                                                   ( Ast_config.DftPattern(dft))
# 619 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_007 =
  fun b r v ->
    (
# 110 "config_parser.mly"
                                                   ( Ast_config.PatternColor(r,v,b))
# 627 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_008 =
  fun e ->
    (
# 111 "config_parser.mly"
                                                   ( Ast_config.Data(e))
# 635 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_009 =
  fun d ->
    (
# 112 "config_parser.mly"
                                                   ( Ast_config.Dir(d))
# 643 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_010 =
  fun d ->
    (
# 113 "config_parser.mly"
                                                   ( Ast_config.SubDir(d))
# 651 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_011 =
  fun f ->
    (
# 114 "config_parser.mly"
                                                   ( Ast_config.Factor(f))
# 659 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_012 =
  fun f ->
    (
# 116 "config_parser.mly"
    ( if f = "" then Ast_config.File(None) else Ast_config.File(Some f) )
# 667 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_013 =
  fun () ->
    (
# 117 "config_parser.mly"
                                                   ( Ast_config.File(None))
# 675 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_014 =
  fun b ->
    (
# 118 "config_parser.mly"
                                                   ( Ast_config.Filename(b))
# 683 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_015 =
  fun l ->
    (
# 119 "config_parser.mly"
                                                   ( Ast_config.Footer(l))
# 691 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_016 =
  fun dft ->
    (
# 120 "config_parser.mly"
                                                   ( Ast_config.Format(dft) )
# 699 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_017 =
  fun b ->
    (
# 121 "config_parser.mly"
                                                   ( Ast_config.Info(b))
# 707 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_018 =
  fun l ->
    (
# 122 "config_parser.mly"
                                                   ( Ast_config.Legend(l))
# 715 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_019 =
  fun l ->
    (
# 123 "config_parser.mly"
                                                   ( Ast_config.XLegend(to_jgraph_fmt l))
# 723 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_020 =
  fun l ->
    (
# 124 "config_parser.mly"
                                                   ( Ast_config.YLegend(to_jgraph_fmt l))
# 731 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_021 =
  fun f ->
    (
# 125 "config_parser.mly"
                                                   ( Ast_config.YLegendFactor(f))
# 739 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_022 =
  fun () ->
    (
# 126 "config_parser.mly"
                                                   ( Ast_config.LineType("none"))
# 747 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_023 =
  fun s ->
    (
# 127 "config_parser.mly"
                                                   ( Ast_config.LineType(s))
# 755 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_024 =
  fun () ->
    (
# 128 "config_parser.mly"
                                                   ( Ast_config.MarkType("none"))
# 763 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_025 =
  fun m ->
    (
# 129 "config_parser.mly"
                                                   ( Ast_config.MarkType(m))
# 771 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_026 =
  fun v ->
    (
# 130 "config_parser.mly"
                                                   ( Ast_config.MarkSize(v))
# 779 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_027 =
  fun t ->
    (
# 131 "config_parser.mly"
                                                   ( Ast_config.XAxis(t))
# 787 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_028 =
  fun v ->
    (
# 132 "config_parser.mly"
                                                   ( Ast_config.XMin(v))
# 795 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_029 =
  fun t ->
    (
# 133 "config_parser.mly"
                                                   ( Ast_config.YAxis(t))
# 803 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_030 =
  fun b r v ->
    (
# 134 "config_parser.mly"
                                                   ( Ast_config.NotExistColor(r,v,b))
# 811 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_031 =
  fun prj ->
    (
# 135 "config_parser.mly"
                                                   ( Ast_config.DftProject(prj))
# 819 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_032 =
  fun b ->
    (
# 136 "config_parser.mly"
                                                   ( Ast_config.Author(b))
# 827 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_033 =
  fun b ->
    (
# 137 "config_parser.mly"
                                                   ( Ast_config.Prune(b))
# 835 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_034 =
  fun b ->
    (
# 138 "config_parser.mly"
                                                   ( Ast_config.Ratio(b))
# 843 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_035 =
  fun vs ->
    (
# 139 "config_parser.mly"
                                                   (
  match vs with
      (name, _,_)::_ ->
	let count = List.length (Str.split (Str.regexp_string (Str.quote "/")) name) in
	Ast_config.Version (count, vs)
    | [] -> Ast_config.Version (0, []))
# 856 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_036 =
  fun re ->
    (
# 145 "config_parser.mly"
                                                   ( Ast_config.VersionRE (re))
# 864 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_037 =
  fun v ->
    (
# 146 "config_parser.mly"
                                                   ( Ast_config.VMin(v))
# 872 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_038 =
  fun v ->
    (
# 147 "config_parser.mly"
                                                   ( Ast_config.LOCALSCM(v))
# 880 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_039 =
  fun v ->
    (
# 148 "config_parser.mly"
                                                   ( Ast_config.PUBLICSCM(v))
# 888 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_040 =
  fun f ->
    (
# 149 "config_parser.mly"
                                                   ( Ast_config.SPFlags(f))
# 896 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_041 =
  fun b ->
    (
# 150 "config_parser.mly"
                                                   ( Ast_config.Sort(b))
# 904 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_042 =
  fun x y ->
    (
# 151 "config_parser.mly"
                                                   ( Ast_config.Size(x,y))
# 912 "config_parser.ml"
     : (Ast_config.attr))

let _menhir_action_043 =
  fun atts ->
    (
# 154 "config_parser.mly"
                            (atts)
# 920 "config_parser.ml"
     : (Ast_config.attr list))

let _menhir_action_044 =
  fun _endpos_p_ _startpos__1_ p ->
    let _endpos = _endpos_p_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 175 "config_parser.mly"
                                   ( (Some p,None  ,   [], Misc.getpos _startpos__1_ _endofs) )
# 930 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_045 =
  fun _endpos_atts_ _startpos__1_ atts p ->
    let _endpos = _endpos_atts_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 176 "config_parser.mly"
                                   ( (Some p,None  , atts, Misc.getpos _startpos__1_ _endofs) )
# 940 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_046 =
  fun _endpos_d_ _startpos__1_ d ->
    let _endpos = _endpos_d_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 177 "config_parser.mly"
                                   ( (None  ,Some d,   [], Misc.getpos _startpos__1_ _endofs) )
# 950 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_047 =
  fun _endpos_atts_ _startpos__1_ atts d ->
    let _endpos = _endpos_atts_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 178 "config_parser.mly"
                                   ( (None  ,Some d, atts, Misc.getpos _startpos__1_ _endofs) )
# 960 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_048 =
  fun _endpos_atts_ _startpos__1_ atts d p ->
    let _endpos = _endpos_atts_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 180 "config_parser.mly"
    ( (Some p, Some d, atts, Misc.getpos _startpos__1_ _endofs) )
# 970 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_049 =
  fun _endpos_d_ _startpos__1_ d p ->
    let _endpos = _endpos_d_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 182 "config_parser.mly"
    ( (Some p, Some d, [], Misc.getpos _startpos__1_ _endofs) )
# 980 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_050 =
  fun _endpos_atts_ _startpos__1_ atts name ->
    let _endpos = _endpos_atts_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 184 "config_parser.mly"
    ((None, None, Ast_config.Legend(name)::atts,Misc.getpos _startpos__1_ _endofs))
# 990 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_051 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 186 "config_parser.mly"
    ( (None, None, [], Misc.getpos _startpos__1_ _endofs) )
# 1000 "config_parser.ml"
     : (Ast_config.curve))

let _menhir_action_052 =
  fun d m y ->
    (
# 165 "config_parser.mly"
                                                        ( Some (build_date m d y)  )
# 1008 "config_parser.ml"
     : (Unix.tm option))

let _menhir_action_053 =
  fun descExperiment name ->
    (
# 84 "config_parser.mly"
                                                  (Setup.addExp name (descExperiment))
# 1016 "config_parser.ml"
     : (unit))

let _menhir_action_054 =
  fun d ->
    (
# 246 "config_parser.mly"
                                     ( Ast_config.Pattern d     )
# 1024 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_055 =
  fun p ->
    (
# 247 "config_parser.mly"
                                     ( Ast_config.Project p     )
# 1032 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_056 =
  fun f ->
    (
# 248 "config_parser.mly"
                                     ( Ast_config.Cst f         )
# 1040 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_057 =
  fun e ->
    (
# 249 "config_parser.mly"
                                     ( e                        )
# 1048 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_058 =
  fun e1 e2 ->
    (
# 250 "config_parser.mly"
                                     ( Ast_config.Plus(e1, e2)  )
# 1056 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_059 =
  fun e1 e2 ->
    (
# 251 "config_parser.mly"
                                     ( Ast_config.Minus(e1, e2) )
# 1064 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_060 =
  fun e1 e2 ->
    (
# 252 "config_parser.mly"
                                     ( Ast_config.Mul(e1, e2)   )
# 1072 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_061 =
  fun e1 e2 ->
    (
# 253 "config_parser.mly"
                                     ( Ast_config.Div(e1, e2)   )
# 1080 "config_parser.ml"
     : (Ast_config.expression))

let _menhir_action_062 =
  fun f ->
    (
# 197 "config_parser.mly"
                  ( f                 )
# 1088 "config_parser.ml"
     : (float))

let _menhir_action_063 =
  fun i ->
    (
# 198 "config_parser.mly"
                  ( float_of_int i    )
# 1096 "config_parser.ml"
     : (float))

let _menhir_action_064 =
  fun f ->
    (
# 199 "config_parser.mly"
                  ( -. f              )
# 1104 "config_parser.ml"
     : (float))

let _menhir_action_065 =
  fun i ->
    (
# 200 "config_parser.mly"
                  ( -. float_of_int i )
# 1112 "config_parser.ml"
     : (float))

let _menhir_action_066 =
  fun date name size ->
    (
# 162 "config_parser.mly"
                                                             ( (name, date, size) )
# 1120 "config_parser.ml"
     : (Ast_config.version))

let _menhir_action_067 =
  fun p ->
    (
# 72 "config_parser.mly"
                                       ( Setup.setPrefix(p))
# 1128 "config_parser.ml"
     : (unit))

let _menhir_action_068 =
  fun p ->
    (
# 73 "config_parser.mly"
                                       ( Setup.setSmatchDir(p))
# 1136 "config_parser.ml"
     : (unit))

let _menhir_action_069 =
  fun p ->
    (
# 74 "config_parser.mly"
                                       ( Setup.setPrjDir(p))
# 1144 "config_parser.ml"
     : (unit))

let _menhir_action_070 =
  fun p ->
    (
# 75 "config_parser.mly"
                                       ( Setup.setResultsDir(p))
# 1152 "config_parser.ml"
     : (unit))

let _menhir_action_071 =
  fun p ->
    (
# 76 "config_parser.mly"
                                       ( Setup.setWebsiteDir(p))
# 1160 "config_parser.ml"
     : (unit))

let _menhir_action_072 =
  fun c ->
    (
# 77 "config_parser.mly"
                                       ( Setup.setFindCmd(c))
# 1168 "config_parser.ml"
     : (unit))

let _menhir_action_073 =
  fun c ->
    (
# 78 "config_parser.mly"
                                       ( Setup.setFindChild(c))
# 1176 "config_parser.ml"
     : (unit))

let _menhir_action_074 =
  fun f ->
    (
# 79 "config_parser.mly"
                                       ( Setup.setSPFlags(f))
# 1184 "config_parser.ml"
     : (unit))

let _menhir_action_075 =
  fun c ->
    (
# 80 "config_parser.mly"
                                       ( Setup.setCPUcore(c))
# 1192 "config_parser.ml"
     : (unit))

let _menhir_action_076 =
  fun s ->
    (
# 81 "config_parser.mly"
                                       ( Setup.setDBConn(s))
# 1200 "config_parser.ml"
     : (unit))

let _menhir_action_077 =
  fun i ->
    (
# 203 "config_parser.mly"
                           (        i        )
# 1208 "config_parser.ml"
     : (string))

let _menhir_action_078 =
  fun () ->
    (
# 204 "config_parser.mly"
                           ( "nooccurcolor"  )
# 1216 "config_parser.ml"
     : (string))

let _menhir_action_079 =
  fun () ->
    (
# 205 "config_parser.mly"
                           ( "patterns"      )
# 1224 "config_parser.ml"
     : (string))

let _menhir_action_080 =
  fun () ->
    (
# 206 "config_parser.mly"
                           ( "color"         )
# 1232 "config_parser.ml"
     : (string))

let _menhir_action_081 =
  fun () ->
    (
# 207 "config_parser.mly"
                           ( "correl"        )
# 1240 "config_parser.ml"
     : (string))

let _menhir_action_082 =
  fun () ->
    (
# 208 "config_parser.mly"
                           ( "cpucore"       )
# 1248 "config_parser.ml"
     : (string))

let _menhir_action_083 =
  fun () ->
    (
# 209 "config_parser.mly"
                           ( "curve"         )
# 1256 "config_parser.ml"
     : (string))

let _menhir_action_084 =
  fun () ->
    (
# 210 "config_parser.mly"
                           ( "data"          )
# 1264 "config_parser.ml"
     : (string))

let _menhir_action_085 =
  fun () ->
    (
# 211 "config_parser.mly"
                           ( "dir"           )
# 1272 "config_parser.ml"
     : (string))

let _menhir_action_086 =
  fun () ->
    (
# 212 "config_parser.mly"
                           ( "factor"        )
# 1280 "config_parser.ml"
     : (string))

let _menhir_action_087 =
  fun () ->
    (
# 213 "config_parser.mly"
                           ( "file"          )
# 1288 "config_parser.ml"
     : (string))

let _menhir_action_088 =
  fun () ->
    (
# 214 "config_parser.mly"
                           ( "filename"      )
# 1296 "config_parser.ml"
     : (string))

let _menhir_action_089 =
  fun () ->
    (
# 215 "config_parser.mly"
                           ( "graph"         )
# 1304 "config_parser.ml"
     : (string))

let _menhir_action_090 =
  fun () ->
    (
# 216 "config_parser.mly"
                           ( "group"         )
# 1312 "config_parser.ml"
     : (string))

let _menhir_action_091 =
  fun () ->
    (
# 217 "config_parser.mly"
                           ( "info"          )
# 1320 "config_parser.ml"
     : (string))

let _menhir_action_092 =
  fun () ->
    (
# 218 "config_parser.mly"
                           ( "legend"        )
# 1328 "config_parser.ml"
     : (string))

let _menhir_action_093 =
  fun () ->
    (
# 219 "config_parser.mly"
                           ( "linestyle"     )
# 1336 "config_parser.ml"
     : (string))

let _menhir_action_094 =
  fun () ->
    (
# 220 "config_parser.mly"
                           ( "marktype"      )
# 1344 "config_parser.ml"
     : (string))

let _menhir_action_095 =
  fun () ->
    (
# 221 "config_parser.mly"
                           ( "none"          )
# 1352 "config_parser.ml"
     : (string))

let _menhir_action_096 =
  fun () ->
    (
# 222 "config_parser.mly"
                           ( "notexistcolor" )
# 1360 "config_parser.ml"
     : (string))

let _menhir_action_097 =
  fun () ->
    (
# 223 "config_parser.mly"
                           ( "pattern"       )
# 1368 "config_parser.ml"
     : (string))

let _menhir_action_098 =
  fun () ->
    (
# 224 "config_parser.mly"
                           ( "findcmd"       )
# 1376 "config_parser.ml"
     : (string))

let _menhir_action_099 =
  fun () ->
    (
# 225 "config_parser.mly"
                           ( "findchild"     )
# 1384 "config_parser.ml"
     : (string))

let _menhir_action_100 =
  fun () ->
    (
# 226 "config_parser.mly"
                           ( "format"        )
# 1392 "config_parser.ml"
     : (string))

let _menhir_action_101 =
  fun () ->
    (
# 227 "config_parser.mly"
                           ( "occurcolor"    )
# 1400 "config_parser.ml"
     : (string))

let _menhir_action_102 =
  fun () ->
    (
# 228 "config_parser.mly"
                           ( "prefix"        )
# 1408 "config_parser.ml"
     : (string))

let _menhir_action_103 =
  fun () ->
    (
# 229 "config_parser.mly"
                           ( "project"       )
# 1416 "config_parser.ml"
     : (string))

let _menhir_action_104 =
  fun () ->
    (
# 230 "config_parser.mly"
                           ( "projects"      )
# 1424 "config_parser.ml"
     : (string))

let _menhir_action_105 =
  fun () ->
    (
# 231 "config_parser.mly"
                           ( "ratio"         )
# 1432 "config_parser.ml"
     : (string))

let _menhir_action_106 =
  fun () ->
    (
# 232 "config_parser.mly"
                           ( "results"       )
# 1440 "config_parser.ml"
     : (string))

let _menhir_action_107 =
  fun () ->
    (
# 233 "config_parser.mly"
                           ( "size"          )
# 1448 "config_parser.ml"
     : (string))

let _menhir_action_108 =
  fun () ->
    (
# 234 "config_parser.mly"
                           ( "sort"          )
# 1456 "config_parser.ml"
     : (string))

let _menhir_action_109 =
  fun () ->
    (
# 235 "config_parser.mly"
                           ( "flags"         )
# 1464 "config_parser.ml"
     : (string))

let _menhir_action_110 =
  fun () ->
    (
# 236 "config_parser.mly"
                           ( "versions"      )
# 1472 "config_parser.ml"
     : (string))

let _menhir_action_111 =
  fun () ->
    (
# 237 "config_parser.mly"
                           ( "website"       )
# 1480 "config_parser.ml"
     : (string))

let _menhir_action_112 =
  fun () ->
    (
# 238 "config_parser.mly"
                           ( "xaxis"         )
# 1488 "config_parser.ml"
     : (string))

let _menhir_action_113 =
  fun () ->
    (
# 239 "config_parser.mly"
                           ( "xlegend"       )
# 1496 "config_parser.ml"
     : (string))

let _menhir_action_114 =
  fun () ->
    (
# 240 "config_parser.mly"
                           ( "yaxis"         )
# 1504 "config_parser.ml"
     : (string))

let _menhir_action_115 =
  fun () ->
    (
# 241 "config_parser.mly"
                           ( "ylegend"       )
# 1512 "config_parser.ml"
     : (string))

let _menhir_action_116 =
  fun () ->
    (
# 242 "config_parser.mly"
                           ( "ylegendfactor" )
# 1520 "config_parser.ml"
     : (string))

let _menhir_action_117 =
  fun b ->
    (
# 243 "config_parser.mly"
                           ( if b then "true" else "false" )
# 1528 "config_parser.ml"
     : (string))

let _menhir_action_118 =
  fun atts cs name ->
    (
# 171 "config_parser.mly"
                                                             ( Setup.addGph name (atts,Ast_config.Curves(cs)) )
# 1536 "config_parser.ml"
     : (unit))

let _menhir_action_119 =
  fun atts gs name ->
    (
# 172 "config_parser.mly"
                                                                      ( Setup.addGph name (atts,Ast_config.Groups(gs)) )
# 1544 "config_parser.ml"
     : (unit))

let _menhir_action_120 =
  fun cs name ->
    (
# 189 "config_parser.mly"
                                               ( Ast_config.GrpCurve(name,cs))
# 1552 "config_parser.ml"
     : (Ast_config.group))

let _menhir_action_121 =
  fun _endpos_d_ _startpos__1_ d ->
    let _endpos = _endpos_d_ in
    let _endofs = _endpos.Lexing.pos_cnum in
    (
# 190 "config_parser.mly"
                                               ( Ast_config.GrpPatt(d, Misc.getpos _startpos__1_ _endofs))
# 1562 "config_parser.ml"
     : (Ast_config.group))

let _menhir_action_122 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1570 "config_parser.ml"
     : (Ast_config.attr list))

let _menhir_action_123 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1578 "config_parser.ml"
     : (Ast_config.attr list))

let _menhir_action_124 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1586 "config_parser.ml"
     : (Ast_config.curve list))

let _menhir_action_125 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1594 "config_parser.ml"
     : (Ast_config.curve list))

let _menhir_action_126 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1602 "config_parser.ml"
     : (Ast_config.version list))

let _menhir_action_127 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1610 "config_parser.ml"
     : (Ast_config.version list))

let _menhir_action_128 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1618 "config_parser.ml"
     : (Ast_config.expPattern list))

let _menhir_action_129 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1626 "config_parser.ml"
     : (Ast_config.expPattern list))

let _menhir_action_130 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1634 "config_parser.ml"
     : (Ast_config.expPattern list))

let _menhir_action_131 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1642 "config_parser.ml"
     : (Ast_config.expPattern list))

let _menhir_action_132 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1650 "config_parser.ml"
     : ((string * Ast_config.version list) list))

let _menhir_action_133 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1658 "config_parser.ml"
     : ((string * Ast_config.version list) list))

let _menhir_action_134 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1666 "config_parser.ml"
     : (Ast_config.expProject list))

let _menhir_action_135 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1674 "config_parser.ml"
     : (Ast_config.expProject list))

let _menhir_action_136 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1682 "config_parser.ml"
     : (Ast_config.expProject list))

let _menhir_action_137 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1690 "config_parser.ml"
     : (Ast_config.expProject list))

let _menhir_action_138 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1698 "config_parser.ml"
     : (unit list))

let _menhir_action_139 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1706 "config_parser.ml"
     : (unit list))

let _menhir_action_140 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1714 "config_parser.ml"
     : (Ast_config.version list))

let _menhir_action_141 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1722 "config_parser.ml"
     : (Ast_config.version list))

let _menhir_action_142 =
  fun () ->
    (
# 59 "config_parser.mly"
                    ( )
# 1730 "config_parser.ml"
     : (unit))

let _menhir_action_143 =
  fun x ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 1738 "config_parser.ml"
     : (Ast_config.group list))

let _menhir_action_144 =
  fun x xs ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 1746 "config_parser.ml"
     : (Ast_config.group list))

let _menhir_action_145 =
  fun name name2 patterns projects ->
    (
# 88 "config_parser.mly"
     ((Ast_config.ObjPatt((Ast_config.ExpPattern(name))::patterns),Ast_config.ObjProj((Ast_config.ExpProject(name2))::projects)))
# 1754 "config_parser.ml"
     : (Ast_config.experiment))

let _menhir_action_146 =
  fun name name2 patterns projects ->
    (
# 90 "config_parser.mly"
     ((Ast_config.ObjProj((Ast_config.ExpProject(name))::projects),Ast_config.ObjPatt((Ast_config.ExpPattern(name2))::patterns)))
# 1762 "config_parser.ml"
     : (Ast_config.experiment))

let _menhir_action_147 =
  fun p ->
    (
# 193 "config_parser.mly"
                                                ( String.concat "/" p )
# 1770 "config_parser.ml"
     : (string))

let _menhir_action_148 =
  fun p ->
    (
# 194 "config_parser.mly"
                                                ( "/"^ String.concat "/" p )
# 1778 "config_parser.ml"
     : (string))

let _menhir_action_149 =
  fun atts name ->
    (
# 168 "config_parser.mly"
                               ( Setup.addDft name atts )
# 1786 "config_parser.ml"
     : (unit))

let _menhir_action_150 =
  fun name ->
    (
# 93 "config_parser.mly"
                 (Ast_config.ExpPattern(name))
# 1794 "config_parser.ml"
     : (Ast_config.expPattern))

let _menhir_action_151 =
  fun name ->
    (
# 99 "config_parser.mly"
                 (Ast_config.ExpPattern(name))
# 1802 "config_parser.ml"
     : (Ast_config.expPattern))

let _menhir_action_152 =
  fun atts name ->
    (
# 69 "config_parser.mly"
                                              ( Setup.addPrj name (None, atts) )
# 1810 "config_parser.ml"
     : (unit))

let _menhir_action_153 =
  fun project vs ->
    (
# 56 "config_parser.mly"
                                                     ( (project,vs))
# 1818 "config_parser.ml"
     : (string * Ast_config.version list))

let _menhir_action_154 =
  fun name ->
    (
# 96 "config_parser.mly"
                 (Ast_config.ExpProject(name))
# 1826 "config_parser.ml"
     : (Ast_config.expProject))

let _menhir_action_155 =
  fun l ->
    (
# 53 "config_parser.mly"
                            (l)
# 1834 "config_parser.ml"
     : ((string * Ast_config.version list) list))

let _menhir_action_156 =
  fun name ->
    (
# 102 "config_parser.mly"
                 (Ast_config.ExpProject(name))
# 1842 "config_parser.ml"
     : (Ast_config.expProject))

let _menhir_action_157 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1850 "config_parser.ml"
     : (string list))

let _menhir_action_158 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1858 "config_parser.ml"
     : (string list))

let _menhir_action_159 =
  fun () ->
    (
# 62 "config_parser.mly"
          ()
# 1866 "config_parser.ml"
     : (unit))

let _menhir_action_160 =
  fun () ->
    (
# 63 "config_parser.mly"
          ()
# 1874 "config_parser.ml"
     : (unit))

let _menhir_action_161 =
  fun () ->
    (
# 64 "config_parser.mly"
          ()
# 1882 "config_parser.ml"
     : (unit))

let _menhir_action_162 =
  fun () ->
    (
# 65 "config_parser.mly"
             ()
# 1890 "config_parser.ml"
     : (unit))

let _menhir_action_163 =
  fun () ->
    (
# 66 "config_parser.mly"
          ()
# 1898 "config_parser.ml"
     : (unit))

let _menhir_action_164 =
  fun desc ->
    (
# 157 "config_parser.mly"
                                             ( desc )
# 1906 "config_parser.ml"
     : (Ast_config.version))

let _menhir_action_165 =
  fun date name ->
    (
# 158 "config_parser.mly"
                                             ( (name, date, 0) )
# 1914 "config_parser.ml"
     : (Ast_config.version))

let _menhir_action_166 =
  fun name ->
    (
# 159 "config_parser.mly"
                                             ( (name, None, 0) )
# 1922 "config_parser.ml"
     : (Ast_config.version))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | EOF ->
        "EOF"
    | TAUTHOR ->
        "TAUTHOR"
    | TBOOL _ ->
        "TBOOL"
    | TCLEANCOLOR ->
        "TCLEANCOLOR"
    | TCOCCI ->
        "TCOCCI"
    | TCOLOR ->
        "TCOLOR"
    | TCOMMA ->
        "TCOMMA"
    | TCORREL ->
        "TCORREL"
    | TCPUCORE ->
        "TCPUCORE"
    | TCURVE ->
        "TCURVE"
    | TDATA ->
        "TDATA"
    | TDBCONN ->
        "TDBCONN"
    | TDIR ->
        "TDIR"
    | TEMPTY ->
        "TEMPTY"
    | TEQUAL ->
        "TEQUAL"
    | TEXPERIMENT ->
        "TEXPERIMENT"
    | TFACTOR ->
        "TFACTOR"
    | TFILE ->
        "TFILE"
    | TFILENAME ->
        "TFILENAME"
    | TFINDCHILD ->
        "TFINDCHILD"
    | TFINDCMD ->
        "TFINDCMD"
    | TFOOTER ->
        "TFOOTER"
    | TFORMAT ->
        "TFORMAT"
    | TFloat _ ->
        "TFloat"
    | TGRAPH ->
        "TGRAPH"
    | TGROUP ->
        "TGROUP"
    | TINFO ->
        "TINFO"
    | TId _ ->
        "TId"
    | TInt _ ->
        "TInt"
    | TLCB ->
        "TLCB"
    | TLEGEND ->
        "TLEGEND"
    | TLINESTYLE ->
        "TLINESTYLE"
    | TLOCALSCM ->
        "TLOCALSCM"
    | TLPAR ->
        "TLPAR"
    | TMARKSIZE ->
        "TMARKSIZE"
    | TMARKTYPE ->
        "TMARKTYPE"
    | TMINUS ->
        "TMINUS"
    | TNONE ->
        "TNONE"
    | TNOTEXISTCOLOR ->
        "TNOTEXISTCOLOR"
    | TON ->
        "TON"
    | TPATTERN ->
        "TPATTERN"
    | TPATTERNCOLOR ->
        "TPATTERNCOLOR"
    | TPLUS ->
        "TPLUS"
    | TPREFIX ->
        "TPREFIX"
    | TPROJECT ->
        "TPROJECT"
    | TPROJECTS ->
        "TPROJECTS"
    | TPRUNE ->
        "TPRUNE"
    | TPUBLICSCM ->
        "TPUBLICSCM"
    | TRATIO ->
        "TRATIO"
    | TRCB ->
        "TRCB"
    | TRESULTS ->
        "TRESULTS"
    | TRPAR ->
        "TRPAR"
    | TSIZE ->
        "TSIZE"
    | TSLASH ->
        "TSLASH"
    | TSORT ->
        "TSORT"
    | TSPFLAGS ->
        "TSPFLAGS"
    | TSTAR ->
        "TSTAR"
    | TSTRING _ ->
        "TSTRING"
    | TSUBDIR ->
        "TSUBDIR"
    | TVERSIONS ->
        "TVERSIONS"
    | TVMIN ->
        "TVMIN"
    | TWEBSITE ->
        "TWEBSITE"
    | TWITH ->
        "TWITH"
    | TXAXIS ->
        "TXAXIS"
    | TXLEGEND ->
        "TXLEGEND"
    | TXMIN ->
        "TXMIN"
    | TYAXIS ->
        "TYAXIS"
    | TYLEGEND ->
        "TYLEGEND"
    | TYLEGENDFACTOR ->
        "TYLEGENDFACTOR"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_344 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_155 l in
      MenhirBox_projects_cache _v
  
  let rec _menhir_run_343 : type  ttv_stack. (ttv_stack, _menhir_box_projects_cache) _menhir_cell1_project_cache -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _v ->
      let MenhirCell1_project_cache (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_133 x xs in
      _menhir_goto_list_project_cache_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_project_cache_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_projects_cache) _menhir_state -> _menhir_box_projects_cache =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState330 ->
          _menhir_run_344 _menhir_stack _v
      | MenhirState342 ->
          _menhir_run_343 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_328 : type  ttv_stack. ttv_stack -> _menhir_box_main =
    fun _menhir_stack ->
      let _v = _menhir_action_142 () in
      MenhirBox_main _v
  
  let rec _menhir_run_323 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_toplevel -> _ -> _menhir_box_main =
    fun _menhir_stack _v ->
      let MenhirCell1_toplevel (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_139 x xs in
      _menhir_goto_list_toplevel_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_toplevel_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_328 _menhir_stack
      | MenhirState320 ->
          _menhir_run_323 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let p = _v in
              let _ = _menhir_action_071 p in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_gbattr : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok ->
      let _v = _menhir_action_159 () in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_toplevel : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_toplevel (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TWEBSITE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TSPFLAGS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TRESULTS ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TPROJECTS ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TPROJECT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TPREFIX ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TPATTERN ->
          _menhir_run_232 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TGRAPH ->
          _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TFINDCMD ->
          _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TFINDCHILD ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TEXPERIMENT ->
          _menhir_run_277 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TDBCONN ->
          _menhir_run_311 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TCPUCORE ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | TCOCCI ->
          _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState320
      | EOF ->
          let _v = _menhir_action_138 () in
          _menhir_run_323 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _ = _menhir_action_074 f in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let p = _v in
              let _ = _menhir_action_070 p in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let p = _v in
              let _ = _menhir_action_069 p in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TPROJECT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLCB ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TYLEGENDFACTOR ->
                  _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TYLEGEND ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TYAXIS ->
                  _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TXMIN ->
                  _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TXLEGEND ->
                  _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TXAXIS ->
                  _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TVMIN ->
                  _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TVERSIONS ->
                  _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TSUBDIR ->
                  _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TSPFLAGS ->
                  _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TSORT ->
                  _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TSIZE ->
                  _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TRATIO ->
                  _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TPUBLICSCM ->
                  _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TPRUNE ->
                  _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TPROJECT ->
                  _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TPATTERNCOLOR ->
                  _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TPATTERN ->
                  _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TNOTEXISTCOLOR ->
                  _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TMARKTYPE ->
                  _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TMARKSIZE ->
                  _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TLOCALSCM ->
                  _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TLINESTYLE ->
                  _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TLEGEND ->
                  _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TINFO ->
                  _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TFORMAT ->
                  _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TFOOTER ->
                  _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TFILENAME ->
                  _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TFILE ->
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TFACTOR ->
                  _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TDIR ->
                  _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TDATA ->
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TCORREL ->
                  _menhir_run_208 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TCOLOR ->
                  _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TCLEANCOLOR ->
                  _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TAUTHOR ->
                  _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
              | TRCB ->
                  let _v = _menhir_action_122 () in
                  _menhir_run_225 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_016 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_021 f in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_attr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_attr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TYLEGENDFACTOR ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TYLEGEND ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TYAXIS ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TXMIN ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TXLEGEND ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TXAXIS ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TVMIN ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TVERSIONS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TSUBDIR ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TSPFLAGS ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TSORT ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TSIZE ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TRATIO ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TPUBLICSCM ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TPRUNE ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TPROJECT ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TPATTERNCOLOR ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TPATTERN ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TNOTEXISTCOLOR ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TMARKTYPE ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TMARKSIZE ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TLOCALSCM ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TLINESTYLE ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TLEGEND ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TINFO ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TFORMAT ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TFOOTER ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TFILENAME ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TFILE ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TFACTOR ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TDIR ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TDATA ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TCORREL ->
          _menhir_run_208 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TCOLOR ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TCLEANCOLOR ->
          _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TAUTHOR ->
          _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState227
      | TCURVE | TEMPTY | TGROUP | TRCB ->
          let _v = _menhir_action_122 () in
          _menhir_run_228 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let l = _v in
              let _v = _menhir_action_020 l in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TYAXIS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYLEGENDFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_116 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TYLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_115 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TYAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_114 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TXLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_113 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TXAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_112 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TWEBSITE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TVERSIONS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_110 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSPFLAGS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_109 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSORT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_108 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSIZE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_107 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TRESULTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_106 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TRATIO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_105 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TPROJECTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_104 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TPROJECT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_103 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TPREFIX ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_102 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TPATTERNCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_101 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TPATTERN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_097 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TNOTEXISTCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_096 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_095 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TMARKTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_094 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TLINESTYLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_093 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_092 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_077 i in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TINFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_091 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TGROUP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_090 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TGRAPH ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_089 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFORMAT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_100 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFINDCMD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_098 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFINDCHILD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_099 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFILENAME ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_088 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_087 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_086 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TDIR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_085 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TDATA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_084 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCURVE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_083 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCPUCORE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_082 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCORREL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_081 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_080 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCOCCI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_079 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCLEANCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_078 () in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_117 b in
              _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TYAXIS -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TYAXIS (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_029 t in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_066 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TXMIN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState067
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_065 i in
          _menhir_goto_float _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_064 f in
          _menhir_goto_float _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_float : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState220 ->
          _menhir_run_221 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState219 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState218 ->
          _menhir_run_219 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState215 ->
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState214 ->
          _menhir_run_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState213 ->
          _menhir_run_214 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState190 ->
          _menhir_run_196_spec_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState205 ->
          _menhir_run_196_spec_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState203 ->
          _menhir_run_196_spec_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState200 ->
          _menhir_run_196_spec_200 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState198 ->
          _menhir_run_196_spec_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState195 ->
          _menhir_run_196_spec_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState184 ->
          _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState155 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState148 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState123 ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState122 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_221 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TCLEANCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_float (_menhir_stack, _, v) = _menhir_stack in
      let MenhirCell1_float (_menhir_stack, _, r) = _menhir_stack in
      let MenhirCell1_TCLEANCOLOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_005 b r v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_220 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TCLEANCOLOR, _menhir_box_main) _menhir_cell1_float as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState220
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_221 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_221 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_219 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TCLEANCOLOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState219
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState219 _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState219 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_216 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_float (_menhir_stack, _, v) = _menhir_stack in
      let MenhirCell1_float (_menhir_stack, _, r) = _menhir_stack in
      let MenhirCell1_TCOLOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_002 b r v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_215 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TCOLOR, _menhir_box_main) _menhir_cell1_float as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState215
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_214 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TCOLOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState214
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState214 _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_215 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState214 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_196_spec_190 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TDATA -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_207 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState190 _tok
  
  and _menhir_run_207 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TDATA as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TSLASH ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TPLUS ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TMINUS ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TAUTHOR | TCLEANCOLOR | TCOLOR | TCORREL | TCURVE | TDATA | TDIR | TEMPTY | TFACTOR | TFILE | TFILENAME | TFOOTER | TFORMAT | TGROUP | TINFO | TLEGEND | TLINESTYLE | TLOCALSCM | TMARKSIZE | TMARKTYPE | TNOTEXISTCOLOR | TPATTERN | TPATTERNCOLOR | TPROJECT | TPRUNE | TPUBLICSCM | TRATIO | TRCB | TSIZE | TSORT | TSPFLAGS | TSUBDIR | TVERSIONS | TVMIN | TXAXIS | TXLEGEND | TXMIN | TYAXIS | TYLEGEND | TYLEGENDFACTOR ->
          let MenhirCell1_TDATA (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_008 e in
          _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_198 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState198
      | TPATTERN ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState198
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState198
      | TLPAR ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState198
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_063 i in
          _menhir_run_196_spec_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_062 f in
          _menhir_run_196_spec_198 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_191 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let p = _v in
          let _v = _menhir_action_055 p in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expression : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState190 ->
          _menhir_run_207 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState203 ->
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState200 ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState198 ->
          _menhir_run_199 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState195 ->
          _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_206 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TSLASH ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TAUTHOR | TCLEANCOLOR | TCOLOR | TCORREL | TCURVE | TDATA | TDIR | TEMPTY | TFACTOR | TFILE | TFILENAME | TFOOTER | TFORMAT | TGROUP | TINFO | TLEGEND | TLINESTYLE | TLOCALSCM | TMARKSIZE | TMARKTYPE | TMINUS | TNOTEXISTCOLOR | TPATTERN | TPATTERNCOLOR | TPLUS | TPROJECT | TPRUNE | TPUBLICSCM | TRATIO | TRCB | TRPAR | TSIZE | TSORT | TSPFLAGS | TSUBDIR | TVERSIONS | TVMIN | TXAXIS | TXLEGEND | TXMIN | TYAXIS | TYLEGEND | TYLEGENDFACTOR ->
          let MenhirCell1_expression (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_059 e1 e2 in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_200 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | TPATTERN ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | TLPAR ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState200
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_063 i in
          _menhir_run_196_spec_200 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_062 f in
          _menhir_run_196_spec_200 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_193 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let d = _v in
          let _v = _menhir_action_054 d in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_195 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TLPAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | TPATTERN ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | TLPAR ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_063 i in
          _menhir_run_196_spec_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_062 f in
          _menhir_run_196_spec_195 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_196_spec_195 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TLPAR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_197 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState195 _tok
  
  and _menhir_run_197 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TLPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TSLASH ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TRPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_TLPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_057 e in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | TPLUS ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_203 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TMINUS ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_205 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_203 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState203
      | TPATTERN ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState203
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState203
      | TLPAR ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState203
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_063 i in
          _menhir_run_196_spec_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_062 f in
          _menhir_run_196_spec_203 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_196_spec_203 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState203 _tok
  
  and _menhir_run_204 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_expression as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TSLASH ->
          let _menhir_stack = MenhirCell1_expression (_menhir_stack, _menhir_s, _v) in
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer
      | TAUTHOR | TCLEANCOLOR | TCOLOR | TCORREL | TCURVE | TDATA | TDIR | TEMPTY | TFACTOR | TFILE | TFILENAME | TFOOTER | TFORMAT | TGROUP | TINFO | TLEGEND | TLINESTYLE | TLOCALSCM | TMARKSIZE | TMARKTYPE | TMINUS | TNOTEXISTCOLOR | TPATTERN | TPATTERNCOLOR | TPLUS | TPROJECT | TPRUNE | TPUBLICSCM | TRATIO | TRCB | TRPAR | TSIZE | TSORT | TSPFLAGS | TSUBDIR | TVERSIONS | TVMIN | TXAXIS | TXLEGEND | TXMIN | TYAXIS | TYLEGEND | TYLEGENDFACTOR ->
          let MenhirCell1_expression (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_058 e1 e2 in
          _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_205 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
      | TPATTERN ->
          _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
      | TLPAR ->
          _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_063 i in
          _menhir_run_196_spec_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v in
          let _v = _menhir_action_062 f in
          _menhir_run_196_spec_205 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_196_spec_205 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205 _tok
  
  and _menhir_run_196_spec_200 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_201 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expression (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_061 e1 e2 in
      _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_199 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expression (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_060 e1 e2 in
      _menhir_goto_expression _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_196_spec_198 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_expression -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let f = _v in
      let _v = _menhir_action_056 f in
      _menhir_run_199 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_185 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TFACTOR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TFACTOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let f = _v in
      let _v = _menhir_action_011 f in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_156 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TMARKSIZE -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TMARKSIZE (_menhir_stack, _menhir_s) = _menhir_stack in
      let v = _v in
      let _v = _menhir_action_026 v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_149 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_float (_menhir_stack, _, v) = _menhir_stack in
      let MenhirCell1_float (_menhir_stack, _, r) = _menhir_stack in
      let MenhirCell1_TNOTEXISTCOLOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_030 b r v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_148 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR, _menhir_box_main) _menhir_cell1_float as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_147 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TNOTEXISTCOLOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState147 _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState147 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR, _menhir_box_main) _menhir_cell1_float, _menhir_box_main) _menhir_cell1_float -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_float (_menhir_stack, _, v) = _menhir_stack in
      let MenhirCell1_float (_menhir_stack, _, r) = _menhir_stack in
      let MenhirCell1_TPATTERNCOLOR (_menhir_stack, _menhir_s) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_007 b r v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_140 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR, _menhir_box_main) _menhir_cell1_float as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TPATTERNCOLOR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState139 _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState139 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TSIZE, _menhir_box_main) _menhir_cell1_float -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_float (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_TSIZE (_menhir_stack, _menhir_s) = _menhir_stack in
      let y = _v in
      let _v = _menhir_action_042 x y in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_123 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TSIZE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_float (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMINUS ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | TInt _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_0 in
          let _v = _menhir_action_063 i in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFloat _v_2 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let f = _v_2 in
          let _v = _menhir_action_062 f in
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TXMIN -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TXMIN (_menhir_stack, _menhir_s) = _menhir_stack in
      let v = _v in
      let _v = _menhir_action_028 v in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_074 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let l = _v in
              let _v = _menhir_action_019 l in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let t = _v in
              let _v = _menhir_action_027 t in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v in
              let _v = _menhir_action_037 v in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let re = _v in
              let _v = _menhir_action_036 re in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TLCB ->
              let _menhir_stack = MenhirCell1_TVERSIONS (_menhir_stack, _menhir_s) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TLPAR ->
                  _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
              | TRCB ->
                  let _v = _menhir_action_140 () in
                  _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRPAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let name = _v in
              let _v = _menhir_action_166 name in
              _menhir_goto_version _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TCOMMA ->
              let _menhir_stack = MenhirCell1_TLPAR (_menhir_stack, _menhir_s) in
              let _menhir_stack = MenhirCell0_TSTRING (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TInt _v ->
                  _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState090
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_version : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_101 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_version (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TLPAR ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | TRCB ->
          let _v = _menhir_action_140 () in
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_version -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_version (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_141 x xs in
      _menhir_goto_list_version_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_version_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState086 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_104 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TVERSIONS -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_TVERSIONS (_menhir_stack, _menhir_s) = _menhir_stack in
      let vs = _v in
      let _v = _menhir_action_035 vs in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_091 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TLPAR _menhir_cell0_TSTRING as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSLASH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TInt _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSLASH ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TInt _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (m, d, y) = (_v, _v_0, _v_1) in
                      let _v = _menhir_action_052 d m y in
                      _menhir_goto_date _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_date : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TLPAR _menhir_cell0_TSTRING as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState335 ->
          _menhir_run_336 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_336 : type  ttv_stack. ((ttv_stack, _menhir_box_projects_cache) _menhir_cell1_TLPAR _menhir_cell0_TSTRING as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_projects_cache) _menhir_state -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_date (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TCOMMA ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TLPAR _menhir_cell0_TSTRING, ttv_result) _menhir_cell1_date -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRPAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_date (_menhir_stack, _, date) = _menhir_stack in
              let MenhirCell0_TSTRING (_menhir_stack, name) = _menhir_stack in
              let MenhirCell1_TLPAR (_menhir_stack, _menhir_s) = _menhir_stack in
              let size = _v in
              let _v = _menhir_action_066 date name size in
              _menhir_goto_full_version_desc _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_full_version_desc : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState339 ->
          _menhir_run_339 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState332 ->
          _menhir_run_339 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_103_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState101 ->
          _menhir_run_103_spec_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_339 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_projects_cache) _menhir_state -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_full_version_desc (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TLPAR ->
          _menhir_run_333 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState339
      | TRCB ->
          let _v = _menhir_action_126 () in
          _menhir_run_340 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_333 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_projects_cache) _menhir_state -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TLPAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING _v ->
          let _menhir_stack = MenhirCell0_TSTRING (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TCOMMA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TInt _v ->
                  _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState335
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_340 : type  ttv_stack. (ttv_stack, _menhir_box_projects_cache) _menhir_cell1_full_version_desc -> _ -> _ -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_full_version_desc (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_127 x xs in
      _menhir_goto_list_full_version_desc_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_full_version_desc_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_projects_cache) _menhir_state -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState339 ->
          _menhir_run_340 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState332 ->
          _menhir_run_337 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_337 : type  ttv_stack. (ttv_stack, _menhir_box_projects_cache) _menhir_cell1_TId -> _ -> _ -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_TId (_menhir_stack, _menhir_s, project, _) = _menhir_stack in
      let vs = _v in
      let _v = _menhir_action_153 project vs in
      let _menhir_stack = MenhirCell1_project_cache (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TId _v_0 ->
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState342
      | EOF ->
          let _v = _menhir_action_132 () in
          _menhir_run_343 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_331 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_projects_cache) _menhir_state -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell1_TId (_menhir_stack, _menhir_s, _v, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TLCB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLPAR ->
              _menhir_run_333 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState332
          | TRCB ->
              let _v = _menhir_action_126 () in
              _menhir_run_337 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_103_spec_086 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TVERSIONS -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let desc = _v in
      let _v = _menhir_action_164 desc in
      _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
  
  and _menhir_run_103_spec_101 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_version -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let desc = _v in
      let _v = _menhir_action_164 desc in
      _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState101 _tok
  
  and _menhir_run_096 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TLPAR _menhir_cell0_TSTRING as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TRPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_TSTRING (_menhir_stack, name) = _menhir_stack in
          let MenhirCell1_TLPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let date = _v in
          let _v = _menhir_action_165 date name in
          _menhir_goto_version _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | TCOMMA ->
          let _menhir_stack = MenhirCell1_date (_menhir_stack, _menhir_s, _v) in
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSUBDIR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYLEGENDFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_116 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TYLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_115 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TYAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_114 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TXLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_113 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TXAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_112 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TWEBSITE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TVERSIONS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_110 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TSPFLAGS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_109 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TSORT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_108 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TSLASH ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | TSIZE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_107 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TRESULTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_106 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TRATIO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_105 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TPROJECTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_104 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TPROJECT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_103 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TPREFIX ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_102 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TPATTERNCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_101 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TPATTERN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_097 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TNOTEXISTCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_096 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_095 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TMARKTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_094 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TLINESTYLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_093 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_092 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_077 i in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TINFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_091 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TGROUP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_090 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TGRAPH ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_089 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFORMAT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_100 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFINDCMD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_098 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFINDCHILD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_099 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFILENAME ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_088 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_087 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_086 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TDIR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_085 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TDATA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_084 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCURVE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_083 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCPUCORE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_082 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCORREL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_081 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_080 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCOCCI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_079 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TCLEANCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_078 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_117 b in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState107 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_110 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSLASH ->
          let _menhir_stack = MenhirCell1_gid (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYLEGENDFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_116 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TYLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_115 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TYAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_114 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TXLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_113 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TXAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_112 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TWEBSITE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TVERSIONS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_110 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TSPFLAGS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_109 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TSORT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_108 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TSIZE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_107 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TRESULTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_106 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TRATIO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_105 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TPROJECTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_104 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TPROJECT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_103 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TPREFIX ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_102 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TPATTERNCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_101 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TPATTERN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_097 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TNOTEXISTCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_096 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_095 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TMARKTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_094 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TLINESTYLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_093 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_092 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TId _v_22 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_22 in
              let _v = _menhir_action_077 i in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TINFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_091 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TGROUP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_090 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TGRAPH ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_089 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFORMAT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_100 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFINDCMD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_098 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFINDCHILD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_099 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFILENAME ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_088 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_087 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_086 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TDIR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_085 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TDATA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_084 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCURVE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_083 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCPUCORE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_082 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCORREL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_081 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_080 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCOCCI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_079 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TCLEANCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_078 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | TBOOL _v_41 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v_41 in
              let _v = _menhir_action_117 b in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState111 _tok
          | _ ->
              _eRR ())
      | TAUTHOR | TCLEANCOLOR | TCOLOR | TCORREL | TCURVE | TDATA | TDIR | TEMPTY | TFACTOR | TFILE | TFILENAME | TFOOTER | TFORMAT | TGROUP | TINFO | TLCB | TLEGEND | TLINESTYLE | TLOCALSCM | TMARKSIZE | TMARKTYPE | TNOTEXISTCOLOR | TPATTERN | TPATTERNCOLOR | TPROJECT | TPRUNE | TPUBLICSCM | TRATIO | TRCB | TSIZE | TSORT | TSPFLAGS | TSUBDIR | TVERSIONS | TVMIN | TXAXIS | TXLEGEND | TXMIN | TYAXIS | TYLEGEND | TYLEGENDFACTOR ->
          let x = _v in
          let _v = _menhir_action_157 x in
          _menhir_goto_separated_nonempty_list_TSLASH_gid_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_TSLASH_gid_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState238 ->
          _menhir_run_113_spec_238 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState187 ->
          _menhir_run_113_spec_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState107 ->
          _menhir_run_113_spec_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_113_spec_238 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TGRAPH -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let p = _v in
      let _v = _menhir_action_147 p in
      _menhir_run_239 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
  
  and _menhir_run_239 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TGRAPH as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_path (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TLCB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYLEGENDFACTOR ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TYLEGEND ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TYAXIS ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TXMIN ->
              _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TXLEGEND ->
              _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TXAXIS ->
              _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TVMIN ->
              _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TVERSIONS ->
              _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TSUBDIR ->
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TSPFLAGS ->
              _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TSORT ->
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TSIZE ->
              _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TRATIO ->
              _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TPUBLICSCM ->
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TPRUNE ->
              _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TPROJECT ->
              _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TPATTERNCOLOR ->
              _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TPATTERN ->
              _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TNOTEXISTCOLOR ->
              _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TMARKTYPE ->
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TMARKSIZE ->
              _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TLOCALSCM ->
              _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TLINESTYLE ->
              _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TLEGEND ->
              _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TINFO ->
              _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TFORMAT ->
              _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TFOOTER ->
              _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TFILENAME ->
              _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TFILE ->
              _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TFACTOR ->
              _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TDIR ->
              _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TDATA ->
              _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TCORREL ->
              _menhir_run_208 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TCOLOR ->
              _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TCLEANCOLOR ->
              _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TAUTHOR ->
              _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
          | TCURVE | TEMPTY | TGROUP | TRCB ->
              let _v = _menhir_action_122 () in
              _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState240 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_040 f in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_041 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_121 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSIZE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122 _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_125 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_034 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_128 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v in
              let _v = _menhir_action_039 v in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_033 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_134 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let prj = _v in
              let _v = _menhir_action_031 prj in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TPATTERNCOLOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState138 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_142 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let dft = _v in
              let _v = _menhir_action_006 dft in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TNOTEXISTCOLOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState146
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState146 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_150 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_024 () in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let m = _v in
              let _v = _menhir_action_025 m in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_154 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TMARKSIZE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v in
              let _v = _menhir_action_038 v in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_160 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_022 () in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v in
              let _v = _menhir_action_023 s in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_164 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let l = _v in
              let _v = _menhir_action_018 l in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_167 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_017 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_170 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let dft = _v in
              let _v = _menhir_action_016 dft in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_173 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let l = _v in
              let _v = _menhir_action_015 l in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_176 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_014 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_179 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_012 f in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_013 () in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_183 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TFACTOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState184
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_185 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_186 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TDIR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TYLEGENDFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_116 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TYLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_115 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TYAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_114 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TXLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_113 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TXAXIS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_112 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TWEBSITE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_111 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TVERSIONS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_110 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TSPFLAGS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_109 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TSORT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_108 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TSLASH ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
          | TSIZE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_107 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TRESULTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_106 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TRATIO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_105 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TPROJECTS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_104 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TPROJECT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_103 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TPREFIX ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_102 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TPATTERNCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_101 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TPATTERN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_097 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TNOTEXISTCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_096 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_095 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TMARKTYPE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_094 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TLINESTYLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_093 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TLEGEND ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_092 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_077 i in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TINFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_091 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TGROUP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_090 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TGRAPH ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_089 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFORMAT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_100 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFINDCMD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_098 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFINDCHILD ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_099 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFILENAME ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_088 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_087 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TFACTOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_086 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TDIR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_085 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TDATA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_084 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCURVE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_083 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCPUCORE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_082 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCORREL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_081 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_080 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCOCCI ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_079 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TCLEANCOLOR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_078 () in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_117 b in
              _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState187 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSLASH (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYLEGENDFACTOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_116 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TYLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_115 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TYAXIS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_114 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TXLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_113 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TXAXIS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_112 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TWEBSITE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TVERSIONS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_110 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TSPFLAGS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_109 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TSORT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_108 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TSIZE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_107 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TRESULTS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_106 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TRATIO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_105 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TPROJECTS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_104 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TPROJECT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_103 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TPREFIX ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_102 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TPATTERNCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_101 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TPATTERN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_097 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TNOTEXISTCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_096 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TNONE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_095 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TMARKTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_094 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TLINESTYLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_093 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_092 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_077 i in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TINFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_091 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TGROUP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_090 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TGRAPH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_089 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFORMAT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_100 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFINDCMD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_098 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFINDCHILD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_099 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFILENAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_088 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFILE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_087 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TFACTOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_086 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TDIR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_085 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TDATA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_084 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCURVE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_083 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCPUCORE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_082 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCORREL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_081 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_080 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCOCCI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_079 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TCLEANCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_078 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | TBOOL _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let b = _v in
          let _v = _menhir_action_117 b in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState108 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_189 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TDATA (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TPROJECT ->
              _menhir_run_191 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
          | TPATTERN ->
              _menhir_run_193 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
          | TLPAR ->
              _menhir_run_195 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_196_spec_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_196_spec_190 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_208 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TNONE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_003 () in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let dft = _v in
              let _v = _menhir_action_004 dft in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_212 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TCOLOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_214 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213 _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_214 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_217 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TCLEANCOLOR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMINUS ->
              _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v in
              let _v = _menhir_action_063 i in
              _menhir_run_219 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState218 _tok
          | TFloat _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let f = _v in
              let _v = _menhir_action_062 f in
              _menhir_run_219 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState218 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_222 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TBOOL _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let b = _v in
              let _v = _menhir_action_032 b in
              _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_241 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_cell1_path as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_attr_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TGROUP ->
          _menhir_run_242 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState241
      | TEMPTY ->
          _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState241
      | TCURVE ->
          _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState241
      | TRCB ->
          let _v = _menhir_action_124 () in
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_242 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING _v ->
          let _menhir_stack = MenhirCell1_TGROUP (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_stack = MenhirCell0_TSTRING (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLCB ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TEMPTY ->
                  _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
              | TCURVE ->
                  _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
              | TRCB ->
                  let _v = _menhir_action_124 () in
                  _menhir_run_259 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | TPATTERN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_startpos__1_, _endpos_d_, d) = (_startpos, _endpos, _v) in
              let _v = _menhir_action_121 _endpos_d_ _startpos__1_ d in
              _menhir_goto_group _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_245 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TCURVE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_051 _endpos__2_ _startpos__1_ in
          _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_curve : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_curve (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TEMPTY ->
          _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState261
      | TCURVE ->
          _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState261
      | TRCB ->
          let _v = _menhir_action_124 () in
          _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_247 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING _v ->
          let _menhir_stack = MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos, _endpos) in
          let _menhir_stack = MenhirCell0_TSTRING (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLCB ->
              _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState248
          | _ ->
              _eRR ())
      | TPROJECT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TPATTERN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TId _v_1 ->
                      let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TLCB ->
                          let _menhir_stack = MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos, _endpos) in
                          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos_0) in
                          let _menhir_stack = MenhirCell1_TPATTERN (_menhir_stack, MenhirState251) in
                          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v_1, _endpos_2) in
                          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState253
                      | TCURVE | TEMPTY | TRCB ->
                          let (_startpos__1_, p, _endpos_d_, d) = (_startpos, _v, _endpos_2, _v_1) in
                          let _v = _menhir_action_049 _endpos_d_ _startpos__1_ d p in
                          _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | TLCB ->
                  let _menhir_stack = MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos, _endpos) in
                  let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos_0) in
                  _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState251
              | TCURVE | TEMPTY | TRCB ->
                  let (_startpos__1_, _endpos_p_, p) = (_startpos, _endpos_0, _v) in
                  let _v = _menhir_action_044 _endpos_p_ _startpos__1_ p in
                  _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | TPATTERN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TLCB ->
                  let _menhir_stack = MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos, _endpos) in
                  let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos_3) in
                  _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState257
              | TCURVE | TEMPTY | TRCB ->
                  let (_startpos__1_, _endpos_d_, d) = (_startpos, _endpos_3, _v) in
                  let _v = _menhir_action_046 _endpos_d_ _startpos__1_ d in
                  _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_234 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TLCB (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYLEGENDFACTOR ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TYLEGEND ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TYAXIS ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TXMIN ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TXLEGEND ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TXAXIS ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TVMIN ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TVERSIONS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TSUBDIR ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TSPFLAGS ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TSORT ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TSIZE ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TRATIO ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TPUBLICSCM ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TPRUNE ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TPROJECT ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TPATTERNCOLOR ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TPATTERN ->
          _menhir_run_142 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TNOTEXISTCOLOR ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TMARKTYPE ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TMARKSIZE ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TLOCALSCM ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TLINESTYLE ->
          _menhir_run_160 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TLEGEND ->
          _menhir_run_164 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TINFO ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TFORMAT ->
          _menhir_run_170 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TFOOTER ->
          _menhir_run_173 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TFILENAME ->
          _menhir_run_176 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TFILE ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TFACTOR ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TDIR ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TDATA ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TCORREL ->
          _menhir_run_208 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TCOLOR ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TCLEANCOLOR ->
          _menhir_run_217 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TAUTHOR ->
          _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
      | TRCB ->
          let _v = _menhir_action_122 () in
          _menhir_run_235 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_235 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TLCB -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | TRCB ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_TLCB (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_endpos__3_, atts) = (_endpos, _v) in
          let _v = _menhir_action_043 atts in
          _menhir_goto_attrs _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_attrs : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState257 ->
          _menhir_run_258 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState251 ->
          _menhir_run_255 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState253 ->
          _menhir_run_254 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState248 ->
          _menhir_run_249 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState233 ->
          _menhir_run_237 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_258 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_TId (_menhir_stack, d, _) = _menhir_stack in
      let MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
      let (_endpos_atts_, atts) = (_endpos, _v) in
      let _v = _menhir_action_047 _endpos_atts_ _startpos__1_ atts d in
      _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_255 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_TId (_menhir_stack, p, _) = _menhir_stack in
      let MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
      let (_endpos_atts_, atts) = (_endpos, _v) in
      let _v = _menhir_action_045 _endpos_atts_ _startpos__1_ atts p in
      _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_254 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_TPATTERN _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_TId (_menhir_stack, d, _) = _menhir_stack in
      let MenhirCell1_TPATTERN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_TId (_menhir_stack, p, _) = _menhir_stack in
      let MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
      let (_endpos_atts_, atts) = (_endpos, _v) in
      let _v = _menhir_action_048 _endpos_atts_ _startpos__1_ atts d p in
      _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_249 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TCURVE _menhir_cell0_TSTRING -> _ -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_TSTRING (_menhir_stack, name) = _menhir_stack in
      let MenhirCell1_TCURVE (_menhir_stack, _menhir_s, _startpos__1_, _) = _menhir_stack in
      let (_endpos_atts_, atts) = (_endpos, _v) in
      let _v = _menhir_action_050 _endpos_atts_ _startpos__1_ atts name in
      _menhir_goto_curve _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_237 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TPATTERN _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TId (_menhir_stack, name, _) = _menhir_stack in
      let MenhirCell1_TPATTERN (_menhir_stack, _menhir_s) = _menhir_stack in
      let atts = _v in
      let _ = _menhir_action_149 atts name in
      let _v = _menhir_action_161 () in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_262 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_curve -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_curve (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_125 x xs in
      _menhir_goto_list_curve_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_curve_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState241 ->
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState261 ->
          _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState244 ->
          _menhir_run_259 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_267 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_cell1_path, _menhir_box_main) _menhir_cell1_list_attr_ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_list_attr_ (_menhir_stack, _, atts) = _menhir_stack in
      let MenhirCell1_path (_menhir_stack, _, name) = _menhir_stack in
      let MenhirCell1_TGRAPH (_menhir_stack, _menhir_s) = _menhir_stack in
      let cs = _v in
      let _ = _menhir_action_118 atts cs name in
      _menhir_goto_graph _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
  
  and _menhir_goto_graph : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok ->
      let _v = _menhir_action_163 () in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_259 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TGROUP _menhir_cell0_TSTRING -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_TSTRING (_menhir_stack, name) = _menhir_stack in
      let MenhirCell1_TGROUP (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let cs = _v in
      let _v = _menhir_action_120 cs name in
      _menhir_goto_group _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_group : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TGROUP ->
          let _menhir_stack = MenhirCell1_group (_menhir_stack, _menhir_s, _v) in
          _menhir_run_242 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState269
      | TRCB ->
          let x = _v in
          let _v = _menhir_action_143 x in
          _menhir_goto_nonempty_list_group_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_group_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState269 ->
          _menhir_run_270 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState241 ->
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_270 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_group -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_group (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_144 x xs in
      _menhir_goto_nonempty_list_group_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_265 : type  ttv_stack. (((ttv_stack, _menhir_box_main) _menhir_cell1_TGRAPH, _menhir_box_main) _menhir_cell1_path, _menhir_box_main) _menhir_cell1_list_attr_ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_list_attr_ (_menhir_stack, _, atts) = _menhir_stack in
      let MenhirCell1_path (_menhir_stack, _, name) = _menhir_stack in
      let MenhirCell1_TGRAPH (_menhir_stack, _menhir_s) = _menhir_stack in
      let gs = _v in
      let _ = _menhir_action_119 atts gs name in
      _menhir_goto_graph _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
  
  and _menhir_run_113_spec_187 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TDIR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let p = _v in
      let _v = _menhir_action_147 p in
      _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_188 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TDIR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TDIR (_menhir_stack, _menhir_s) = _menhir_stack in
      let d = _v in
      let _v = _menhir_action_009 d in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_113_spec_107 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TSUBDIR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let p = _v in
      let _v = _menhir_action_147 p in
      _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_114 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TSUBDIR -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TSUBDIR (_menhir_stack, _menhir_s) = _menhir_stack in
      let d = _v in
      let _v = _menhir_action_010 d in
      _menhir_goto_attr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_112 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_gid -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_gid (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_158 x xs in
      _menhir_goto_separated_nonempty_list_TSLASH_gid_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_109 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TSLASH -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TSLASH (_menhir_stack, _menhir_s) = _menhir_stack in
      let p = _v in
      let _v = _menhir_action_148 p in
      _menhir_goto_path _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_path : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState238 ->
          _menhir_run_239 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState187 ->
          _menhir_run_188 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState107 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_228 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_attr -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_attr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_123 x xs in
      _menhir_goto_list_attr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_attr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState240 ->
          _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState234 ->
          _menhir_run_235 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState227 ->
          _menhir_run_228 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState015 ->
          _menhir_run_225 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_225 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TPROJECT _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | TRCB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_TId (_menhir_stack, name, _) = _menhir_stack in
          let MenhirCell1_TPROJECT (_menhir_stack, _menhir_s) = _menhir_stack in
          let atts = _v in
          let _ = _menhir_action_152 atts name in
          let _v = _menhir_action_160 () in
          _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_229 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let p = _v in
              let _ = _menhir_action_067 p in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_232 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TPATTERN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLCB ->
              _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState233
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_238 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TGRAPH (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TYLEGENDFACTOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_116 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TYLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_115 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TYAXIS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_114 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TXLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_113 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TXAXIS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_112 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TWEBSITE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_111 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TVERSIONS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_110 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TSPFLAGS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_109 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TSORT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_108 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TSLASH ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState238
      | TSIZE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_107 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TRESULTS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_106 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TRATIO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_105 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TPROJECTS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_104 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TPROJECT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_103 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TPREFIX ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_102 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TPATTERNCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_101 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TPATTERN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_097 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TNOTEXISTCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_096 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TNONE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_095 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TMARKTYPE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_094 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TLINESTYLE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_093 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TLEGEND ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_092 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v in
          let _v = _menhir_action_077 i in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TINFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_091 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TGROUP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_090 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TGRAPH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_089 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFORMAT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_100 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFINDCMD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_098 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFINDCHILD ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_099 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFILENAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_088 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFILE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_087 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TFACTOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_086 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TDIR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_085 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TDATA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_084 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCURVE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_083 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCPUCORE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_082 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCORREL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_081 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_080 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCOCCI ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_079 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TCLEANCOLOR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_078 () in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | TBOOL _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let b = _v in
          let _v = _menhir_action_117 b in
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState238 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_271 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _ = _menhir_action_072 c in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_274 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _ = _menhir_action_073 c in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_277 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TEXPERIMENT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TPROJECT ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TId _v ->
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TCOMMA ->
                          _menhir_run_282 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState281
                      | TWITH ->
                          let _v = _menhir_action_134 () in
                          _menhir_run_286 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState281
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | TPATTERN ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TId _v ->
                      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TCOMMA ->
                          _menhir_run_297 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState296
                      | TWITH ->
                          let _v = _menhir_action_128 () in
                          _menhir_run_301 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState296
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_282 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let name = _v in
          let _v = _menhir_action_154 name in
          let _menhir_stack = MenhirCell1_projectobj (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | TCOMMA ->
              _menhir_run_282 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState284
          | TWITH ->
              let _v = _menhir_action_134 () in
              _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_285 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_projectobj -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_projectobj (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_135 x xs in
      _menhir_goto_list_projectobj_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_projectobj_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState281 ->
          _menhir_run_286 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState284 ->
          _menhir_run_285 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_286 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_projectobj_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPATTERN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TCOMMA ->
                  _menhir_run_290 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState289
              | EOF | TCOCCI | TCPUCORE | TDBCONN | TEXPERIMENT | TFINDCHILD | TFINDCMD | TGRAPH | TPATTERN | TPREFIX | TPROJECT | TPROJECTS | TRESULTS | TSPFLAGS | TWEBSITE ->
                  let _v = _menhir_action_130 () in
                  _menhir_run_294 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_290 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let name = _v in
          let _v = _menhir_action_151 name in
          let _menhir_stack = MenhirCell1_patternsub (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | TCOMMA ->
              _menhir_run_290 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState292
          | EOF | TCOCCI | TCPUCORE | TDBCONN | TEXPERIMENT | TFINDCHILD | TFINDCMD | TGRAPH | TPATTERN | TPREFIX | TPROJECT | TPROJECTS | TRESULTS | TSPFLAGS | TWEBSITE ->
              let _v = _menhir_action_130 () in
              _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_293 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_patternsub -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_patternsub (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_131 x xs in
      _menhir_goto_list_patternsub_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_patternsub_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState289 ->
          _menhir_run_294 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState292 ->
          _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_294 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_list_projectobj_ _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TId (_menhir_stack, name2, _) = _menhir_stack in
      let MenhirCell1_list_projectobj_ (_menhir_stack, _, projects) = _menhir_stack in
      let MenhirCell0_TId (_menhir_stack, name, _) = _menhir_stack in
      let patterns = _v in
      let _v = _menhir_action_146 name name2 patterns projects in
      _menhir_goto_objects _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_objects : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TId (_menhir_stack, name, _) = _menhir_stack in
      let MenhirCell1_TEXPERIMENT (_menhir_stack, _menhir_s) = _menhir_stack in
      let descExperiment = _v in
      let _ = _menhir_action_053 descExperiment name in
      let _v = _menhir_action_162 () in
      _menhir_goto_toplevel _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_297 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let name = _v in
          let _v = _menhir_action_150 name in
          let _menhir_stack = MenhirCell1_patternobj (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | TCOMMA ->
              _menhir_run_297 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState299
          | TWITH ->
              let _v = _menhir_action_128 () in
              _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_300 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_patternobj -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_patternobj (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_129 x xs in
      _menhir_goto_list_patternobj_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_patternobj_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState296 ->
          _menhir_run_301 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState299 ->
          _menhir_run_300 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_301 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_patternobj_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TPROJECT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TCOMMA ->
                  _menhir_run_305 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState304
              | EOF | TCOCCI | TCPUCORE | TDBCONN | TEXPERIMENT | TFINDCHILD | TFINDCMD | TGRAPH | TPATTERN | TPREFIX | TPROJECT | TPROJECTS | TRESULTS | TSPFLAGS | TWEBSITE ->
                  let _v = _menhir_action_136 () in
                  _menhir_run_309 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_305 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let name = _v in
          let _v = _menhir_action_156 name in
          let _menhir_stack = MenhirCell1_projectsub (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | TCOMMA ->
              _menhir_run_305 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState307
          | EOF | TCOCCI | TCPUCORE | TDBCONN | TEXPERIMENT | TFINDCHILD | TFINDCMD | TGRAPH | TPATTERN | TPREFIX | TPROJECT | TPROJECTS | TRESULTS | TSPFLAGS | TWEBSITE ->
              let _v = _menhir_action_136 () in
              _menhir_run_308 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_308 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_projectsub -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_projectsub (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_137 x xs in
      _menhir_goto_list_projectsub_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_projectsub_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState304 ->
          _menhir_run_309 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState307 ->
          _menhir_run_308 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_309 : type  ttv_stack. ((ttv_stack, _menhir_box_main) _menhir_cell1_TEXPERIMENT _menhir_cell0_TId _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_list_patternobj_ _menhir_cell0_TId -> _ -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TId (_menhir_stack, name2, _) = _menhir_stack in
      let MenhirCell1_list_patternobj_ (_menhir_stack, _, patterns) = _menhir_stack in
      let MenhirCell0_TId (_menhir_stack, name, _) = _menhir_stack in
      let projects = _v in
      let _v = _menhir_action_145 name name2 patterns projects in
      _menhir_goto_objects _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_311 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let s = _v in
              let _ = _menhir_action_076 s in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_314 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TInt _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let c = _v in
              let _ = _menhir_action_075 c in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_317 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let p = _v in
              let _ = _menhir_action_068 p in
              _menhir_goto_gbattr _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TWEBSITE ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TSPFLAGS ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TRESULTS ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TPROJECTS ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TPROJECT ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TPREFIX ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TPATTERN ->
          _menhir_run_232 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TGRAPH ->
          _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TFINDCMD ->
          _menhir_run_271 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TFINDCHILD ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TEXPERIMENT ->
          _menhir_run_277 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TDBCONN ->
          _menhir_run_311 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TCPUCORE ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TCOCCI ->
          _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EOF ->
          let _ = _menhir_action_138 () in
          _menhir_run_328 _menhir_stack
      | _ ->
          _eRR ()
  
  let rec _menhir_run_330 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_projects_cache =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState330
      | EOF ->
          let _v = _menhir_action_132 () in
          _menhir_run_344 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let projects_cache =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_projects_cache v = _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let main =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_main v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
