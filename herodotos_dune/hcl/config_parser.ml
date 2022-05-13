
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
# 18 "config_parser.ml"
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
# 51 "config_parser.ml"
)
  | TId of (
# 37 "config_parser.mly"
      (string)
# 56 "config_parser.ml"
)
  | TINFO
  | TGROUP
  | TGRAPH
  | TFloat of (
# 36 "config_parser.mly"
      (float)
# 64 "config_parser.ml"
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
# 89 "config_parser.ml"
)
  | TAUTHOR
  | EOF

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

# 116 "config_parser.ml"

let menhir_begin_marker =
  0

and (xv_version, xv_toplevel, xv_separated_nonempty_list_TSLASH_gid_, xv_projectsub, xv_projects_cache, xv_projectobj, xv_project_cache, xv_project, xv_patternsub, xv_patternobj, xv_pattern, xv_path, xv_objects, xv_nonempty_list_group_, xv_main, xv_list_version_, xv_list_toplevel_, xv_list_projectsub_, xv_list_projectobj_, xv_list_project_cache_, xv_list_patternsub_, xv_list_patternobj_, xv_list_full_version_desc_, xv_list_curve_, xv_list_attr_, xv_group, xv_graph, xv_gid, xv_gbattr, xv_full_version_desc, xv_float, xv_expression, xv_experiment, xv_date, xv_curve, xv_attrs, xv_attr) =
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
                    xs
# 125 "config_parser.ml"
   : 'tv_separated_nonempty_list_TSLASH_gid_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
        _2
# 129 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 239 "<standard.mly>"
  x
# 133 "config_parser.ml"
   : 'tv_gid) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 138 "config_parser.ml"
     : 'tv_separated_nonempty_list_TSLASH_gid_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 237 "<standard.mly>"
  x
# 143 "config_parser.ml"
   : 'tv_gid) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 148 "config_parser.ml"
     : 'tv_separated_nonempty_list_TSLASH_gid_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
         xs
# 153 "config_parser.ml"
   : 'tv_nonempty_list_group_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
  x
# 157 "config_parser.ml"
   : 'tv_group) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 162 "config_parser.ml"
     : 'tv_nonempty_list_group_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 217 "<standard.mly>"
  x
# 167 "config_parser.ml"
   : 'tv_group) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 172 "config_parser.ml"
     : 'tv_nonempty_list_group_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 177 "config_parser.ml"
   : 'tv_list_version_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 181 "config_parser.ml"
   : 'tv_version) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 186 "config_parser.ml"
     : 'tv_list_version_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 192 "config_parser.ml"
     : 'tv_list_version_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 197 "config_parser.ml"
   : 'tv_list_toplevel_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 201 "config_parser.ml"
   : 'tv_toplevel) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 206 "config_parser.ml"
     : 'tv_list_toplevel_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 212 "config_parser.ml"
     : 'tv_list_toplevel_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 217 "config_parser.ml"
   : 'tv_list_projectsub_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 221 "config_parser.ml"
   : 'tv_projectsub) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 226 "config_parser.ml"
     : 'tv_list_projectsub_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 232 "config_parser.ml"
     : 'tv_list_projectsub_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 237 "config_parser.ml"
   : 'tv_list_projectobj_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 241 "config_parser.ml"
   : 'tv_projectobj) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 246 "config_parser.ml"
     : 'tv_list_projectobj_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 252 "config_parser.ml"
     : 'tv_list_projectobj_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 257 "config_parser.ml"
   : 'tv_list_project_cache_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 261 "config_parser.ml"
   : 'tv_project_cache) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 266 "config_parser.ml"
     : 'tv_list_project_cache_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 272 "config_parser.ml"
     : 'tv_list_project_cache_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 277 "config_parser.ml"
   : 'tv_list_patternsub_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 281 "config_parser.ml"
   : 'tv_patternsub) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 286 "config_parser.ml"
     : 'tv_list_patternsub_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 292 "config_parser.ml"
     : 'tv_list_patternsub_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 297 "config_parser.ml"
   : 'tv_list_patternobj_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 301 "config_parser.ml"
   : 'tv_patternobj) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 306 "config_parser.ml"
     : 'tv_list_patternobj_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 312 "config_parser.ml"
     : 'tv_list_patternobj_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 317 "config_parser.ml"
   : 'tv_list_full_version_desc_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 321 "config_parser.ml"
   : 'tv_full_version_desc) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 326 "config_parser.ml"
     : 'tv_list_full_version_desc_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 332 "config_parser.ml"
     : 'tv_list_full_version_desc_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 337 "config_parser.ml"
   : 'tv_list_curve_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 341 "config_parser.ml"
   : 'tv_curve) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 346 "config_parser.ml"
     : 'tv_list_curve_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 352 "config_parser.ml"
     : 'tv_list_curve_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 357 "config_parser.ml"
   : 'tv_list_attr_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 361 "config_parser.ml"
   : 'tv_attr) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 366 "config_parser.ml"
     : 'tv_list_attr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 372 "config_parser.ml"
     : 'tv_list_attr_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 159 "config_parser.mly"
                    _3
# 377 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 159 "config_parser.mly"
        name
# 381 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 385 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 159 "config_parser.mly"
 _1
# 389 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 159 "config_parser.mly"
                                             ( (name, None, 0) )
# 394 "config_parser.ml"
     : 'tv_version) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 158 "config_parser.mly"
                                     _5
# 399 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 158 "config_parser.mly"
                            date
# 403 "config_parser.ml"
   : 'tv_date) (_startpos_date_ : Lexing.position) (_endpos_date_ : Lexing.position) (_startofs_date_ : int) (_endofs_date_ : int) (_loc_date_ : Lexing.position * Lexing.position) (
# 158 "config_parser.mly"
                    _3
# 407 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 158 "config_parser.mly"
        name
# 411 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 415 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 158 "config_parser.mly"
 _1
# 419 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 158 "config_parser.mly"
                                             ( (name, date, 0) )
# 424 "config_parser.ml"
     : 'tv_version) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 157 "config_parser.mly"
  desc
# 429 "config_parser.ml"
   : 'tv_full_version_desc) (_startpos_desc_ : Lexing.position) (_endpos_desc_ : Lexing.position) (_startofs_desc_ : int) (_endofs_desc_ : int) (_loc_desc_ : Lexing.position * Lexing.position) ->
    (
# 157 "config_parser.mly"
                                             ( desc )
# 434 "config_parser.ml"
     : 'tv_version) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 66 "config_parser.mly"
 _1
# 439 "config_parser.ml"
   : 'tv_graph) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 66 "config_parser.mly"
          ()
# 444 "config_parser.ml"
     : 'tv_toplevel) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 65 "config_parser.mly"
 _1
# 449 "config_parser.ml"
   : 'tv_experiment) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 65 "config_parser.mly"
             ()
# 454 "config_parser.ml"
     : 'tv_toplevel) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 64 "config_parser.mly"
 _1
# 459 "config_parser.ml"
   : 'tv_pattern) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 64 "config_parser.mly"
          ()
# 464 "config_parser.ml"
     : 'tv_toplevel) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 63 "config_parser.mly"
 _1
# 469 "config_parser.ml"
   : 'tv_project) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 63 "config_parser.mly"
          ()
# 474 "config_parser.ml"
     : 'tv_toplevel) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 61 "config_parser.mly"
         _1
# 480 "config_parser.ml"
   : 'tv_gbattr) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 62 "config_parser.mly"
          ()
# 485 "config_parser.ml"
     : 'tv_toplevel) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 102 "config_parser.mly"
        name
# 490 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 494 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 101 "config_parser.mly"
           _1
# 499 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 102 "config_parser.mly"
                 (Ast_config.ExpProject(name))
# 504 "config_parser.ml"
     : 'tv_projectsub) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 53 "config_parser.mly"
                       _2
# 509 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 53 "config_parser.mly"
  l
# 513 "config_parser.ml"
   : 'tv_list_project_cache_) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) ->
    ((
# 53 "config_parser.mly"
                            (l)
# 518 "config_parser.ml"
     : 'tv_projects_cache) : (
# 48 "config_parser.mly"
      ((string*(string*Unix.tm option*int) list) list)
# 522 "config_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 96 "config_parser.mly"
        name
# 527 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 531 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 95 "config_parser.mly"
           _1
# 536 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 96 "config_parser.mly"
                 (Ast_config.ExpProject(name))
# 541 "config_parser.ml"
     : 'tv_projectobj) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 56 "config_parser.mly"
                                               _4
# 546 "config_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 56 "config_parser.mly"
                     vs
# 550 "config_parser.ml"
   : 'tv_list_full_version_desc_) (_startpos_vs_ : Lexing.position) (_endpos_vs_ : Lexing.position) (_startofs_vs_ : int) (_endofs_vs_ : int) (_loc_vs_ : Lexing.position * Lexing.position) (
# 56 "config_parser.mly"
               _2
# 554 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 56 "config_parser.mly"
  project
# 558 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 562 "config_parser.ml"
  )) (_startpos_project_ : Lexing.position) (_endpos_project_ : Lexing.position) (_startofs_project_ : int) (_endofs_project_ : int) (_loc_project_ : Lexing.position * Lexing.position) ->
    (
# 56 "config_parser.mly"
                                                     ( (project,vs))
# 567 "config_parser.ml"
     : 'tv_project_cache) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 69 "config_parser.mly"
                                        _5
# 572 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 69 "config_parser.mly"
                         atts
# 576 "config_parser.ml"
   : 'tv_list_attr_) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 69 "config_parser.mly"
                   _3
# 580 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 69 "config_parser.mly"
           name
# 584 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 588 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 68 "config_parser.mly"
        _1
# 593 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 69 "config_parser.mly"
                                              ( Setup.addPrj name (None, atts) )
# 598 "config_parser.ml"
     : 'tv_project) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 99 "config_parser.mly"
        name
# 603 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 607 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 98 "config_parser.mly"
           _1
# 612 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 99 "config_parser.mly"
                 (Ast_config.ExpPattern(name))
# 617 "config_parser.ml"
     : 'tv_patternsub) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 93 "config_parser.mly"
        name
# 622 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 626 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 92 "config_parser.mly"
           _1
# 631 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 93 "config_parser.mly"
                 (Ast_config.ExpPattern(name))
# 636 "config_parser.ml"
     : 'tv_patternobj) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 168 "config_parser.mly"
                    atts
# 641 "config_parser.ml"
   : 'tv_attrs) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 168 "config_parser.mly"
           name
# 645 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 649 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 167 "config_parser.mly"
        _1
# 654 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 168 "config_parser.mly"
                               ( Setup.addDft name atts )
# 659 "config_parser.ml"
     : 'tv_pattern) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 194 "config_parser.mly"
         p
# 664 "config_parser.ml"
   : 'tv_separated_nonempty_list_TSLASH_gid_) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 194 "config_parser.mly"
 _1
# 668 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 194 "config_parser.mly"
                                                ( "/"^ String.concat "/" p )
# 673 "config_parser.ml"
     : 'tv_path) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 193 "config_parser.mly"
  p
# 678 "config_parser.ml"
   : 'tv_separated_nonempty_list_TSLASH_gid_) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) ->
    (
# 193 "config_parser.mly"
                                                ( String.concat "/" p )
# 683 "config_parser.ml"
     : 'tv_path) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                                                                              patterns
# 688 "config_parser.ml"
   : 'tv_list_patternsub_) (_startpos_patterns_ : Lexing.position) (_endpos_patterns_ : Lexing.position) (_startofs_patterns_ : int) (_endofs_patterns_ : int) (_loc_patterns_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                                                                    name2
# 692 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 696 "config_parser.ml"
  )) (_startpos_name2_ : Lexing.position) (_endpos_name2_ : Lexing.position) (_startofs_name2_ : int) (_endofs_name2_ : int) (_loc_name2_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                                                          _6
# 700 "config_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                                                    _5
# 704 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                         projects
# 708 "config_parser.ml"
   : 'tv_list_projectobj_) (_startpos_projects_ : Lexing.position) (_endpos_projects_ : Lexing.position) (_startofs_projects_ : int) (_endofs_projects_ : int) (_loc_projects_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
                name
# 712 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 716 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
      _2
# 720 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 89 "config_parser.mly"
  _1
# 724 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 90 "config_parser.mly"
     ((Ast_config.ObjProj((Ast_config.ExpProject(name))::projects),Ast_config.ObjPatt((Ast_config.ExpPattern(name2))::patterns)))
# 729 "config_parser.ml"
     : 'tv_objects) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                                                                             projects
# 734 "config_parser.ml"
   : 'tv_list_projectsub_) (_startpos_projects_ : Lexing.position) (_endpos_projects_ : Lexing.position) (_startofs_projects_ : int) (_endofs_projects_ : int) (_loc_projects_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                                                                   name2
# 738 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 742 "config_parser.ml"
  )) (_startpos_name2_ : Lexing.position) (_endpos_name2_ : Lexing.position) (_startofs_name2_ : int) (_endofs_name2_ : int) (_loc_name2_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                                                         _6
# 746 "config_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                                                   _5
# 750 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                         patterns
# 754 "config_parser.ml"
   : 'tv_list_patternobj_) (_startpos_patterns_ : Lexing.position) (_endpos_patterns_ : Lexing.position) (_startofs_patterns_ : int) (_endofs_patterns_ : int) (_loc_patterns_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
                name
# 758 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 762 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 87 "config_parser.mly"
      _2
# 766 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 86 "config_parser.mly"
        _1
# 771 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 88 "config_parser.mly"
     ((Ast_config.ObjPatt((Ast_config.ExpPattern(name))::patterns),Ast_config.ObjProj((Ast_config.ExpProject(name2))::projects)))
# 776 "config_parser.ml"
     : 'tv_objects) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 59 "config_parser.mly"
               _2
# 781 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 58 "config_parser.mly"
     _1
# 786 "config_parser.ml"
   : 'tv_list_toplevel_) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 59 "config_parser.mly"
                    ( )
# 791 "config_parser.ml"
     : 'tv_main) : (
# 45 "config_parser.mly"
      (unit)
# 795 "config_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 190 "config_parser.mly"
                  d
# 800 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 804 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 190 "config_parser.mly"
        _2
# 808 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 190 "config_parser.mly"
 _1
# 812 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 190 "config_parser.mly"
                                               ( Ast_config.GrpPatt(d, Misc.getpos _startpos__1_ _endofs))
# 817 "config_parser.ml"
     : 'tv_group) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 189 "config_parser.mly"
                                         _5
# 822 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 189 "config_parser.mly"
                           cs
# 826 "config_parser.ml"
   : 'tv_list_curve_) (_startpos_cs_ : Lexing.position) (_endpos_cs_ : Lexing.position) (_startofs_cs_ : int) (_endofs_cs_ : int) (_loc_cs_ : Lexing.position * Lexing.position) (
# 189 "config_parser.mly"
                     _3
# 830 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 189 "config_parser.mly"
         name
# 834 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 838 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 188 "config_parser.mly"
      _1
# 843 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 189 "config_parser.mly"
                                               ( Ast_config.GrpCurve(name,cs))
# 848 "config_parser.ml"
     : 'tv_group) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
                                                               _6
# 853 "config_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
                                        gs
# 857 "config_parser.ml"
   : 'tv_nonempty_list_group_) (_startpos_gs_ : Lexing.position) (_endpos_gs_ : Lexing.position) (_startofs_gs_ : int) (_endofs_gs_ : int) (_loc_gs_ : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
                        atts
# 861 "config_parser.ml"
   : 'tv_list_attr_) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
                  _3
# 865 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
         name
# 869 "config_parser.ml"
   : 'tv_path) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 172 "config_parser.mly"
 _1
# 873 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 172 "config_parser.mly"
                                                                      ( Setup.addGph name (atts,Ast_config.Groups(gs)) )
# 878 "config_parser.ml"
     : 'tv_graph) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 171 "config_parser.mly"
                                                      _6
# 883 "config_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 171 "config_parser.mly"
                                        cs
# 887 "config_parser.ml"
   : 'tv_list_curve_) (_startpos_cs_ : Lexing.position) (_endpos_cs_ : Lexing.position) (_startofs_cs_ : int) (_endofs_cs_ : int) (_loc_cs_ : Lexing.position * Lexing.position) (
# 171 "config_parser.mly"
                        atts
# 891 "config_parser.ml"
   : 'tv_list_attr_) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 171 "config_parser.mly"
                  _3
# 895 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 171 "config_parser.mly"
         name
# 899 "config_parser.ml"
   : 'tv_path) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 170 "config_parser.mly"
      _1
# 904 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 171 "config_parser.mly"
                                                             ( Setup.addGph name (atts,Ast_config.Curves(cs)) )
# 909 "config_parser.ml"
     : 'tv_graph) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 243 "config_parser.mly"
  b
# 914 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 918 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) ->
    (
# 243 "config_parser.mly"
                           ( if b then "true" else "false" )
# 923 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 242 "config_parser.mly"
 _1
# 928 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 242 "config_parser.mly"
                           ( "ylegendfactor" )
# 933 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 241 "config_parser.mly"
 _1
# 938 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 241 "config_parser.mly"
                           ( "ylegend"       )
# 943 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 240 "config_parser.mly"
 _1
# 948 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 240 "config_parser.mly"
                           ( "yaxis"         )
# 953 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 239 "config_parser.mly"
 _1
# 958 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 239 "config_parser.mly"
                           ( "xlegend"       )
# 963 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 238 "config_parser.mly"
 _1
# 968 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 238 "config_parser.mly"
                           ( "xaxis"         )
# 973 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 237 "config_parser.mly"
 _1
# 978 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 237 "config_parser.mly"
                           ( "website"       )
# 983 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 236 "config_parser.mly"
 _1
# 988 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 236 "config_parser.mly"
                           ( "versions"      )
# 993 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 235 "config_parser.mly"
 _1
# 998 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 235 "config_parser.mly"
                           ( "flags"         )
# 1003 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 234 "config_parser.mly"
 _1
# 1008 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 234 "config_parser.mly"
                           ( "sort"          )
# 1013 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 233 "config_parser.mly"
 _1
# 1018 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 233 "config_parser.mly"
                           ( "size"          )
# 1023 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 232 "config_parser.mly"
 _1
# 1028 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 232 "config_parser.mly"
                           ( "results"       )
# 1033 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 231 "config_parser.mly"
 _1
# 1038 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 231 "config_parser.mly"
                           ( "ratio"         )
# 1043 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 230 "config_parser.mly"
 _1
# 1048 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 230 "config_parser.mly"
                           ( "projects"      )
# 1053 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 229 "config_parser.mly"
 _1
# 1058 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 229 "config_parser.mly"
                           ( "project"       )
# 1063 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 228 "config_parser.mly"
 _1
# 1068 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 228 "config_parser.mly"
                           ( "prefix"        )
# 1073 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 227 "config_parser.mly"
 _1
# 1078 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 227 "config_parser.mly"
                           ( "occurcolor"    )
# 1083 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 226 "config_parser.mly"
 _1
# 1088 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 226 "config_parser.mly"
                           ( "format"        )
# 1093 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 225 "config_parser.mly"
 _1
# 1098 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 225 "config_parser.mly"
                           ( "findchild"     )
# 1103 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 224 "config_parser.mly"
 _1
# 1108 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 224 "config_parser.mly"
                           ( "findcmd"       )
# 1113 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 223 "config_parser.mly"
 _1
# 1118 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 223 "config_parser.mly"
                           ( "pattern"       )
# 1123 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 222 "config_parser.mly"
 _1
# 1128 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 222 "config_parser.mly"
                           ( "notexistcolor" )
# 1133 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 221 "config_parser.mly"
 _1
# 1138 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 221 "config_parser.mly"
                           ( "none"          )
# 1143 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 220 "config_parser.mly"
 _1
# 1148 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 220 "config_parser.mly"
                           ( "marktype"      )
# 1153 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 219 "config_parser.mly"
 _1
# 1158 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 219 "config_parser.mly"
                           ( "linestyle"     )
# 1163 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 218 "config_parser.mly"
 _1
# 1168 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 218 "config_parser.mly"
                           ( "legend"        )
# 1173 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 217 "config_parser.mly"
 _1
# 1178 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 217 "config_parser.mly"
                           ( "info"          )
# 1183 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 216 "config_parser.mly"
 _1
# 1188 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 216 "config_parser.mly"
                           ( "group"         )
# 1193 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 215 "config_parser.mly"
 _1
# 1198 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 215 "config_parser.mly"
                           ( "graph"         )
# 1203 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 214 "config_parser.mly"
 _1
# 1208 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 214 "config_parser.mly"
                           ( "filename"      )
# 1213 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 213 "config_parser.mly"
 _1
# 1218 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 213 "config_parser.mly"
                           ( "file"          )
# 1223 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 212 "config_parser.mly"
 _1
# 1228 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 212 "config_parser.mly"
                           ( "factor"        )
# 1233 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 211 "config_parser.mly"
 _1
# 1238 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 211 "config_parser.mly"
                           ( "dir"           )
# 1243 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 210 "config_parser.mly"
 _1
# 1248 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 210 "config_parser.mly"
                           ( "data"          )
# 1253 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "config_parser.mly"
 _1
# 1258 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 209 "config_parser.mly"
                           ( "curve"         )
# 1263 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 208 "config_parser.mly"
 _1
# 1268 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 208 "config_parser.mly"
                           ( "cpucore"       )
# 1273 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 207 "config_parser.mly"
 _1
# 1278 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 207 "config_parser.mly"
                           ( "correl"        )
# 1283 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 206 "config_parser.mly"
 _1
# 1288 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 206 "config_parser.mly"
                           ( "color"         )
# 1293 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 205 "config_parser.mly"
 _1
# 1298 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 205 "config_parser.mly"
                           ( "patterns"      )
# 1303 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 204 "config_parser.mly"
 _1
# 1308 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 204 "config_parser.mly"
                           ( "nooccurcolor"  )
# 1313 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 203 "config_parser.mly"
  i
# 1318 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1322 "config_parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 203 "config_parser.mly"
                           (        i        )
# 1327 "config_parser.ml"
     : 'tv_gid) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 81 "config_parser.mly"
                      s
# 1332 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1336 "config_parser.ml"
  )) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) (
# 81 "config_parser.mly"
         _2
# 1340 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 81 "config_parser.mly"
 _1
# 1344 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 81 "config_parser.mly"
                                       ( Setup.setDBConn(s))
# 1349 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 80 "config_parser.mly"
                      c
# 1354 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1358 "config_parser.ml"
  )) (_startpos_c_ : Lexing.position) (_endpos_c_ : Lexing.position) (_startofs_c_ : int) (_endofs_c_ : int) (_loc_c_ : Lexing.position * Lexing.position) (
# 80 "config_parser.mly"
          _2
# 1362 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 80 "config_parser.mly"
 _1
# 1366 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 80 "config_parser.mly"
                                       ( Setup.setCPUcore(c))
# 1371 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 79 "config_parser.mly"
                      f
# 1376 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1380 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 79 "config_parser.mly"
          _2
# 1384 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 79 "config_parser.mly"
 _1
# 1388 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 79 "config_parser.mly"
                                       ( Setup.setSPFlags(f))
# 1393 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 78 "config_parser.mly"
                      c
# 1398 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1402 "config_parser.ml"
  )) (_startpos_c_ : Lexing.position) (_endpos_c_ : Lexing.position) (_startofs_c_ : int) (_endofs_c_ : int) (_loc_c_ : Lexing.position * Lexing.position) (
# 78 "config_parser.mly"
            _2
# 1406 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 78 "config_parser.mly"
 _1
# 1410 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 78 "config_parser.mly"
                                       ( Setup.setFindChild(c))
# 1415 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 77 "config_parser.mly"
                      c
# 1420 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1424 "config_parser.ml"
  )) (_startpos_c_ : Lexing.position) (_endpos_c_ : Lexing.position) (_startofs_c_ : int) (_endofs_c_ : int) (_loc_c_ : Lexing.position * Lexing.position) (
# 77 "config_parser.mly"
          _2
# 1428 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 77 "config_parser.mly"
 _1
# 1432 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 77 "config_parser.mly"
                                       ( Setup.setFindCmd(c))
# 1437 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 76 "config_parser.mly"
                      p
# 1442 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1446 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 76 "config_parser.mly"
          _2
# 1450 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 76 "config_parser.mly"
 _1
# 1454 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 76 "config_parser.mly"
                                       ( Setup.setWebsiteDir(p))
# 1459 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 75 "config_parser.mly"
                      p
# 1464 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1468 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 75 "config_parser.mly"
          _2
# 1472 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 75 "config_parser.mly"
 _1
# 1476 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 75 "config_parser.mly"
                                       ( Setup.setResultsDir(p))
# 1481 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 74 "config_parser.mly"
                      p
# 1486 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1490 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 74 "config_parser.mly"
           _2
# 1494 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 74 "config_parser.mly"
 _1
# 1498 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 74 "config_parser.mly"
                                       ( Setup.setPrjDir(p))
# 1503 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 73 "config_parser.mly"
                      p
# 1508 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1512 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 73 "config_parser.mly"
        _2
# 1516 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 73 "config_parser.mly"
 _1
# 1520 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 73 "config_parser.mly"
                                       ( Setup.setSmatchDir(p))
# 1525 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 72 "config_parser.mly"
                      p
# 1530 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1534 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 72 "config_parser.mly"
         _2
# 1538 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 71 "config_parser.mly"
       _1
# 1543 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 72 "config_parser.mly"
                                       ( Setup.setPrefix(p))
# 1548 "config_parser.ml"
     : 'tv_gbattr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
                                                      _7
# 1553 "config_parser.ml"
   : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
                                             size
# 1557 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1561 "config_parser.ml"
  )) (_startpos_size_ : Lexing.position) (_endpos_size_ : Lexing.position) (_startofs_size_ : int) (_endofs_size_ : int) (_loc_size_ : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
                                     _5
# 1565 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
                            date
# 1569 "config_parser.ml"
   : 'tv_date) (_startpos_date_ : Lexing.position) (_endpos_date_ : Lexing.position) (_startofs_date_ : int) (_endofs_date_ : int) (_loc_date_ : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
                    _3
# 1573 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 162 "config_parser.mly"
        name
# 1577 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1581 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 161 "config_parser.mly"
                  _1
# 1586 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 162 "config_parser.mly"
                                                             ( (name, date, size) )
# 1591 "config_parser.ml"
     : 'tv_full_version_desc) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 200 "config_parser.mly"
         i
# 1596 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1600 "config_parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) (
# 200 "config_parser.mly"
 _1
# 1604 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 200 "config_parser.mly"
                  ( -. float_of_int i )
# 1609 "config_parser.ml"
     : 'tv_float) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 199 "config_parser.mly"
         f
# 1614 "config_parser.ml"
   : (
# 36 "config_parser.mly"
      (float)
# 1618 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 199 "config_parser.mly"
 _1
# 1622 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 199 "config_parser.mly"
                  ( -. f              )
# 1627 "config_parser.ml"
     : 'tv_float) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 198 "config_parser.mly"
         i
# 1632 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1636 "config_parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 198 "config_parser.mly"
                  ( float_of_int i    )
# 1641 "config_parser.ml"
     : 'tv_float) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 197 "config_parser.mly"
         f
# 1646 "config_parser.ml"
   : (
# 36 "config_parser.mly"
      (float)
# 1650 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) ->
    (
# 197 "config_parser.mly"
                  ( f                 )
# 1655 "config_parser.ml"
     : 'tv_float) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 253 "config_parser.mly"
                       e2
# 1660 "config_parser.ml"
   : 'tv_expression) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 253 "config_parser.mly"
               _2
# 1664 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 253 "config_parser.mly"
  e1
# 1668 "config_parser.ml"
   : 'tv_expression) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 253 "config_parser.mly"
                                     ( Ast_config.Div(e1, e2)   )
# 1673 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 252 "config_parser.mly"
                       e2
# 1678 "config_parser.ml"
   : 'tv_expression) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 252 "config_parser.mly"
               _2
# 1682 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 252 "config_parser.mly"
  e1
# 1686 "config_parser.ml"
   : 'tv_expression) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 252 "config_parser.mly"
                                     ( Ast_config.Mul(e1, e2)   )
# 1691 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 251 "config_parser.mly"
                       e2
# 1696 "config_parser.ml"
   : 'tv_expression) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 251 "config_parser.mly"
               _2
# 1700 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 251 "config_parser.mly"
  e1
# 1704 "config_parser.ml"
   : 'tv_expression) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 251 "config_parser.mly"
                                     ( Ast_config.Minus(e1, e2) )
# 1709 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 250 "config_parser.mly"
                       e2
# 1714 "config_parser.ml"
   : 'tv_expression) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 250 "config_parser.mly"
               _2
# 1718 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 250 "config_parser.mly"
  e1
# 1722 "config_parser.ml"
   : 'tv_expression) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 250 "config_parser.mly"
                                     ( Ast_config.Plus(e1, e2)  )
# 1727 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 249 "config_parser.mly"
                    _3
# 1732 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 249 "config_parser.mly"
        e
# 1736 "config_parser.ml"
   : 'tv_expression) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 249 "config_parser.mly"
 _1
# 1740 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 249 "config_parser.mly"
                                     ( e                        )
# 1745 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 248 "config_parser.mly"
  f
# 1750 "config_parser.ml"
   : 'tv_float) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) ->
    (
# 248 "config_parser.mly"
                                     ( Ast_config.Cst f         )
# 1755 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 247 "config_parser.mly"
           p
# 1760 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1764 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 247 "config_parser.mly"
 _1
# 1768 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 247 "config_parser.mly"
                                     ( Ast_config.Project p     )
# 1773 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 246 "config_parser.mly"
           d
# 1778 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1782 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 245 "config_parser.mly"
           _1
# 1787 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 246 "config_parser.mly"
                                     ( Ast_config.Pattern d     )
# 1792 "config_parser.ml"
     : 'tv_expression) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 84 "config_parser.mly"
                        descExperiment
# 1797 "config_parser.ml"
   : 'tv_objects) (_startpos_descExperiment_ : Lexing.position) (_endpos_descExperiment_ : Lexing.position) (_startofs_descExperiment_ : int) (_endofs_descExperiment_ : int) (_loc_descExperiment_ : Lexing.position * Lexing.position) (
# 84 "config_parser.mly"
               name
# 1801 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1805 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 83 "config_parser.mly"
           _1
# 1810 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 84 "config_parser.mly"
                                                  (Setup.addExp name (descExperiment))
# 1815 "config_parser.ml"
     : 'tv_experiment) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 165 "config_parser.mly"
                              y
# 1820 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1824 "config_parser.ml"
  )) (_startpos_y_ : Lexing.position) (_endpos_y_ : Lexing.position) (_startofs_y_ : int) (_endofs_y_ : int) (_loc_y_ : Lexing.position * Lexing.position) (
# 165 "config_parser.mly"
                      _4
# 1828 "config_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 165 "config_parser.mly"
                d
# 1832 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1836 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 165 "config_parser.mly"
        _2
# 1840 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 165 "config_parser.mly"
  m
# 1844 "config_parser.ml"
   : (
# 35 "config_parser.mly"
      (int)
# 1848 "config_parser.ml"
  )) (_startpos_m_ : Lexing.position) (_endpos_m_ : Lexing.position) (_startofs_m_ : int) (_endofs_m_ : int) (_loc_m_ : Lexing.position * Lexing.position) ->
    (
# 165 "config_parser.mly"
                                                        ( Some (build_date m d y)  )
# 1853 "config_parser.ml"
     : 'tv_date) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 185 "config_parser.mly"
        _2
# 1858 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 185 "config_parser.mly"
 _1
# 1862 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 186 "config_parser.mly"
    ( (None, None, [], Misc.getpos _startpos__1_ _endofs) )
# 1867 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 183 "config_parser.mly"
                      atts
# 1872 "config_parser.ml"
   : 'tv_attrs) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 183 "config_parser.mly"
         name
# 1876 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 1880 "config_parser.ml"
  )) (_startpos_name_ : Lexing.position) (_endpos_name_ : Lexing.position) (_startofs_name_ : int) (_endofs_name_ : int) (_loc_name_ : Lexing.position * Lexing.position) (
# 183 "config_parser.mly"
 _1
# 1884 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 184 "config_parser.mly"
    ((None, None, Ast_config.Legend(name)::atts,Misc.getpos _startpos__1_ _endofs))
# 1889 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 181 "config_parser.mly"
                                 d
# 1894 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1898 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 181 "config_parser.mly"
                       _4
# 1902 "config_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 181 "config_parser.mly"
                  p
# 1906 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1910 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 181 "config_parser.mly"
        _2
# 1914 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 181 "config_parser.mly"
 _1
# 1918 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 182 "config_parser.mly"
    ( (Some p, Some d, [], Misc.getpos _startpos__1_ _endofs) )
# 1923 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
                                       atts
# 1928 "config_parser.ml"
   : 'tv_attrs) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
                                 d
# 1932 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1936 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
                       _4
# 1940 "config_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
                  p
# 1944 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1948 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
        _2
# 1952 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 179 "config_parser.mly"
 _1
# 1956 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 180 "config_parser.mly"
    ( (Some p, Some d, atts, Misc.getpos _startpos__1_ _endofs) )
# 1961 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 178 "config_parser.mly"
                        atts
# 1966 "config_parser.ml"
   : 'tv_attrs) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 178 "config_parser.mly"
                  d
# 1970 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1974 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 178 "config_parser.mly"
        _2
# 1978 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 178 "config_parser.mly"
 _1
# 1982 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 178 "config_parser.mly"
                                   ( (None  ,Some d, atts, Misc.getpos _startpos__1_ _endofs) )
# 1987 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 177 "config_parser.mly"
                  d
# 1992 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 1996 "config_parser.ml"
  )) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 177 "config_parser.mly"
        _2
# 2000 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 177 "config_parser.mly"
 _1
# 2004 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 177 "config_parser.mly"
                                   ( (None  ,Some d,   [], Misc.getpos _startpos__1_ _endofs) )
# 2009 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 176 "config_parser.mly"
                        atts
# 2014 "config_parser.ml"
   : 'tv_attrs) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 176 "config_parser.mly"
                  p
# 2018 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2022 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 176 "config_parser.mly"
        _2
# 2026 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 176 "config_parser.mly"
 _1
# 2030 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 176 "config_parser.mly"
                                   ( (Some p,None  , atts, Misc.getpos _startpos__1_ _endofs) )
# 2035 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 175 "config_parser.mly"
                  p
# 2040 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2044 "config_parser.ml"
  )) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 175 "config_parser.mly"
        _2
# 2048 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 174 "config_parser.mly"
      _1
# 2053 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 175 "config_parser.mly"
                                   ( (Some p,None  ,   [], Misc.getpos _startpos__1_ _endofs) )
# 2058 "config_parser.ml"
     : 'tv_curve) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 154 "config_parser.mly"
                      _3
# 2063 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 154 "config_parser.mly"
       atts
# 2067 "config_parser.ml"
   : 'tv_list_attr_) (_startpos_atts_ : Lexing.position) (_endpos_atts_ : Lexing.position) (_startofs_atts_ : int) (_endofs_atts_ : int) (_loc_atts_ : Lexing.position * Lexing.position) (
# 153 "config_parser.mly"
      _1
# 2072 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 154 "config_parser.mly"
                            (atts)
# 2077 "config_parser.ml"
     : 'tv_attrs) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 151 "config_parser.mly"
                                y
# 2082 "config_parser.ml"
   : 'tv_float) (_startpos_y_ : Lexing.position) (_endpos_y_ : Lexing.position) (_startofs_y_ : int) (_endofs_y_ : int) (_loc_y_ : Lexing.position * Lexing.position) (
# 151 "config_parser.mly"
                        x
# 2086 "config_parser.ml"
   : 'tv_float) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) (
# 151 "config_parser.mly"
       _2
# 2090 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 151 "config_parser.mly"
 _1
# 2094 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 151 "config_parser.mly"
                                                   ( Ast_config.Size(x,y))
# 2099 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 150 "config_parser.mly"
                        b
# 2104 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2108 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 150 "config_parser.mly"
       _2
# 2112 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 150 "config_parser.mly"
 _1
# 2116 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 150 "config_parser.mly"
                                                   ( Ast_config.Sort(b))
# 2121 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 149 "config_parser.mly"
                        f
# 2126 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2130 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 149 "config_parser.mly"
          _2
# 2134 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 149 "config_parser.mly"
 _1
# 2138 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 149 "config_parser.mly"
                                                   ( Ast_config.SPFlags(f))
# 2143 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 148 "config_parser.mly"
                        v
# 2148 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2152 "config_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 148 "config_parser.mly"
            _2
# 2156 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 148 "config_parser.mly"
 _1
# 2160 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 148 "config_parser.mly"
                                                   ( Ast_config.PUBLICSCM(v))
# 2165 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 147 "config_parser.mly"
                        v
# 2170 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2174 "config_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 147 "config_parser.mly"
           _2
# 2178 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 147 "config_parser.mly"
 _1
# 2182 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 147 "config_parser.mly"
                                                   ( Ast_config.LOCALSCM(v))
# 2187 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 146 "config_parser.mly"
                        v
# 2192 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2196 "config_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 146 "config_parser.mly"
       _2
# 2200 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 146 "config_parser.mly"
 _1
# 2204 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 146 "config_parser.mly"
                                                   ( Ast_config.VMin(v))
# 2209 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 145 "config_parser.mly"
                        re
# 2214 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2218 "config_parser.ml"
  )) (_startpos_re_ : Lexing.position) (_endpos_re_ : Lexing.position) (_startofs_re_ : int) (_endofs_re_ : int) (_loc_re_ : Lexing.position * Lexing.position) (
# 145 "config_parser.mly"
           _2
# 2222 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 145 "config_parser.mly"
 _1
# 2226 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 145 "config_parser.mly"
                                                   ( Ast_config.VersionRE (re))
# 2231 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 139 "config_parser.mly"
                                              _5
# 2236 "config_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 139 "config_parser.mly"
                              vs
# 2240 "config_parser.ml"
   : 'tv_list_version_) (_startpos_vs_ : Lexing.position) (_endpos_vs_ : Lexing.position) (_startofs_vs_ : int) (_endofs_vs_ : int) (_loc_vs_ : Lexing.position * Lexing.position) (
# 139 "config_parser.mly"
                       _3
# 2244 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 139 "config_parser.mly"
           _2
# 2248 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 139 "config_parser.mly"
 _1
# 2252 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 139 "config_parser.mly"
                                                   (
  match vs with
      (name, _,_)::_ ->
	let count = List.length (Str.split (Str.regexp_string (Str.quote "/")) name) in
	Ast_config.Version (count, vs)
    | [] -> Ast_config.Version (0, []))
# 2262 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 138 "config_parser.mly"
                        b
# 2267 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2271 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 138 "config_parser.mly"
        _2
# 2275 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 138 "config_parser.mly"
 _1
# 2279 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 138 "config_parser.mly"
                                                   ( Ast_config.Ratio(b))
# 2284 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 137 "config_parser.mly"
                        b
# 2289 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2293 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 137 "config_parser.mly"
        _2
# 2297 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 137 "config_parser.mly"
 _1
# 2301 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 137 "config_parser.mly"
                                                   ( Ast_config.Prune(b))
# 2306 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 136 "config_parser.mly"
                        b
# 2311 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2315 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 136 "config_parser.mly"
         _2
# 2319 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 136 "config_parser.mly"
 _1
# 2323 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 136 "config_parser.mly"
                                                   ( Ast_config.Author(b))
# 2328 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 135 "config_parser.mly"
                        prj
# 2333 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2337 "config_parser.ml"
  )) (_startpos_prj_ : Lexing.position) (_endpos_prj_ : Lexing.position) (_startofs_prj_ : int) (_endofs_prj_ : int) (_loc_prj_ : Lexing.position * Lexing.position) (
# 135 "config_parser.mly"
          _2
# 2341 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 135 "config_parser.mly"
 _1
# 2345 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 135 "config_parser.mly"
                                                   ( Ast_config.DftProject(prj))
# 2350 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 134 "config_parser.mly"
                                        b
# 2355 "config_parser.ml"
   : 'tv_float) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 134 "config_parser.mly"
                                v
# 2359 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 134 "config_parser.mly"
                        r
# 2363 "config_parser.ml"
   : 'tv_float) (_startpos_r_ : Lexing.position) (_endpos_r_ : Lexing.position) (_startofs_r_ : int) (_endofs_r_ : int) (_loc_r_ : Lexing.position * Lexing.position) (
# 134 "config_parser.mly"
                _2
# 2367 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 134 "config_parser.mly"
 _1
# 2371 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 134 "config_parser.mly"
                                                   ( Ast_config.NotExistColor(r,v,b))
# 2376 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 133 "config_parser.mly"
                        t
# 2381 "config_parser.ml"
   : 'tv_gid) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) (
# 133 "config_parser.mly"
        _2
# 2385 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 133 "config_parser.mly"
 _1
# 2389 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 133 "config_parser.mly"
                                                   ( Ast_config.YAxis(t))
# 2394 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 132 "config_parser.mly"
                        v
# 2399 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 132 "config_parser.mly"
       _2
# 2403 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 132 "config_parser.mly"
 _1
# 2407 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 132 "config_parser.mly"
                                                   ( Ast_config.XMin(v))
# 2412 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 131 "config_parser.mly"
                        t
# 2417 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2421 "config_parser.ml"
  )) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) (
# 131 "config_parser.mly"
        _2
# 2425 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 131 "config_parser.mly"
 _1
# 2429 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 131 "config_parser.mly"
                                                   ( Ast_config.XAxis(t))
# 2434 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 130 "config_parser.mly"
                        v
# 2439 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 130 "config_parser.mly"
           _2
# 2443 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 130 "config_parser.mly"
 _1
# 2447 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 130 "config_parser.mly"
                                                   ( Ast_config.MarkSize(v))
# 2452 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 129 "config_parser.mly"
                        m
# 2457 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2461 "config_parser.ml"
  )) (_startpos_m_ : Lexing.position) (_endpos_m_ : Lexing.position) (_startofs_m_ : int) (_endofs_m_ : int) (_loc_m_ : Lexing.position * Lexing.position) (
# 129 "config_parser.mly"
           _2
# 2465 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 129 "config_parser.mly"
 _1
# 2469 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 129 "config_parser.mly"
                                                   ( Ast_config.MarkType(m))
# 2474 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 128 "config_parser.mly"
                       _3
# 2479 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 128 "config_parser.mly"
           _2
# 2483 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 128 "config_parser.mly"
 _1
# 2487 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 128 "config_parser.mly"
                                                   ( Ast_config.MarkType("none"))
# 2492 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 127 "config_parser.mly"
                        s
# 2497 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2501 "config_parser.ml"
  )) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) (
# 127 "config_parser.mly"
            _2
# 2505 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 127 "config_parser.mly"
 _1
# 2509 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 127 "config_parser.mly"
                                                   ( Ast_config.LineType(s))
# 2514 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 126 "config_parser.mly"
                       _3
# 2519 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 126 "config_parser.mly"
            _2
# 2523 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 126 "config_parser.mly"
 _1
# 2527 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 126 "config_parser.mly"
                                                   ( Ast_config.LineType("none"))
# 2532 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 125 "config_parser.mly"
                        f
# 2537 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2541 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 125 "config_parser.mly"
                _2
# 2545 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 125 "config_parser.mly"
 _1
# 2549 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 125 "config_parser.mly"
                                                   ( Ast_config.YLegendFactor(f))
# 2554 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 124 "config_parser.mly"
                        l
# 2559 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2563 "config_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 124 "config_parser.mly"
          _2
# 2567 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 124 "config_parser.mly"
 _1
# 2571 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 124 "config_parser.mly"
                                                   ( Ast_config.YLegend(to_jgraph_fmt l))
# 2576 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 123 "config_parser.mly"
                        l
# 2581 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2585 "config_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 123 "config_parser.mly"
          _2
# 2589 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 123 "config_parser.mly"
 _1
# 2593 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 123 "config_parser.mly"
                                                   ( Ast_config.XLegend(to_jgraph_fmt l))
# 2598 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 122 "config_parser.mly"
                        l
# 2603 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2607 "config_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 122 "config_parser.mly"
         _2
# 2611 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 122 "config_parser.mly"
 _1
# 2615 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 122 "config_parser.mly"
                                                   ( Ast_config.Legend(l))
# 2620 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 121 "config_parser.mly"
                        b
# 2625 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2629 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 121 "config_parser.mly"
       _2
# 2633 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 121 "config_parser.mly"
 _1
# 2637 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 121 "config_parser.mly"
                                                   ( Ast_config.Info(b))
# 2642 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 120 "config_parser.mly"
                        dft
# 2647 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2651 "config_parser.ml"
  )) (_startpos_dft_ : Lexing.position) (_endpos_dft_ : Lexing.position) (_startofs_dft_ : int) (_endofs_dft_ : int) (_loc_dft_ : Lexing.position * Lexing.position) (
# 120 "config_parser.mly"
         _2
# 2655 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 120 "config_parser.mly"
 _1
# 2659 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 120 "config_parser.mly"
                                                   ( Ast_config.Format(dft) )
# 2664 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 119 "config_parser.mly"
                        l
# 2669 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2673 "config_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 119 "config_parser.mly"
         _2
# 2677 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 119 "config_parser.mly"
 _1
# 2681 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 119 "config_parser.mly"
                                                   ( Ast_config.Footer(l))
# 2686 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 118 "config_parser.mly"
                        b
# 2691 "config_parser.ml"
   : (
# 39 "config_parser.mly"
      (bool)
# 2695 "config_parser.ml"
  )) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 118 "config_parser.mly"
           _2
# 2699 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 118 "config_parser.mly"
 _1
# 2703 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 118 "config_parser.mly"
                                                   ( Ast_config.Filename(b))
# 2708 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 117 "config_parser.mly"
                       _3
# 2713 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 117 "config_parser.mly"
       _2
# 2717 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 117 "config_parser.mly"
 _1
# 2721 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 117 "config_parser.mly"
                                                   ( Ast_config.File(None))
# 2726 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 115 "config_parser.mly"
                        f
# 2731 "config_parser.ml"
   : (
# 38 "config_parser.mly"
      (string)
# 2735 "config_parser.ml"
  )) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 115 "config_parser.mly"
       _2
# 2739 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 115 "config_parser.mly"
 _1
# 2743 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 116 "config_parser.mly"
    ( if f = "" then Ast_config.File(None) else Ast_config.File(Some f) )
# 2748 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 114 "config_parser.mly"
                        f
# 2753 "config_parser.ml"
   : 'tv_float) (_startpos_f_ : Lexing.position) (_endpos_f_ : Lexing.position) (_startofs_f_ : int) (_endofs_f_ : int) (_loc_f_ : Lexing.position * Lexing.position) (
# 114 "config_parser.mly"
         _2
# 2757 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 114 "config_parser.mly"
 _1
# 2761 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 114 "config_parser.mly"
                                                   ( Ast_config.Factor(f))
# 2766 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 113 "config_parser.mly"
                        d
# 2771 "config_parser.ml"
   : 'tv_path) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 113 "config_parser.mly"
         _2
# 2775 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 113 "config_parser.mly"
 _1
# 2779 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 113 "config_parser.mly"
                                                   ( Ast_config.SubDir(d))
# 2784 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 112 "config_parser.mly"
                        d
# 2789 "config_parser.ml"
   : 'tv_path) (_startpos_d_ : Lexing.position) (_endpos_d_ : Lexing.position) (_startofs_d_ : int) (_endofs_d_ : int) (_loc_d_ : Lexing.position * Lexing.position) (
# 112 "config_parser.mly"
      _2
# 2793 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 112 "config_parser.mly"
 _1
# 2797 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 112 "config_parser.mly"
                                                   ( Ast_config.Dir(d))
# 2802 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 111 "config_parser.mly"
                        e
# 2807 "config_parser.ml"
   : 'tv_expression) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 111 "config_parser.mly"
       _2
# 2811 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 111 "config_parser.mly"
 _1
# 2815 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 111 "config_parser.mly"
                                                   ( Ast_config.Data(e))
# 2820 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 110 "config_parser.mly"
                                        b
# 2825 "config_parser.ml"
   : 'tv_float) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 110 "config_parser.mly"
                                v
# 2829 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 110 "config_parser.mly"
                        r
# 2833 "config_parser.ml"
   : 'tv_float) (_startpos_r_ : Lexing.position) (_endpos_r_ : Lexing.position) (_startofs_r_ : int) (_endofs_r_ : int) (_loc_r_ : Lexing.position * Lexing.position) (
# 110 "config_parser.mly"
               _2
# 2837 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 110 "config_parser.mly"
 _1
# 2841 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 110 "config_parser.mly"
                                                   ( Ast_config.PatternColor(r,v,b))
# 2846 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 109 "config_parser.mly"
                        dft
# 2851 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2855 "config_parser.ml"
  )) (_startpos_dft_ : Lexing.position) (_endpos_dft_ : Lexing.position) (_startofs_dft_ : int) (_endofs_dft_ : int) (_loc_dft_ : Lexing.position * Lexing.position) (
# 109 "config_parser.mly"
          _2
# 2859 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 109 "config_parser.mly"
 _1
# 2863 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 109 "config_parser.mly"
                                                   ( Ast_config.DftPattern(dft))
# 2868 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 108 "config_parser.mly"
                                        b
# 2873 "config_parser.ml"
   : 'tv_float) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 108 "config_parser.mly"
                                v
# 2877 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 108 "config_parser.mly"
                        r
# 2881 "config_parser.ml"
   : 'tv_float) (_startpos_r_ : Lexing.position) (_endpos_r_ : Lexing.position) (_startofs_r_ : int) (_endofs_r_ : int) (_loc_r_ : Lexing.position * Lexing.position) (
# 108 "config_parser.mly"
             _2
# 2885 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 108 "config_parser.mly"
 _1
# 2889 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 108 "config_parser.mly"
                                                   ( Ast_config.CleanColor(r,v,b))
# 2894 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 107 "config_parser.mly"
                        dft
# 2899 "config_parser.ml"
   : (
# 37 "config_parser.mly"
      (string)
# 2903 "config_parser.ml"
  )) (_startpos_dft_ : Lexing.position) (_endpos_dft_ : Lexing.position) (_startofs_dft_ : int) (_endofs_dft_ : int) (_loc_dft_ : Lexing.position * Lexing.position) (
# 107 "config_parser.mly"
         _2
# 2907 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 107 "config_parser.mly"
 _1
# 2911 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 107 "config_parser.mly"
                                                   ( Ast_config.Correl(dft) )
# 2916 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 106 "config_parser.mly"
                       _3
# 2921 "config_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 106 "config_parser.mly"
         _2
# 2925 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 106 "config_parser.mly"
 _1
# 2929 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 106 "config_parser.mly"
                                                   ( Ast_config.Correl("none") )
# 2934 "config_parser.ml"
     : 'tv_attr) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 105 "config_parser.mly"
                                        b
# 2939 "config_parser.ml"
   : 'tv_float) (_startpos_b_ : Lexing.position) (_endpos_b_ : Lexing.position) (_startofs_b_ : int) (_endofs_b_ : int) (_loc_b_ : Lexing.position * Lexing.position) (
# 105 "config_parser.mly"
                                v
# 2943 "config_parser.ml"
   : 'tv_float) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 105 "config_parser.mly"
                        r
# 2947 "config_parser.ml"
   : 'tv_float) (_startpos_r_ : Lexing.position) (_endpos_r_ : Lexing.position) (_startofs_r_ : int) (_endofs_r_ : int) (_loc_r_ : Lexing.position * Lexing.position) (
# 105 "config_parser.mly"
        _2
# 2951 "config_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 104 "config_parser.mly"
     _1
# 2956 "config_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 105 "config_parser.mly"
                                                   ( Ast_config.Color(r,v,b) )
# 2961 "config_parser.ml"
     : 'tv_attr) in
  ((let rec diverge() = diverge() in diverge()) : 'tv_version * 'tv_toplevel * 'tv_separated_nonempty_list_TSLASH_gid_ * 'tv_projectsub * 'tv_projects_cache * 'tv_projectobj * 'tv_project_cache * 'tv_project * 'tv_patternsub * 'tv_patternobj * 'tv_pattern * 'tv_path * 'tv_objects * 'tv_nonempty_list_group_ * 'tv_main * 'tv_list_version_ * 'tv_list_toplevel_ * 'tv_list_projectsub_ * 'tv_list_projectobj_ * 'tv_list_project_cache_ * 'tv_list_patternsub_ * 'tv_list_patternobj_ * 'tv_list_full_version_desc_ * 'tv_list_curve_ * 'tv_list_attr_ * 'tv_group * 'tv_graph * 'tv_gid * 'tv_gbattr * 'tv_full_version_desc * 'tv_float * 'tv_expression * 'tv_experiment * 'tv_date * 'tv_curve * 'tv_attrs * 'tv_attr)

and menhir_end_marker =
  0
