
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | TTrue
    | TSC
    | TInt of (
# 8 "exist_parser.mly"
      (int)
# 17 "exist_parser.ml"
  )
    | TId of (
# 7 "exist_parser.mly"
      (string)
# 22 "exist_parser.ml"
  )
    | TFalse
    | EOL
    | EOF
  
end

include MenhirBasics

# 1 "exist_parser.mly"
  


# 36 "exist_parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_entries) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: entries. *)

  | MenhirState02 : (('s, 'r) _menhir_cell1_TId, 'r) _menhir_state
    (** State 02.
        Stack shape : TId.
        Start symbol: <undetermined>. *)

  | MenhirState07 : (('s, 'r) _menhir_cell1_state_info, 'r) _menhir_state
    (** State 07.
        Stack shape : state_info.
        Start symbol: <undetermined>. *)

  | MenhirState13 : (('s, 'r) _menhir_cell1_entry, 'r) _menhir_state
    (** State 13.
        Stack shape : entry.
        Start symbol: <undetermined>. *)

  | MenhirState18 : ('s _menhir_cell0_TId, _menhir_box_main) _menhir_state
    (** State 18.
        Stack shape : TId.
        Start symbol: main. *)

  | MenhirState21 : (('s, _menhir_box_main) _menhir_cell1_vid, _menhir_box_main) _menhir_state
    (** State 21.
        Stack shape : vid.
        Start symbol: main. *)

  | MenhirState24 : (('s _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_separated_nonempty_list_sep_vid_, _menhir_box_main) _menhir_state
    (** State 24.
        Stack shape : TId separated_nonempty_list(sep,vid).
        Start symbol: main. *)

  | MenhirState25 : ((('s _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_separated_nonempty_list_sep_vid_, _menhir_box_main) _menhir_cell1_list_entry_, _menhir_box_main) _menhir_state
    (** State 25.
        Stack shape : TId separated_nonempty_list(sep,vid) list(entry).
        Start symbol: main. *)

  | MenhirState26 : (('s, _menhir_box_main) _menhir_cell1_EOL, _menhir_box_main) _menhir_state
    (** State 26.
        Stack shape : EOL.
        Start symbol: main. *)


and ('s, 'r) _menhir_cell1_entry = 
  | MenhirCell1_entry of 's * ('s, 'r) _menhir_state * (Ast_exist.entry)

and ('s, 'r) _menhir_cell1_list_entry_ = 
  | MenhirCell1_list_entry_ of 's * ('s, 'r) _menhir_state * (Ast_exist.entry list)

and ('s, 'r) _menhir_cell1_separated_nonempty_list_sep_vid_ = 
  | MenhirCell1_separated_nonempty_list_sep_vid_ of 's * ('s, 'r) _menhir_state * (Ast_exist.version list)

and ('s, 'r) _menhir_cell1_state_info = 
  | MenhirCell1_state_info of 's * ('s, 'r) _menhir_state * (Ast_exist.state)

and ('s, 'r) _menhir_cell1_vid = 
  | MenhirCell1_vid of 's * ('s, 'r) _menhir_state * (Ast_exist.version)

and ('s, 'r) _menhir_cell1_EOL = 
  | MenhirCell1_EOL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TId = 
  | MenhirCell1_TId of 's * ('s, 'r) _menhir_state * (
# 7 "exist_parser.mly"
      (string)
# 107 "exist_parser.ml"
)

and 's _menhir_cell0_TId = 
  | MenhirCell0_TId of 's * (
# 7 "exist_parser.mly"
      (string)
# 114 "exist_parser.ml"
)

and _menhir_box_main = 
  | MenhirBox_main of (Ast_exist.matrix) [@@unboxed]

and _menhir_box_entries = 
  | MenhirBox_entries of (Ast_exist.entry list) [@@unboxed]

let _menhir_action_02 =
  fun es ->
    (
# 39 "exist_parser.mly"
                                     ( es     )
# 128 "exist_parser.ml"
     : (Ast_exist.entry list))

let _menhir_action_03 =
  fun id states ->
    let _2 = 
# 60 "exist_parser.mly"
     ()
# 136 "exist_parser.ml"
     in
    (
# 43 "exist_parser.mly"
    ( (id,
       List.filter
	 (fun s ->
	   match s with
	       Ast_exist.Empty -> false
	     | _ -> true
	 ) states
      )
    )
# 149 "exist_parser.ml"
     : (Ast_exist.entry))

let _menhir_action_04 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 157 "exist_parser.ml"
     : (unit list))

let _menhir_action_05 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 165 "exist_parser.ml"
     : (unit list))

let _menhir_action_06 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 173 "exist_parser.ml"
     : (Ast_exist.entry list))

let _menhir_action_07 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 181 "exist_parser.ml"
     : (Ast_exist.entry list))

let _menhir_action_08 =
  fun es vs ->
    let _2 = 
# 60 "exist_parser.mly"
     ()
# 189 "exist_parser.ml"
     in
    (
# 21 "exist_parser.mly"
    ( (
      List.filter
	(fun vname ->
	if vname = "" then
	  false
	else
	  true
	)
	vs
	,es
      )
    )
# 205 "exist_parser.ml"
     : (Ast_exist.matrix))

let _menhir_action_09 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 213 "exist_parser.ml"
     : (Ast_exist.state list))

let _menhir_action_10 =
  fun x xs ->
    let _2 = 
# 60 "exist_parser.mly"
     ()
# 221 "exist_parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 226 "exist_parser.ml"
     : (Ast_exist.state list))

let _menhir_action_11 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 234 "exist_parser.ml"
     : (Ast_exist.version list))

let _menhir_action_12 =
  fun x xs ->
    let _2 = 
# 60 "exist_parser.mly"
     ()
# 242 "exist_parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 247 "exist_parser.ml"
     : (Ast_exist.version list))

let _menhir_action_13 =
  fun () ->
    (
# 54 "exist_parser.mly"
                                     ( Ast_exist.Empty    )
# 255 "exist_parser.ml"
     : (Ast_exist.state))

let _menhir_action_14 =
  fun () ->
    (
# 55 "exist_parser.mly"
                                     ( Ast_exist.True     )
# 263 "exist_parser.ml"
     : (Ast_exist.state))

let _menhir_action_15 =
  fun () ->
    (
# 56 "exist_parser.mly"
                                     ( Ast_exist.False    )
# 271 "exist_parser.ml"
     : (Ast_exist.state))

let _menhir_action_16 =
  fun i ->
    (
# 57 "exist_parser.mly"
                                     ( Ast_exist.Size (i) )
# 279 "exist_parser.ml"
     : (Ast_exist.state))

let _menhir_action_17 =
  fun id ->
    (
# 35 "exist_parser.mly"
          (id)
# 287 "exist_parser.ml"
     : (Ast_exist.version))

let _menhir_action_18 =
  fun () ->
    (
# 36 "exist_parser.mly"
          ("")
# 295 "exist_parser.ml"
     : (Ast_exist.version))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | EOF ->
        "EOF"
    | EOL ->
        "EOL"
    | TFalse ->
        "TFalse"
    | TId _ ->
        "TId"
    | TInt _ ->
        "TInt"
    | TSC ->
        "TSC"
    | TTrue ->
        "TTrue"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_28 : type  ttv_stack. ((ttv_stack _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_separated_nonempty_list_sep_vid_, _menhir_box_main) _menhir_cell1_list_entry_ -> _menhir_box_main =
    fun _menhir_stack ->
      let MenhirCell1_list_entry_ (_menhir_stack, _, es) = _menhir_stack in
      let MenhirCell1_separated_nonempty_list_sep_vid_ (_menhir_stack, _, vs) = _menhir_stack in
      let MenhirCell0_TId (_menhir_stack, _) = _menhir_stack in
      let _v = _menhir_action_08 es vs in
      MenhirBox_main _v
  
  let rec _menhir_run_27 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_EOL -> _ -> _menhir_box_main =
    fun _menhir_stack _v ->
      let MenhirCell1_EOL (_menhir_stack, _menhir_s) = _menhir_stack in
      let (xs, x) = (_v, ()) in
      let _v = _menhir_action_05 x xs in
      _menhir_goto_list_EOL_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_EOL_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState25 ->
          _menhir_run_28 _menhir_stack
      | MenhirState26 ->
          _menhir_run_27 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_26 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EOL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | EOL ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState26
      | EOF ->
          let _v = _menhir_action_04 () in
          _menhir_run_27 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_25 : type  ttv_stack. ((ttv_stack _menhir_cell0_TId, _menhir_box_main) _menhir_cell1_separated_nonempty_list_sep_vid_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_entry_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | EOL ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState25
      | EOF ->
          let _ = _menhir_action_04 () in
          _menhir_run_28 _menhir_stack
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_11 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_entries =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let es = _v in
          let _v = _menhir_action_02 es in
          MenhirBox_entries _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_14 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_entry -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_entry (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_07 x xs in
      _menhir_goto_list_entry_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_entry_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState24 ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState13 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState00 ->
          _menhir_run_11 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_01 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_TId (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSC ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TTrue ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_14 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02 _tok
          | TInt _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_1 in
              let _v = _menhir_action_16 i in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02 _tok
          | TFalse ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_15 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02 _tok
          | EOL | TSC ->
              let _v = _menhir_action_13 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState02 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSC ->
          let _menhir_stack = MenhirCell1_state_info (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TTrue ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_14 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | TInt _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let i = _v_1 in
              let _v = _menhir_action_16 i in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | TFalse ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_15 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | EOL | TSC ->
              let _v = _menhir_action_13 () in
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState07 _tok
          | _ ->
              _eRR ())
      | EOL ->
          let x = _v in
          let _v = _menhir_action_09 x in
          _menhir_goto_separated_nonempty_list_sep_state_info_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_sep_state_info_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState02 ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState07 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_09 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TId -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_TId (_menhir_stack, _menhir_s, id) = _menhir_stack in
      let states = _v in
      let _v = _menhir_action_03 id states in
      let _menhir_stack = MenhirCell1_entry (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TId _v_0 ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState13
      | EOF | EOL ->
          let _v = _menhir_action_06 () in
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_state_info -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_state_info (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_10 x xs in
      _menhir_goto_separated_nonempty_list_sep_state_info_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_entries =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState00
      | EOF ->
          let _v = _menhir_action_06 () in
          _menhir_run_11 _menhir_stack _v _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_run_23 : type  ttv_stack. (ttv_stack _menhir_cell0_TId as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_separated_nonempty_list_sep_vid_ (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState24
      | EOF | EOL ->
          let _v = _menhir_action_06 () in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState24 _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_goto_separated_nonempty_list_sep_vid_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState18 ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState21 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_22 : type  ttv_stack. (ttv_stack, _menhir_box_main) _menhir_cell1_vid -> _ -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_vid (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_12 x xs in
      _menhir_goto_separated_nonempty_list_sep_vid_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_20 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_main) _menhir_state -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | TSC ->
          let _menhir_stack = MenhirCell1_vid (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TId _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let id = _v_0 in
              let _v = _menhir_action_17 id in
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
          | EOL | TSC ->
              let _v = _menhir_action_18 () in
              _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState21 _tok
          | _ ->
              _eRR ())
      | EOL ->
          let x = _v in
          let _v = _menhir_action_11 x in
          _menhir_goto_separated_nonempty_list_sep_vid_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  let rec _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_main =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TId _v ->
          let _menhir_stack = MenhirCell0_TId (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSC ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TId _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let id = _v_0 in
                  let _v = _menhir_action_17 id in
                  _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState18 _tok
              | EOL | TSC ->
                  let _v = _menhir_action_18 () in
                  _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState18 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
end

let main =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_main v = _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let entries =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_entries v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
