
type token = 
  | TVIEW
  | TVERT
  | TUNRELATED
  | TUNKNOWN
  | TTODO
  | TTEXT of (
# 11 "org_parser.mly"
      (string)
# 12 "org_parser.ml"
)
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
  | TInt of (
# 10 "org_parser.mly"
      (int)
# 28 "org_parser.ml"
)
  | TId of (
# 11 "org_parser.mly"
      (string)
# 33 "org_parser.ml"
)
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

# 1 "org_parser.mly"
  


# 51 "org_parser.ml"

let menhir_begin_marker =
  0

and (xv_textelm_nost, xv_textelm_nospecial, xv_textelm, xv_text, xv_tailelm, xv_tail, xv_status_elm, xv_status, xv_split_path_elt, xv_reason, xv_path_elt, xv_path, xv_org_option, xv_oneline, xv_ol_option, xv_nonempty_list_tailelm_, xv_nonempty_list_TSTAR_, xv_nonempty_list_TSPACE_, xv_lm, xv_list_textelm_, xv_list_split_path_elt_, xv_list_path_elt_, xv_list_ol_option_, xv_list_TSPACE_, xv_link, xv_elt) =
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
         xs
# 60 "org_parser.ml"
   : 'tv_nonempty_list_tailelm_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
  x
# 64 "org_parser.ml"
   : 'tv_tailelm) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 69 "org_parser.ml"
     : 'tv_nonempty_list_tailelm_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 217 "<standard.mly>"
  x
# 74 "org_parser.ml"
   : 'tv_tailelm) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 79 "org_parser.ml"
     : 'tv_nonempty_list_tailelm_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
         xs
# 84 "org_parser.ml"
   : 'tv_nonempty_list_TSTAR_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
  x
# 88 "org_parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 93 "org_parser.ml"
     : 'tv_nonempty_list_TSTAR_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 217 "<standard.mly>"
  x
# 98 "org_parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 103 "org_parser.ml"
     : 'tv_nonempty_list_TSTAR_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
         xs
# 108 "org_parser.ml"
   : 'tv_nonempty_list_TSPACE_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 219 "<standard.mly>"
  x
# 112 "org_parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 117 "org_parser.ml"
     : 'tv_nonempty_list_TSPACE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 217 "<standard.mly>"
  x
# 122 "org_parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 127 "org_parser.ml"
     : 'tv_nonempty_list_TSPACE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 132 "org_parser.ml"
   : 'tv_list_textelm_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 136 "org_parser.ml"
   : 'tv_textelm) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 141 "org_parser.ml"
     : 'tv_list_textelm_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 147 "org_parser.ml"
     : 'tv_list_textelm_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 152 "org_parser.ml"
   : 'tv_list_split_path_elt_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 156 "org_parser.ml"
   : 'tv_split_path_elt) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 161 "org_parser.ml"
     : 'tv_list_split_path_elt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 167 "org_parser.ml"
     : 'tv_list_split_path_elt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 172 "org_parser.ml"
   : 'tv_list_path_elt_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 176 "org_parser.ml"
   : 'tv_path_elt) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 181 "org_parser.ml"
     : 'tv_list_path_elt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 187 "org_parser.ml"
     : 'tv_list_path_elt_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 192 "org_parser.ml"
   : 'tv_list_ol_option_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 196 "org_parser.ml"
   : 'tv_ol_option) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 201 "org_parser.ml"
     : 'tv_list_ol_option_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 207 "org_parser.ml"
     : 'tv_list_ol_option_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
         xs
# 212 "org_parser.ml"
   : 'tv_list_TSPACE_) (_startpos_xs_ : Lexing.position) (_endpos_xs_ : Lexing.position) (_startofs_xs_ : int) (_endofs_xs_ : int) (_loc_xs_ : Lexing.position * Lexing.position) (
# 209 "<standard.mly>"
  x
# 216 "org_parser.ml"
   : unit) (_startpos_x_ : Lexing.position) (_endpos_x_ : Lexing.position) (_startofs_x_ : int) (_endofs_x_ : int) (_loc_x_ : Lexing.position * Lexing.position) ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 221 "org_parser.ml"
     : 'tv_list_TSPACE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 208 "<standard.mly>"
    ( [] )
# 227 "org_parser.ml"
     : 'tv_list_TSPACE_) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 97 "org_parser.mly"
  _1
# 232 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 97 "org_parser.mly"
                                        ( " "             )
# 237 "org_parser.ml"
     : 'tv_textelm_nost) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 96 "org_parser.mly"
    t
# 242 "org_parser.ml"
   : 'tv_textelm_nospecial) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) ->
    (
# 96 "org_parser.mly"
                                        ( t               )
# 247 "org_parser.ml"
     : 'tv_textelm_nost) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 110 "org_parser.mly"
  _1
# 252 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 110 "org_parser.mly"
                                        ( "view"          )
# 257 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 109 "org_parser.mly"
  _1
# 262 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 109 "org_parser.mly"
                                        ( "IGNORED"       )
# 267 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 108 "org_parser.mly"
  _1
# 272 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 108 "org_parser.mly"
                                        ( "#+"            )
# 277 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 107 "org_parser.mly"
  _1
# 282 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 107 "org_parser.mly"
                                        ( "="             )
# 287 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 106 "org_parser.mly"
  _1
# 292 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 106 "org_parser.mly"
                                        ( "*"             )
# 297 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 105 "org_parser.mly"
  _1
# 302 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 105 "org_parser.mly"
                                        ( "config"        )
# 307 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 104 "org_parser.mly"
  _1
# 312 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 104 "org_parser.mly"
                                        ( ":"             )
# 317 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 103 "org_parser.mly"
  _1
# 322 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 103 "org_parser.mly"
                                        ( "/"             )
# 327 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 102 "org_parser.mly"
    i
# 332 "org_parser.ml"
   : (
# 10 "org_parser.mly"
      (int)
# 336 "org_parser.ml"
  )) (_startpos_i_ : Lexing.position) (_endpos_i_ : Lexing.position) (_startofs_i_ : int) (_endofs_i_ : int) (_loc_i_ : Lexing.position * Lexing.position) ->
    (
# 102 "org_parser.mly"
                                        ( string_of_int i )
# 341 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 101 "org_parser.mly"
    t
# 346 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 350 "org_parser.ml"
  )) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) ->
    (
# 101 "org_parser.mly"
                                        ( t               )
# 355 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 100 "org_parser.mly"
    id
# 360 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 364 "org_parser.ml"
  )) (_startpos_id_ : Lexing.position) (_endpos_id_ : Lexing.position) (_startofs_id_ : int) (_endofs_id_ : int) (_loc_id_ : Lexing.position * Lexing.position) ->
    (
# 100 "org_parser.mly"
                                        ( id              )
# 369 "org_parser.ml"
     : 'tv_textelm_nospecial) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 93 "org_parser.mly"
    s
# 374 "org_parser.ml"
   : 'tv_status_elm) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) ->
    (
# 93 "org_parser.mly"
                                        ( Org_helper.get_status s    )
# 379 "org_parser.ml"
     : 'tv_textelm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 92 "org_parser.mly"
    t
# 384 "org_parser.ml"
   : 'tv_textelm_nost) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) ->
    (
# 92 "org_parser.mly"
                                        ( t               )
# 389 "org_parser.ml"
     : 'tv_textelm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 85 "org_parser.mly"
    el
# 394 "org_parser.ml"
   : 'tv_list_textelm_) (_startpos_el_ : Lexing.position) (_endpos_el_ : Lexing.position) (_startofs_el_ : int) (_endofs_el_ : int) (_loc_el_ : Lexing.position * Lexing.position) ->
    (
# 85 "org_parser.mly"
                                        ( String.concat "" el )
# 399 "org_parser.ml"
     : 'tv_text) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 29 "org_parser.mly"
        _2
# 404 "org_parser.ml"
   : 'tv_lm) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 28 "org_parser.mly"
        _1
# 409 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 29 "org_parser.mly"
            ()
# 414 "org_parser.ml"
     : 'tv_tailelm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                                                                           _9
# 419 "org_parser.ml"
   : unit) (_startpos__9_ : Lexing.position) (_endpos__9_ : Lexing.position) (_startofs__9_ : int) (_endofs__9_ : int) (_loc__9_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                                                    _8
# 423 "org_parser.ml"
   : 'tv_nonempty_list_tailelm_) (_startpos__8_ : Lexing.position) (_endpos__8_ : Lexing.position) (_startofs__8_ : int) (_endofs__8_ : int) (_loc__8_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                                              _7
# 427 "org_parser.ml"
   : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                                       _6
# 431 "org_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                                 _5
# 435 "org_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                          _4
# 439 "org_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
                   _3
# 443 "org_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
            _2
# 447 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 26 "org_parser.mly"
  _1
# 451 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 26 "org_parser.mly"
                                                                                       ()
# 456 "org_parser.ml"
     : 'tv_tail) : (
# 14 "org_parser.mly"
      (unit)
# 460 "org_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 25 "org_parser.mly"
                                                  _6
# 465 "org_parser.ml"
   : unit) (_startpos__6_ : Lexing.position) (_endpos__6_ : Lexing.position) (_startofs__6_ : int) (_endofs__6_ : int) (_loc__6_ : Lexing.position * Lexing.position) (
# 25 "org_parser.mly"
                                          _5
# 469 "org_parser.ml"
   : unit) (_startpos__5_ : Lexing.position) (_endpos__5_ : Lexing.position) (_startofs__5_ : int) (_endofs__5_ : int) (_loc__5_ : Lexing.position * Lexing.position) (
# 25 "org_parser.mly"
                                   _4
# 473 "org_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 25 "org_parser.mly"
                              _3
# 477 "org_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 25 "org_parser.mly"
                       _2
# 481 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 24 "org_parser.mly"
     _1
# 486 "org_parser.ml"
   : 'tv_nonempty_list_TSTAR_) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 25 "org_parser.mly"
                                                            (      )
# 491 "org_parser.ml"
     : 'tv_tail) : (
# 14 "org_parser.mly"
      (unit)
# 495 "org_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 121 "org_parser.mly"
  _1
# 500 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 121 "org_parser.mly"
                                     ( Ast_org.UNRELATED )
# 505 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 120 "org_parser.mly"
  _1
# 510 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 120 "org_parser.mly"
                                     ( Ast_org.SAME      )
# 515 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 119 "org_parser.mly"
  _1
# 520 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 119 "org_parser.mly"
                                     ( Ast_org.FP        )
# 525 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 118 "org_parser.mly"
  _1
# 530 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 118 "org_parser.mly"
                                     ( Ast_org.BUG       )
# 535 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 116 "org_parser.mly"
  _1
# 540 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 116 "org_parser.mly"
                                     ( Ast_org.UNKNOWN   )
# 545 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 115 "org_parser.mly"
  _1
# 550 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 115 "org_parser.mly"
                                     ( Ast_org.OK        )
# 555 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 113 "org_parser.mly"
           _1
# 561 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 114 "org_parser.mly"
                                     ( Ast_org.TODO      )
# 566 "org_parser.ml"
     : 'tv_status_elm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 51 "org_parser.mly"
               _2
# 571 "org_parser.ml"
   : 'tv_nonempty_list_TSPACE_) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 51 "org_parser.mly"
   s
# 575 "org_parser.ml"
   : 'tv_status_elm) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) ->
    (
# 51 "org_parser.mly"
                                       ( s                 )
# 580 "org_parser.ml"
     : 'tv_status) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 50 "org_parser.mly"
                                       ( Ast_org.EMPTY     )
# 586 "org_parser.ml"
     : 'tv_status) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 73 "org_parser.mly"
  _1
# 591 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 73 "org_parser.mly"
                                   ("=")
# 596 "org_parser.ml"
     : 'tv_split_path_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 72 "org_parser.mly"
   e
# 601 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 605 "org_parser.ml"
  )) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    (
# 72 "org_parser.mly"
                                     (e)
# 610 "org_parser.ml"
     : 'tv_split_path_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 89 "org_parser.mly"
                        t
# 615 "org_parser.ml"
   : 'tv_text) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) (
# 89 "org_parser.mly"
    h
# 619 "org_parser.ml"
   : 'tv_textelm_nospecial) (_startpos_h_ : Lexing.position) (_endpos_h_ : Lexing.position) (_startofs_h_ : int) (_endofs_h_ : int) (_loc_h_ : Lexing.position * Lexing.position) ->
    (
# 89 "org_parser.mly"
                                        ( h ^ t )
# 624 "org_parser.ml"
     : 'tv_reason) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ->
    (
# 88 "org_parser.mly"
                                        ( ""              )
# 630 "org_parser.ml"
     : 'tv_reason) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 62 "org_parser.mly"
           e
# 635 "org_parser.ml"
   : 'tv_elt) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 61 "org_parser.mly"
         _1
# 640 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 62 "org_parser.mly"
                   (e)
# 645 "org_parser.ml"
     : 'tv_path_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 59 "org_parser.mly"
          p
# 650 "org_parser.ml"
   : 'tv_list_path_elt_) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 59 "org_parser.mly"
    e
# 654 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 658 "org_parser.ml"
  )) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    (
# 59 "org_parser.mly"
                                     ( e ^ "/" ^ (String.concat "/" p) )
# 663 "org_parser.ml"
     : 'tv_path) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 58 "org_parser.mly"
    p
# 668 "org_parser.ml"
   : 'tv_list_path_elt_) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) ->
    (
# 58 "org_parser.mly"
                                     (     "/" ^ (String.concat "/" p) )
# 673 "org_parser.ml"
     : 'tv_path) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 82 "org_parser.mly"
                v
# 678 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 682 "org_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 82 "org_parser.mly"
        _2
# 686 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 82 "org_parser.mly"
  _1
# 690 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 82 "org_parser.mly"
                         ( Ast_org.Face v )
# 695 "org_parser.ml"
     : 'tv_org_option) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 81 "org_parser.mly"
                v
# 700 "org_parser.ml"
   : (
# 10 "org_parser.mly"
      (int)
# 704 "org_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 81 "org_parser.mly"
        _2
# 708 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 81 "org_parser.mly"
  _1
# 712 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 81 "org_parser.mly"
                         ( Ast_org.ColE v )
# 717 "org_parser.ml"
     : 'tv_org_option) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 80 "org_parser.mly"
                v
# 722 "org_parser.ml"
   : (
# 10 "org_parser.mly"
      (int)
# 726 "org_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 80 "org_parser.mly"
        _2
# 730 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 80 "org_parser.mly"
  _1
# 734 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 80 "org_parser.mly"
                         ( Ast_org.ColB v )
# 739 "org_parser.ml"
     : 'tv_org_option) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 79 "org_parser.mly"
                v
# 744 "org_parser.ml"
   : (
# 10 "org_parser.mly"
      (int)
# 748 "org_parser.ml"
  )) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 79 "org_parser.mly"
        _2
# 752 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 78 "org_parser.mly"
           _1
# 757 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 79 "org_parser.mly"
                         ( Ast_org.Line v )
# 762 "org_parser.ml"
     : 'tv_org_option) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ((
# 46 "org_parser.mly"
                    l
# 767 "org_parser.ml"
   : 'tv_link) : (
# 20 "org_parser.mly"
      (Ast_org.link)
# 771 "org_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 46 "org_parser.mly"
  _1
# 775 "org_parser.ml"
   : 'tv_list_TSPACE_) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 47 "org_parser.mly"
    ( (max_int, Ast_org.Org(max_int, Ast_org.EMPTY, "", l,[])) )
# 780 "org_parser.ml"
     : 'tv_oneline) : (
# 17 "org_parser.mly"
      (int * Ast_org.org)
# 784 "org_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) ((
# 42 "org_parser.mly"
                                                                      l
# 789 "org_parser.ml"
   : 'tv_link) : (
# 20 "org_parser.mly"
      (Ast_org.link)
# 793 "org_parser.ml"
  )) (_startpos_l_ : Lexing.position) (_endpos_l_ : Lexing.position) (_startofs_l_ : int) (_endofs_l_ : int) (_loc_l_ : Lexing.position * Lexing.position) (
# 42 "org_parser.mly"
                                                             r
# 797 "org_parser.ml"
   : 'tv_reason) (_startpos_r_ : Lexing.position) (_endpos_r_ : Lexing.position) (_startofs_r_ : int) (_endofs_r_ : int) (_loc_r_ : Lexing.position * Lexing.position) (
# 42 "org_parser.mly"
                                                    s
# 801 "org_parser.ml"
   : 'tv_status) (_startpos_s_ : Lexing.position) (_endpos_s_ : Lexing.position) (_startofs_s_ : int) (_endofs_s_ : int) (_loc_s_ : Lexing.position * Lexing.position) (
# 42 "org_parser.mly"
                             _2
# 805 "org_parser.ml"
   : 'tv_nonempty_list_TSPACE_) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 42 "org_parser.mly"
   level
# 809 "org_parser.ml"
   : 'tv_nonempty_list_TSTAR_) (_startpos_level_ : Lexing.position) (_endpos_level_ : Lexing.position) (_startofs_level_ : int) (_endofs_level_ : int) (_loc_level_ : Lexing.position * Lexing.position) ->
    ((
# 43 "org_parser.mly"
    ( let lvl = List.length level in
      let new_r = Str.global_replace (Str.regexp " *$") "" r in
	(lvl, Ast_org.Org(lvl, s, new_r, l, []))  )
# 816 "org_parser.ml"
     : 'tv_oneline) : (
# 17 "org_parser.mly"
      (int * Ast_org.org)
# 820 "org_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 76 "org_parser.mly"
                  v
# 825 "org_parser.ml"
   : 'tv_org_option) (_startpos_v_ : Lexing.position) (_endpos_v_ : Lexing.position) (_startofs_v_ : int) (_endofs_v_ : int) (_loc_v_ : Lexing.position * Lexing.position) (
# 76 "org_parser.mly"
          _2
# 829 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 75 "org_parser.mly"
          _1
# 834 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 76 "org_parser.mly"
                                 (v)
# 839 "org_parser.ml"
     : 'tv_ol_option) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 39 "org_parser.mly"
  _1
# 844 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 848 "org_parser.ml"
  )) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 39 "org_parser.mly"
              ()
# 853 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 38 "org_parser.mly"
  _1
# 858 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 38 "org_parser.mly"
              ()
# 863 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 37 "org_parser.mly"
  _1
# 868 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 37 "org_parser.mly"
              ()
# 873 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 36 "org_parser.mly"
  _1
# 878 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 36 "org_parser.mly"
              ()
# 883 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 35 "org_parser.mly"
  _1
# 888 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 35 "org_parser.mly"
              ()
# 893 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 34 "org_parser.mly"
  _1
# 898 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 34 "org_parser.mly"
              ()
# 903 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 33 "org_parser.mly"
  _1
# 908 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 33 "org_parser.mly"
              ()
# 913 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 31 "org_parser.mly"
   _1
# 919 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 32 "org_parser.mly"
              ()
# 924 "org_parser.ml"
     : 'tv_lm) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                                                          _11
# 929 "org_parser.ml"
   : unit) (_startpos__11_ : Lexing.position) (_endpos__11_ : Lexing.position) (_startofs__11_ : int) (_endofs__11_ : int) (_loc__11_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                                                     _10
# 933 "org_parser.ml"
   : unit) (_startpos__10_ : Lexing.position) (_endpos__10_ : Lexing.position) (_startofs__10_ : int) (_endofs__10_ : int) (_loc__10_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                                               t
# 937 "org_parser.ml"
   : 'tv_text) (_startpos_t_ : Lexing.position) (_endpos_t_ : Lexing.position) (_startofs_t_ : int) (_endofs_t_ : int) (_loc_t_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                                         _8
# 941 "org_parser.ml"
   : unit) (_startpos__8_ : Lexing.position) (_endpos__8_ : Lexing.position) (_startofs__8_ : int) (_endofs__8_ : int) (_loc__8_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                                    _7
# 945 "org_parser.ml"
   : unit) (_startpos__7_ : Lexing.position) (_endpos__7_ : Lexing.position) (_startofs__7_ : int) (_endofs__7_ : int) (_loc__7_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                                 ops
# 949 "org_parser.ml"
   : 'tv_list_ol_option_) (_startpos_ops_ : Lexing.position) (_endpos_ops_ : Lexing.position) (_startofs_ops_ : int) (_endofs_ops_ : int) (_loc_ops_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                          p
# 953 "org_parser.ml"
   : 'tv_path) (_startpos_p_ : Lexing.position) (_endpos_p_ : Lexing.position) (_startofs_p_ : int) (_endofs_p_ : int) (_loc_p_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
                  _4
# 957 "org_parser.ml"
   : unit) (_startpos__4_ : Lexing.position) (_endpos__4_ : Lexing.position) (_startofs__4_ : int) (_endofs__4_ : int) (_loc__4_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
            _3
# 961 "org_parser.ml"
   : unit) (_startpos__3_ : Lexing.position) (_endpos__3_ : Lexing.position) (_startofs__3_ : int) (_endofs__3_ : int) (_loc__3_ : Lexing.position * Lexing.position) (
# 54 "org_parser.mly"
       _2
# 965 "org_parser.ml"
   : unit) (_startpos__2_ : Lexing.position) (_endpos__2_ : Lexing.position) (_startofs__2_ : int) (_endofs__2_ : int) (_loc__2_ : Lexing.position * Lexing.position) (
# 53 "org_parser.mly"
     _1
# 970 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    ((
# 55 "org_parser.mly"
                                     ( (p, ops, t) )
# 975 "org_parser.ml"
     : 'tv_link) : (
# 20 "org_parser.mly"
      (Ast_org.link)
# 979 "org_parser.ml"
    )) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 69 "org_parser.mly"
    e
# 984 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 988 "org_parser.ml"
  )) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    (
# 69 "org_parser.mly"
                                          (e               )
# 993 "org_parser.ml"
     : 'tv_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 68 "org_parser.mly"
    e
# 998 "org_parser.ml"
   : (
# 10 "org_parser.mly"
      (int)
# 1002 "org_parser.ml"
  )) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) ->
    (
# 68 "org_parser.mly"
                                          ( string_of_int e )
# 1007 "org_parser.ml"
     : 'tv_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 67 "org_parser.mly"
  _1
# 1012 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 67 "org_parser.mly"
                                          ( "config"        )
# 1017 "org_parser.ml"
     : 'tv_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 66 "org_parser.mly"
           e
# 1022 "org_parser.ml"
   : 'tv_list_split_path_elt_) (_startpos_e_ : Lexing.position) (_endpos_e_ : Lexing.position) (_startofs_e_ : int) (_endofs_e_ : int) (_loc_e_ : Lexing.position * Lexing.position) (
# 66 "org_parser.mly"
  _1
# 1026 "org_parser.ml"
   : unit) (_startpos__1_ : Lexing.position) (_endpos__1_ : Lexing.position) (_startofs__1_ : int) (_endofs__1_ : int) (_loc__1_ : Lexing.position * Lexing.position) ->
    (
# 66 "org_parser.mly"
                                          ( "=" ^ (String.concat "" e))
# 1031 "org_parser.ml"
     : 'tv_elt) in
  let _ = fun (_startpos : Lexing.position) (_endpos : Lexing.position) (_endpos__0_ : Lexing.position) (_symbolstartpos : Lexing.position) (_startofs : int) (_endofs : int) (_endofs__0_ : int) (_symbolstartofs : int) (_sloc : Lexing.position * Lexing.position) (_loc : Lexing.position * Lexing.position) (
# 65 "org_parser.mly"
           e2
# 1036 "org_parser.ml"
   : 'tv_list_split_path_elt_) (_startpos_e2_ : Lexing.position) (_endpos_e2_ : Lexing.position) (_startofs_e2_ : int) (_endofs_e2_ : int) (_loc_e2_ : Lexing.position * Lexing.position) (
# 65 "org_parser.mly"
    e1
# 1040 "org_parser.ml"
   : (
# 11 "org_parser.mly"
      (string)
# 1044 "org_parser.ml"
  )) (_startpos_e1_ : Lexing.position) (_endpos_e1_ : Lexing.position) (_startofs_e1_ : int) (_endofs_e1_ : int) (_loc_e1_ : Lexing.position * Lexing.position) ->
    (
# 65 "org_parser.mly"
                                          ( e1 ^ (String.concat "" e2))
# 1049 "org_parser.ml"
     : 'tv_elt) in
  ((let rec diverge() = diverge() in diverge()) : 'tv_textelm_nost * 'tv_textelm_nospecial * 'tv_textelm * 'tv_text * 'tv_tailelm * 'tv_tail * 'tv_status_elm * 'tv_status * 'tv_split_path_elt * 'tv_reason * 'tv_path_elt * 'tv_path * 'tv_org_option * 'tv_oneline * 'tv_ol_option * 'tv_nonempty_list_tailelm_ * 'tv_nonempty_list_TSTAR_ * 'tv_nonempty_list_TSPACE_ * 'tv_lm * 'tv_list_textelm_ * 'tv_list_split_path_elt_ * 'tv_list_path_elt_ * 'tv_list_ol_option_ * 'tv_list_TSPACE_ * 'tv_link * 'tv_elt)

and menhir_end_marker =
  0
