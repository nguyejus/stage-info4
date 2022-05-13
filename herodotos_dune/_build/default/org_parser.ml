
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | TVIEW
    | TVERT
    | TUNRELATED
    | TUNKNOWN
    | TTODO
    | TTEXT of (
# 11 "org_parser.mly"
      (string)
# 20 "org_parser.ml"
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
# 36 "org_parser.ml"
  )
    | TId of (
# 11 "org_parser.mly"
      (string)
# 41 "org_parser.ml"
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
  
end

include MenhirBasics

# 1 "org_parser.mly"
  


# 63 "org_parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_link) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: link. *)

  | MenhirState004 : (('s, 'r) _menhir_cell1_TLAB, 'r) _menhir_state
    (** State 004.
        Stack shape : TLAB.
        Start symbol: <undetermined>. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_TSLASH _menhir_cell0_TId, 'r) _menhir_state
    (** State 008.
        Stack shape : TSLASH TId.
        Start symbol: <undetermined>. *)

  | MenhirState011 : (('s, 'r) _menhir_cell1_split_path_elt, 'r) _menhir_state
    (** State 011.
        Stack shape : split_path_elt.
        Start symbol: <undetermined>. *)

  | MenhirState014 : (('s, 'r) _menhir_cell1_TSLASH, 'r) _menhir_state
    (** State 014.
        Stack shape : TSLASH.
        Start symbol: <undetermined>. *)

  | MenhirState018 : ((('s, 'r) _menhir_cell1_TLAB, 'r) _menhir_cell1_TId, 'r) _menhir_state
    (** State 018.
        Stack shape : TLAB TId.
        Start symbol: <undetermined>. *)

  | MenhirState019 : (('s, 'r) _menhir_cell1_path_elt, 'r) _menhir_state
    (** State 019.
        Stack shape : path_elt.
        Start symbol: <undetermined>. *)

  | MenhirState022 : ((('s, 'r) _menhir_cell1_TLAB, 'r) _menhir_cell1_path, 'r) _menhir_state
    (** State 022.
        Stack shape : TLAB path.
        Start symbol: <undetermined>. *)

  | MenhirState038 : (('s, 'r) _menhir_cell1_ol_option, 'r) _menhir_state
    (** State 038.
        Stack shape : ol_option.
        Start symbol: <undetermined>. *)

  | MenhirState042 : (((('s, 'r) _menhir_cell1_TLAB, 'r) _menhir_cell1_path, 'r) _menhir_cell1_list_ol_option_, 'r) _menhir_state
    (** State 042.
        Stack shape : TLAB path list(ol_option).
        Start symbol: <undetermined>. *)

  | MenhirState064 : (('s, 'r) _menhir_cell1_textelm, 'r) _menhir_state
    (** State 064.
        Stack shape : textelm.
        Start symbol: <undetermined>. *)

  | MenhirState073 : ('s, _menhir_box_oneline) _menhir_state
    (** State 073.
        Stack shape : .
        Start symbol: oneline. *)

  | MenhirState074 : (('s, 'r) _menhir_cell1_TSTAR, 'r) _menhir_state
    (** State 074.
        Stack shape : TSTAR.
        Start symbol: <undetermined>. *)

  | MenhirState076 : (('s, _menhir_box_oneline) _menhir_cell1_TSPACE, _menhir_box_oneline) _menhir_state
    (** State 076.
        Stack shape : TSPACE.
        Start symbol: oneline. *)

  | MenhirState079 : (('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_state
    (** State 079.
        Stack shape : nonempty_list(TSTAR).
        Start symbol: oneline. *)

  | MenhirState080 : (('s, _menhir_box_oneline) _menhir_cell1_TSPACE, _menhir_box_oneline) _menhir_state
    (** State 080.
        Stack shape : TSPACE.
        Start symbol: oneline. *)

  | MenhirState082 : ((('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_state
    (** State 082.
        Stack shape : nonempty_list(TSTAR) nonempty_list(TSPACE).
        Start symbol: oneline. *)

  | MenhirState083 : (((('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status_elm, _menhir_box_oneline) _menhir_state
    (** State 083.
        Stack shape : nonempty_list(TSTAR) nonempty_list(TSPACE) status_elm.
        Start symbol: oneline. *)

  | MenhirState085 : (((('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_state
    (** State 085.
        Stack shape : nonempty_list(TSTAR) nonempty_list(TSPACE) status.
        Start symbol: oneline. *)

  | MenhirState086 : ((((('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_textelm_nospecial, _menhir_box_oneline) _menhir_state
    (** State 086.
        Stack shape : nonempty_list(TSTAR) nonempty_list(TSPACE) status textelm_nospecial.
        Start symbol: oneline. *)

  | MenhirState088 : ((((('s, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_reason, _menhir_box_oneline) _menhir_state
    (** State 088.
        Stack shape : nonempty_list(TSTAR) nonempty_list(TSPACE) status reason.
        Start symbol: oneline. *)

  | MenhirState090 : (('s, _menhir_box_oneline) _menhir_cell1_list_TSPACE_, _menhir_box_oneline) _menhir_state
    (** State 090.
        Stack shape : list(TSPACE).
        Start symbol: oneline. *)

  | MenhirState092 : ('s, _menhir_box_tail) _menhir_state
    (** State 092.
        Stack shape : .
        Start symbol: tail. *)

  | MenhirState099 : (('s, _menhir_box_tail) _menhir_cell1_THASHPLUS, _menhir_box_tail) _menhir_state
    (** State 099.
        Stack shape : THASHPLUS.
        Start symbol: tail. *)

  | MenhirState110 : (('s, _menhir_box_tail) _menhir_cell1_tailelm, _menhir_box_tail) _menhir_state
    (** State 110.
        Stack shape : tailelm.
        Start symbol: tail. *)


and ('s, 'r) _menhir_cell1_list_TSPACE_ = 
  | MenhirCell1_list_TSPACE_ of 's * ('s, 'r) _menhir_state * (unit list)

and ('s, 'r) _menhir_cell1_list_ol_option_ = 
  | MenhirCell1_list_ol_option_ of 's * ('s, 'r) _menhir_state * (Ast_org.orgoption list)

and ('s, 'r) _menhir_cell1_nonempty_list_TSPACE_ = 
  | MenhirCell1_nonempty_list_TSPACE_ of 's * ('s, 'r) _menhir_state * (unit list)

and ('s, 'r) _menhir_cell1_nonempty_list_TSTAR_ = 
  | MenhirCell1_nonempty_list_TSTAR_ of 's * ('s, 'r) _menhir_state * (unit list)

and ('s, 'r) _menhir_cell1_ol_option = 
  | MenhirCell1_ol_option of 's * ('s, 'r) _menhir_state * (Ast_org.orgoption)

and ('s, 'r) _menhir_cell1_path = 
  | MenhirCell1_path of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_path_elt = 
  | MenhirCell1_path_elt of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_reason = 
  | MenhirCell1_reason of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_split_path_elt = 
  | MenhirCell1_split_path_elt of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_status = 
  | MenhirCell1_status of 's * ('s, 'r) _menhir_state * (Ast_org.status)

and ('s, 'r) _menhir_cell1_status_elm = 
  | MenhirCell1_status_elm of 's * ('s, 'r) _menhir_state * (Ast_org.status)

and ('s, 'r) _menhir_cell1_tailelm = 
  | MenhirCell1_tailelm of 's * ('s, 'r) _menhir_state * (unit)

and ('s, 'r) _menhir_cell1_textelm = 
  | MenhirCell1_textelm of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_textelm_nospecial = 
  | MenhirCell1_textelm_nospecial of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_TCOLON = 
  | MenhirCell1_TCOLON of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_THASHPLUS = 
  | MenhirCell1_THASHPLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TId = 
  | MenhirCell1_TId of 's * ('s, 'r) _menhir_state * (
# 11 "org_parser.mly"
      (string)
# 244 "org_parser.ml"
)

and 's _menhir_cell0_TId = 
  | MenhirCell0_TId of 's * (
# 11 "org_parser.mly"
      (string)
# 251 "org_parser.ml"
)

and ('s, 'r) _menhir_cell1_TLAB = 
  | MenhirCell1_TLAB of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TSLASH = 
  | MenhirCell1_TSLASH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TSPACE = 
  | MenhirCell1_TSPACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TSTAR = 
  | MenhirCell1_TSTAR of 's * ('s, 'r) _menhir_state

and _menhir_box_tail = 
  | MenhirBox_tail of (unit) [@@unboxed]

and _menhir_box_oneline = 
  | MenhirBox_oneline of (int * Ast_org.org) [@@unboxed]

and _menhir_box_link = 
  | MenhirBox_link of (Ast_org.link) [@@unboxed]

let _menhir_action_03 =
  fun e1 e2 ->
    (
# 65 "org_parser.mly"
                                          ( e1 ^ (String.concat "" e2))
# 280 "org_parser.ml"
     : (string))

let _menhir_action_04 =
  fun e ->
    (
# 66 "org_parser.mly"
                                          ( "=" ^ (String.concat "" e))
# 288 "org_parser.ml"
     : (string))

let _menhir_action_05 =
  fun () ->
    (
# 67 "org_parser.mly"
                                          ( "config"        )
# 296 "org_parser.ml"
     : (string))

let _menhir_action_06 =
  fun e ->
    (
# 68 "org_parser.mly"
                                          ( string_of_int e )
# 304 "org_parser.ml"
     : (string))

let _menhir_action_07 =
  fun e ->
    (
# 69 "org_parser.mly"
                                          (e               )
# 312 "org_parser.ml"
     : (string))

let _menhir_action_08 =
  fun ops p t ->
    (
# 55 "org_parser.mly"
                                     ( (p, ops, t) )
# 320 "org_parser.ml"
     : (Ast_org.link))

let _menhir_action_09 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 328 "org_parser.ml"
     : (unit list))

let _menhir_action_10 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 336 "org_parser.ml"
     : (unit list))

let _menhir_action_11 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 344 "org_parser.ml"
     : (Ast_org.orgoption list))

let _menhir_action_12 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 352 "org_parser.ml"
     : (Ast_org.orgoption list))

let _menhir_action_13 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 360 "org_parser.ml"
     : (string list))

let _menhir_action_14 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 368 "org_parser.ml"
     : (string list))

let _menhir_action_15 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 376 "org_parser.ml"
     : (string list))

let _menhir_action_16 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 384 "org_parser.ml"
     : (string list))

let _menhir_action_17 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 392 "org_parser.ml"
     : (string list))

let _menhir_action_18 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 400 "org_parser.ml"
     : (string list))

let _menhir_action_19 =
  fun () ->
    (
# 32 "org_parser.mly"
              ()
# 408 "org_parser.ml"
     : (unit))

let _menhir_action_20 =
  fun () ->
    (
# 33 "org_parser.mly"
              ()
# 416 "org_parser.ml"
     : (unit))

let _menhir_action_21 =
  fun () ->
    (
# 34 "org_parser.mly"
              ()
# 424 "org_parser.ml"
     : (unit))

let _menhir_action_22 =
  fun () ->
    (
# 35 "org_parser.mly"
              ()
# 432 "org_parser.ml"
     : (unit))

let _menhir_action_23 =
  fun () ->
    (
# 36 "org_parser.mly"
              ()
# 440 "org_parser.ml"
     : (unit))

let _menhir_action_24 =
  fun () ->
    (
# 37 "org_parser.mly"
              ()
# 448 "org_parser.ml"
     : (unit))

let _menhir_action_25 =
  fun () ->
    (
# 38 "org_parser.mly"
              ()
# 456 "org_parser.ml"
     : (unit))

let _menhir_action_26 =
  fun () ->
    (
# 39 "org_parser.mly"
              ()
# 464 "org_parser.ml"
     : (unit))

let _menhir_action_27 =
  fun x ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 472 "org_parser.ml"
     : (unit list))

let _menhir_action_28 =
  fun x xs ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 480 "org_parser.ml"
     : (unit list))

let _menhir_action_29 =
  fun x ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 488 "org_parser.ml"
     : (unit list))

let _menhir_action_30 =
  fun x xs ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 496 "org_parser.ml"
     : (unit list))

let _menhir_action_31 =
  fun x ->
    (
# 218 "<standard.mly>"
    ( [ x ] )
# 504 "org_parser.ml"
     : (unit list))

let _menhir_action_32 =
  fun x xs ->
    (
# 220 "<standard.mly>"
    ( x :: xs )
# 512 "org_parser.ml"
     : (unit list))

let _menhir_action_33 =
  fun v ->
    (
# 76 "org_parser.mly"
                                 (v)
# 520 "org_parser.ml"
     : (Ast_org.orgoption))

let _menhir_action_34 =
  fun l level r s ->
    (
# 43 "org_parser.mly"
    ( let lvl = List.length level in
      let new_r = Str.global_replace (Str.regexp " *$") "" r in
	(lvl, Ast_org.Org(lvl, s, new_r, l, []))  )
# 530 "org_parser.ml"
     : (int * Ast_org.org))

let _menhir_action_35 =
  fun l ->
    (
# 47 "org_parser.mly"
    ( (max_int, Ast_org.Org(max_int, Ast_org.EMPTY, "", l,[])) )
# 538 "org_parser.ml"
     : (int * Ast_org.org))

let _menhir_action_36 =
  fun v ->
    (
# 79 "org_parser.mly"
                         ( Ast_org.Line v )
# 546 "org_parser.ml"
     : (Ast_org.orgoption))

let _menhir_action_37 =
  fun v ->
    (
# 80 "org_parser.mly"
                         ( Ast_org.ColB v )
# 554 "org_parser.ml"
     : (Ast_org.orgoption))

let _menhir_action_38 =
  fun v ->
    (
# 81 "org_parser.mly"
                         ( Ast_org.ColE v )
# 562 "org_parser.ml"
     : (Ast_org.orgoption))

let _menhir_action_39 =
  fun v ->
    (
# 82 "org_parser.mly"
                         ( Ast_org.Face v )
# 570 "org_parser.ml"
     : (Ast_org.orgoption))

let _menhir_action_40 =
  fun p ->
    (
# 58 "org_parser.mly"
                                     (     "/" ^ (String.concat "/" p) )
# 578 "org_parser.ml"
     : (string))

let _menhir_action_41 =
  fun e p ->
    (
# 59 "org_parser.mly"
                                     ( e ^ "/" ^ (String.concat "/" p) )
# 586 "org_parser.ml"
     : (string))

let _menhir_action_42 =
  fun e ->
    (
# 62 "org_parser.mly"
                   (e)
# 594 "org_parser.ml"
     : (string))

let _menhir_action_43 =
  fun () ->
    (
# 88 "org_parser.mly"
                                        ( ""              )
# 602 "org_parser.ml"
     : (string))

let _menhir_action_44 =
  fun h t ->
    (
# 89 "org_parser.mly"
                                        ( h ^ t )
# 610 "org_parser.ml"
     : (string))

let _menhir_action_45 =
  fun e ->
    (
# 72 "org_parser.mly"
                                     (e)
# 618 "org_parser.ml"
     : (string))

let _menhir_action_46 =
  fun () ->
    (
# 73 "org_parser.mly"
                                   ("=")
# 626 "org_parser.ml"
     : (string))

let _menhir_action_47 =
  fun () ->
    (
# 50 "org_parser.mly"
                                       ( Ast_org.EMPTY     )
# 634 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_48 =
  fun s ->
    (
# 51 "org_parser.mly"
                                       ( s                 )
# 642 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_49 =
  fun () ->
    (
# 114 "org_parser.mly"
                                     ( Ast_org.TODO      )
# 650 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_50 =
  fun () ->
    (
# 115 "org_parser.mly"
                                     ( Ast_org.OK        )
# 658 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_51 =
  fun () ->
    (
# 116 "org_parser.mly"
                                     ( Ast_org.UNKNOWN   )
# 666 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_52 =
  fun () ->
    (
# 118 "org_parser.mly"
                                     ( Ast_org.BUG       )
# 674 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_53 =
  fun () ->
    (
# 119 "org_parser.mly"
                                     ( Ast_org.FP        )
# 682 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_54 =
  fun () ->
    (
# 120 "org_parser.mly"
                                     ( Ast_org.SAME      )
# 690 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_55 =
  fun () ->
    (
# 121 "org_parser.mly"
                                     ( Ast_org.UNRELATED )
# 698 "org_parser.ml"
     : (Ast_org.status))

let _menhir_action_56 =
  fun () ->
    (
# 25 "org_parser.mly"
                                                            (      )
# 706 "org_parser.ml"
     : (unit))

let _menhir_action_57 =
  fun () ->
    (
# 26 "org_parser.mly"
                                                                                       ()
# 714 "org_parser.ml"
     : (unit))

let _menhir_action_58 =
  fun () ->
    (
# 29 "org_parser.mly"
            ()
# 722 "org_parser.ml"
     : (unit))

let _menhir_action_59 =
  fun el ->
    (
# 85 "org_parser.mly"
                                        ( String.concat "" el )
# 730 "org_parser.ml"
     : (string))

let _menhir_action_60 =
  fun t ->
    (
# 92 "org_parser.mly"
                                        ( t               )
# 738 "org_parser.ml"
     : (string))

let _menhir_action_61 =
  fun s ->
    (
# 93 "org_parser.mly"
                                        ( Org_helper.get_status s    )
# 746 "org_parser.ml"
     : (string))

let _menhir_action_62 =
  fun id ->
    (
# 100 "org_parser.mly"
                                        ( id              )
# 754 "org_parser.ml"
     : (string))

let _menhir_action_63 =
  fun t ->
    (
# 101 "org_parser.mly"
                                        ( t               )
# 762 "org_parser.ml"
     : (string))

let _menhir_action_64 =
  fun i ->
    (
# 102 "org_parser.mly"
                                        ( string_of_int i )
# 770 "org_parser.ml"
     : (string))

let _menhir_action_65 =
  fun () ->
    (
# 103 "org_parser.mly"
                                        ( "/"             )
# 778 "org_parser.ml"
     : (string))

let _menhir_action_66 =
  fun () ->
    (
# 104 "org_parser.mly"
                                        ( ":"             )
# 786 "org_parser.ml"
     : (string))

let _menhir_action_67 =
  fun () ->
    (
# 105 "org_parser.mly"
                                        ( "config"        )
# 794 "org_parser.ml"
     : (string))

let _menhir_action_68 =
  fun () ->
    (
# 106 "org_parser.mly"
                                        ( "*"             )
# 802 "org_parser.ml"
     : (string))

let _menhir_action_69 =
  fun () ->
    (
# 107 "org_parser.mly"
                                        ( "="             )
# 810 "org_parser.ml"
     : (string))

let _menhir_action_70 =
  fun () ->
    (
# 108 "org_parser.mly"
                                        ( "#+"            )
# 818 "org_parser.ml"
     : (string))

let _menhir_action_71 =
  fun () ->
    (
# 109 "org_parser.mly"
                                        ( "IGNORED"       )
# 826 "org_parser.ml"
     : (string))

let _menhir_action_72 =
  fun () ->
    (
# 110 "org_parser.mly"
                                        ( "view"          )
# 834 "org_parser.ml"
     : (string))

let _menhir_action_73 =
  fun t ->
    (
# 96 "org_parser.mly"
                                        ( t               )
# 842 "org_parser.ml"
     : (string))

let _menhir_action_74 =
  fun () ->
    (
# 97 "org_parser.mly"
                                        ( " "             )
# 850 "org_parser.ml"
     : (string))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | EOL ->
        "EOL"
    | TBUG ->
        "TBUG"
    | TCOLB ->
        "TCOLB"
    | TCOLE ->
        "TCOLE"
    | TCOLON ->
        "TCOLON"
    | TCONFIG ->
        "TCONFIG"
    | TEQUAL ->
        "TEQUAL"
    | TFACE ->
        "TFACE"
    | TFP ->
        "TFP"
    | THASHPLUS ->
        "THASHPLUS"
    | TIGNORED ->
        "TIGNORED"
    | TId _ ->
        "TId"
    | TInt _ ->
        "TInt"
    | TLAB ->
        "TLAB"
    | TLINB ->
        "TLINB"
    | TNONBUG ->
        "TNONBUG"
    | TOK ->
        "TOK"
    | TORG ->
        "TORG"
    | TRAB ->
        "TRAB"
    | TSAME ->
        "TSAME"
    | TSLASH ->
        "TSLASH"
    | TSPACE ->
        "TSPACE"
    | TSTAR ->
        "TSTAR"
    | TSTODO ->
        "TSTODO"
    | TTEXT _ ->
        "TTEXT"
    | TTODO ->
        "TTODO"
    | TUNKNOWN ->
        "TUNKNOWN"
    | TUNRELATED ->
        "TUNRELATED"
    | TVERT ->
        "TVERT"
    | TVIEW ->
        "TVIEW"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_goto_oneline : type  ttv_stack. ttv_stack -> _ -> _menhir_box_oneline =
    fun _menhir_stack _v ->
      MenhirBox_oneline _v
  
  let rec _menhir_run_091 : type  ttv_stack. (ttv_stack, _menhir_box_oneline) _menhir_cell1_list_TSPACE_ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _v ->
      let MenhirCell1_list_TSPACE_ (_menhir_stack, _, _) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_35 l in
      _menhir_goto_oneline _menhir_stack _v
  
  let rec _menhir_run_089 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_reason -> _ -> _menhir_box_oneline =
    fun _menhir_stack _v ->
      let MenhirCell1_reason (_menhir_stack, _, r) = _menhir_stack in
      let MenhirCell1_status (_menhir_stack, _, s) = _menhir_stack in
      let MenhirCell1_nonempty_list_TSPACE_ (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_nonempty_list_TSTAR_ (_menhir_stack, _, level) = _menhir_stack in
      let l = _v in
      let _v = _menhir_action_34 l level r s in
      _menhir_goto_oneline _menhir_stack _v
  
  let rec _menhir_run_072_spec_000 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_link =
    fun _menhir_stack _v ->
      MenhirBox_link _v
  
  let rec _menhir_goto_link : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _v
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_072_spec_000 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_070_spec_042 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_path, ttv_result) _menhir_cell1_list_ol_option_ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let el = _v in
        _menhir_action_59 el
      in
      match (_tok : MenhirBasics.token) with
      | TRAB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRAB ->
              let MenhirCell1_list_ol_option_ (_menhir_stack, _, ops) = _menhir_stack in
              let MenhirCell1_path (_menhir_stack, _, p) = _menhir_stack in
              let MenhirCell1_TLAB (_menhir_stack, _menhir_s) = _menhir_stack in
              let t = _v in
              let _v = _menhir_action_08 ops p t in
              _menhir_goto_link _menhir_stack _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TLAB (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TLAB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TVIEW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TCOLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSLASH ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
                  | TId _v ->
                      let _menhir_s = MenhirState004 in
                      let _menhir_stack = MenhirCell1_TId (_menhir_stack, _menhir_s, _v) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TSLASH ->
                          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
                      | TCOLON | TRAB ->
                          let _v = _menhir_action_13 () in
                          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                      | _ ->
                          _eRR ())
                  | TCOLON | TRAB ->
                      let _v = _menhir_action_13 () in
                      _menhir_run_071_spec_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSLASH (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TTEXT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let e = _v in
          let _v = _menhir_action_07 e in
          _menhir_goto_elt _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TInt _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let e = _v in
          let _v = _menhir_action_06 e in
          _menhir_goto_elt _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TId _v ->
          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let e = _v_0 in
              let _v = _menhir_action_45 e in
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
          | TEQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_46 () in
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState008 _tok
          | TCOLON | TRAB | TSLASH ->
              let _v = _menhir_action_15 () in
              _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let e = _v in
              let _v = _menhir_action_45 e in
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014 _tok
          | TEQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_46 () in
              _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState014 _tok
          | TCOLON | TRAB | TSLASH ->
              let _v = _menhir_action_15 () in
              _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | TCONFIG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_05 () in
          _menhir_goto_elt _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_elt : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TSLASH -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TSLASH (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_42 e in
      let _menhir_stack = MenhirCell1_path_elt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TSLASH ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TCOLON | TRAB ->
          let _v = _menhir_action_13 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_path_elt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_path_elt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_14 x xs in
      _menhir_goto_list_path_elt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_path_elt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState004 ->
          _menhir_run_071_spec_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState018 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState019 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_071_spec_004 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TLAB -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let p = _v in
      let _v = _menhir_action_40 p in
      _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState004 _tok
  
  and _menhir_run_022 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TLAB as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_path (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TCOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | TRAB ->
          let _v = _menhir_action_11 () in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState022
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_023 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TCOLON (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TCOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TLINB ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TEQUAL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TInt _v ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let v = _v in
                      let _v = _menhir_action_36 v in
                      _menhir_goto_org_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | TFACE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TEQUAL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TId _v ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let v = _v in
                      let _v = _menhir_action_39 v in
                      _menhir_goto_org_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | TCOLE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TEQUAL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TInt _v ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let v = _v in
                      let _v = _menhir_action_38 v in
                      _menhir_goto_org_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | TCOLB ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TEQUAL ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TInt _v ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let v = _v in
                      let _v = _menhir_action_37 v in
                      _menhir_goto_org_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_org_option : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TCOLON -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TCOLON (_menhir_stack, _menhir_s) = _menhir_stack in
      let v = _v in
      let _v = _menhir_action_33 v in
      let _menhir_stack = MenhirCell1_ol_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TCOLON ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | TRAB ->
          let _v = _menhir_action_11 () in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ol_option -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_ol_option (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_12 x xs in
      _menhir_goto_list_ol_option_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_ol_option_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState022 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_path as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_ol_option_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TLAB ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TVIEW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_72 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TUNRELATED ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_55 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TUNKNOWN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_51 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TTODO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_49 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TTEXT _v_4 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let t = _v_4 in
              let _v = _menhir_action_63 t in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSTAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_68 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSPACE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_74 () in
              _menhir_run_062_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSLASH ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_65 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TSAME ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_54 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TOK ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_50 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TInt _v_11 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_11 in
              let _v = _menhir_action_64 i in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TId _v_13 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let id = _v_13 in
              let _v = _menhir_action_62 id in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TIGNORED ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_71 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | THASHPLUS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_70 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TFP ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_53 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TEQUAL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_69 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCONFIG ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_67 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TCOLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_66 () in
              _menhir_run_063_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TBUG ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_52 () in
              _menhir_run_065_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | TRAB ->
              let _v = _menhir_action_17 () in
              _menhir_run_070_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_063_spec_042 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_path, ttv_result) _menhir_cell1_list_ol_option_ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_73 t in
      _menhir_run_062_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_062_spec_042 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_path, ttv_result) _menhir_cell1_list_ol_option_ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_60 t in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_textelm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVIEW ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TUNRELATED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TUNKNOWN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TTODO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_49 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TTEXT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let t = _v_4 in
          let _v = _menhir_action_63 t in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSTAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_68 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSPACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_74 () in
          _menhir_run_062_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSLASH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_65 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TOK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TInt _v_11 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_11 in
          let _v = _menhir_action_64 i in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TId _v_13 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let id = _v_13 in
          let _v = _menhir_action_62 id in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIGNORED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | THASHPLUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_70 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_69 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TCONFIG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_67 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TCOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_66 () in
          _menhir_run_063_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TBUG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_065_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TLAB | TRAB ->
          let _v = _menhir_action_17 () in
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063_spec_064 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_textelm -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_73 t in
      _menhir_run_062_spec_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_062_spec_064 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_textelm -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_60 t in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
  
  and _menhir_run_065_spec_064 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_textelm -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let s = _v in
      let _v = _menhir_action_61 s in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState064 _tok
  
  and _menhir_run_066 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_textelm -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_textelm (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_18 x xs in
      _menhir_goto_list_textelm_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_textelm_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState086 ->
          _menhir_run_070_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState042 ->
          _menhir_run_070_spec_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState064 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_070_spec_086 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_textelm_nospecial -> _ -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _v =
        let el = _v in
        _menhir_action_59 el
      in
      let MenhirCell1_textelm_nospecial (_menhir_stack, _menhir_s, h) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_44 h t in
      _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_088 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_reason (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TLAB ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | _ ->
          _eRR ()
  
  and _menhir_run_065_spec_042 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_path, ttv_result) _menhir_cell1_list_ol_option_ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let s = _v in
      let _v = _menhir_action_61 s in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState042 _tok
  
  and _menhir_run_021 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TLAB, ttv_result) _menhir_cell1_TId -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TId (_menhir_stack, _menhir_s, e) = _menhir_stack in
      let p = _v in
      let _v = _menhir_action_41 e p in
      _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_split_path_elt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TId _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let e = _v_0 in
          let _v = _menhir_action_45 e in
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_46 () in
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState011 _tok
      | TCOLON | TRAB | TSLASH ->
          let _v = _menhir_action_15 () in
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_split_path_elt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_split_path_elt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_16 x xs in
      _menhir_goto_list_split_path_elt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_split_path_elt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState014 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState008 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState011 ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_015 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TSLASH -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let e = _v in
      let _v = _menhir_action_04 e in
      _menhir_goto_elt _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_013 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TSLASH _menhir_cell0_TId -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_TId (_menhir_stack, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_03 e1 e2 in
      _menhir_goto_elt _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_link =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TLAB ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_goto_tail : type  ttv_stack. ttv_stack -> _ -> _menhir_box_tail =
    fun _menhir_stack _v ->
      MenhirBox_tail _v
  
  let rec _menhir_run_115 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_tail =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TORG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSPACE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TCONFIG ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | EOL ->
                      let _v = _menhir_action_56 () in
                      _menhir_goto_tail _menhir_stack _v
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let rec _menhir_run_062_spec_086 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_textelm_nospecial -> _ -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_60 t in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
  
  let rec _menhir_run_063_spec_086 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_textelm_nospecial -> _ -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let t = _v in
      let _v = _menhir_action_73 t in
      _menhir_run_062_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  let rec _menhir_run_065_spec_086 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status, _menhir_box_oneline) _menhir_cell1_textelm_nospecial -> _ -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let s = _v in
      let _v = _menhir_action_61 s in
      _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState086 _tok
  
  let rec _menhir_run_086 : type  ttv_stack. ((((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_textelm_nospecial (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVIEW ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TUNRELATED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TUNKNOWN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TTODO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_49 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TTEXT _v_4 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let t = _v_4 in
          let _v = _menhir_action_63 t in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSTAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_68 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSPACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_74 () in
          _menhir_run_062_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSLASH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_65 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TSAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TOK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TInt _v_11 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_11 in
          let _v = _menhir_action_64 i in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TId _v_13 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let id = _v_13 in
          let _v = _menhir_action_62 id in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TIGNORED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | THASHPLUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_70 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TFP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_69 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TCONFIG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_67 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TCOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_66 () in
          _menhir_run_063_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TBUG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_065_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | TLAB ->
          let _v = _menhir_action_17 () in
          _menhir_run_070_spec_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_085 : type  ttv_stack. (((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_status (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVIEW ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_72 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TTEXT _v_1 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let t = _v_1 in
          let _v = _menhir_action_63 t in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TSTAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_68 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TSLASH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_65 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TInt _v_5 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let i = _v_5 in
          let _v = _menhir_action_64 i in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TId _v_7 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let id = _v_7 in
          let _v = _menhir_action_62 id in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TIGNORED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_71 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | THASHPLUS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_70 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TEQUAL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_69 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TCONFIG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_67 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TCOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_66 () in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | TLAB ->
          let _v = _menhir_action_43 () in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState085 _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_084 : type  ttv_stack. (((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_, _menhir_box_oneline) _menhir_cell1_status_elm -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_status_elm (_menhir_stack, _menhir_s, s) = _menhir_stack in
      let _v = _menhir_action_48 s in
      _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSPACE ->
          let _menhir_stack = MenhirCell1_TSPACE (_menhir_stack, _menhir_s) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | TBUG | TCOLON | TCONFIG | TEQUAL | TFP | THASHPLUS | TIGNORED | TId _ | TInt _ | TLAB | TOK | TSAME | TSLASH | TSTAR | TTEXT _ | TTODO | TUNKNOWN | TUNRELATED | TVIEW ->
          let x = () in
          let _v = _menhir_action_27 x in
          _menhir_goto_nonempty_list_TSPACE_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_TSPACE_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | MenhirState079 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_nonempty_list_TSPACE_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TUNRELATED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_55 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TUNKNOWN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_51 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TTODO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_49 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TSAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_54 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TOK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_50 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TFP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_53 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TBUG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_52 () in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | TCOLON | TCONFIG | TEQUAL | THASHPLUS | TIGNORED | TId _ | TInt _ | TLAB | TSLASH | TSTAR | TTEXT _ | TVIEW ->
          let _v = _menhir_action_47 () in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState082 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_083 : type  ttv_stack. (((ttv_stack, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSTAR_, _menhir_box_oneline) _menhir_cell1_nonempty_list_TSPACE_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_oneline) _menhir_state -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_status_elm (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TSPACE ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (ttv_stack, _menhir_box_oneline) _menhir_cell1_TSPACE -> _ -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TSPACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (x, xs) = ((), _v) in
      let _v = _menhir_action_28 x xs in
      _menhir_goto_nonempty_list_TSPACE_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_079 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_TSTAR_ (_menhir_stack, _menhir_s, _v) in
      _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
  
  let rec _menhir_goto_nonempty_list_TSTAR_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState092 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer
      | MenhirState073 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_075 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TSTAR -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_TSTAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let (x, xs) = ((), _v) in
      let _v = _menhir_action_30 x xs in
      _menhir_goto_nonempty_list_TSTAR_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_074 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          let _menhir_stack = MenhirCell1_TSTAR (_menhir_stack, _menhir_s) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | TSPACE ->
          let x = () in
          let _v = _menhir_action_29 x in
          _menhir_goto_nonempty_list_TSTAR_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  let rec _menhir_run_090 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_TSPACE_ (_menhir_stack, _menhir_s, _v) in
      _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
  
  let rec _menhir_run_077 : type  ttv_stack. (ttv_stack, _menhir_box_oneline) _menhir_cell1_TSPACE -> _ -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_TSPACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (x, xs) = ((), _v) in
      let _v = _menhir_action_10 x xs in
      _menhir_goto_list_TSPACE_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_TSPACE_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState073 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_076 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_oneline) _menhir_state -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSPACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSPACE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | TLAB ->
          let _v = _menhir_action_09 () in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_073 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_oneline =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | TSPACE ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState073
      | TLAB ->
          let _v = _menhir_action_09 () in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState073
      | _ ->
          _eRR ()
  
  let rec _menhir_run_112 : type  ttv_stack. (ttv_stack, _menhir_box_tail) _menhir_cell1_THASHPLUS -> _menhir_box_tail =
    fun _menhir_stack ->
      let MenhirCell1_THASHPLUS (_menhir_stack, _) = _menhir_stack in
      let _v = _menhir_action_57 () in
      _menhir_goto_tail _menhir_stack _v
  
  let rec _menhir_goto_nonempty_list_tailelm_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_tail) _menhir_state -> _menhir_box_tail =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState099 ->
          _menhir_run_112 _menhir_stack
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. (ttv_stack, _menhir_box_tail) _menhir_cell1_tailelm -> _ -> _menhir_box_tail =
    fun _menhir_stack _v ->
      let MenhirCell1_tailelm (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_32 x xs in
      _menhir_goto_nonempty_list_tailelm_ _menhir_stack _v _menhir_s
  
  let rec _menhir_run_100 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_tail) _menhir_state -> _menhir_box_tail =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_TSPACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUNRELATED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_23 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TUNKNOWN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_24 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TSAME ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_22 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TNONBUG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_21 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TId _ ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_26 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TIGNORED ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_25 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TFP ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_20 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | TBUG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _ = _menhir_action_19 () in
          _menhir_goto_lm _menhir_stack _menhir_lexbuf _menhir_lexer _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_lm : type  ttv_stack. (ttv_stack, _menhir_box_tail) _menhir_cell1_TSPACE -> _ -> _ -> _ -> _menhir_box_tail =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _tok ->
      let MenhirCell1_TSPACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_58 () in
      match (_tok : MenhirBasics.token) with
      | TSPACE ->
          let _menhir_stack = MenhirCell1_tailelm (_menhir_stack, _menhir_s, _v) in
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | EOL ->
          let x = _v in
          let _v = _menhir_action_31 x in
          _menhir_goto_nonempty_list_tailelm_ _menhir_stack _v _menhir_s
      | _ ->
          _eRR ()
  
  let rec _menhir_run_092 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_tail =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTAR ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | THASHPLUS ->
          let _menhir_s = MenhirState092 in
          let _menhir_stack = MenhirCell1_THASHPLUS (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTODO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TCOLON ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSPACE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | TTODO ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | TSPACE ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | TVERT ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | TSPACE ->
                                      _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState099
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
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
  
end

let tail =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_tail v = _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let oneline =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_oneline v = _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let link =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_link v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
