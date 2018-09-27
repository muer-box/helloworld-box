
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WITH
    | UNDERSCORE
    | TRANSITION
    | TID of (
# 39 "ScillaParser.mly"
       (string)
# 14 "ScillaParser.ml"
  )
    | TFUN
    | TARROW
    | STRING of (
# 42 "ScillaParser.mly"
       (string)
# 21 "ScillaParser.ml"
  )
    | SEND
    | SEMICOLON
    | RPAREN
    | RBRACE
    | PERIOD
    | NUMLIT of (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 31 "ScillaParser.ml"
  )
    | MATCH
    | MAP
    | LPAREN
    | LIBRARY
    | LET
    | LBRACE
    | IN
    | IMPORT
    | ID of (
# 37 "ScillaParser.mly"
       (string)
# 44 "ScillaParser.ml"
  )
    | HEXLIT of (
# 46 "ScillaParser.mly"
       (string)
# 49 "ScillaParser.ml"
  )
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
    | CID of (
# 38 "ScillaParser.mly"
       (string)
# 65 "ScillaParser.ml"
  )
    | BUILTIN
    | BLOCK
    | BIND
    | BAR
    | AT
    | ASSIGN
    | ARROW
    | AND
    | ACCEPT
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState219
  | MenhirState216
  | MenhirState212
  | MenhirState208
  | MenhirState206
  | MenhirState203
  | MenhirState197
  | MenhirState194
  | MenhirState187
  | MenhirState183
  | MenhirState171
  | MenhirState169
  | MenhirState167
  | MenhirState166
  | MenhirState161
  | MenhirState159
  | MenhirState154
  | MenhirState152
  | MenhirState151
  | MenhirState150
  | MenhirState147
  | MenhirState144
  | MenhirState141
  | MenhirState140
  | MenhirState138
  | MenhirState133
  | MenhirState128
  | MenhirState123
  | MenhirState121
  | MenhirState119
  | MenhirState118
  | MenhirState116
  | MenhirState108
  | MenhirState107
  | MenhirState101
  | MenhirState96
  | MenhirState95
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState87
  | MenhirState81
  | MenhirState80
  | MenhirState76
  | MenhirState67
  | MenhirState65
  | MenhirState63
  | MenhirState61
  | MenhirState60
  | MenhirState59
  | MenhirState58
  | MenhirState55
  | MenhirState54
  | MenhirState53
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState43
  | MenhirState41
  | MenhirState38
  | MenhirState36
  | MenhirState35
  | MenhirState32
  | MenhirState29
  | MenhirState23
  | MenhirState21
  | MenhirState18
  | MenhirState17
  | MenhirState13
  | MenhirState10
  | MenhirState7
  | MenhirState5
  | MenhirState2
  | MenhirState1

# 20 "ScillaParser.mly"
  
  open Syntax
  open ParserUtil

  open ParsedSyntax

  let to_type d = match d with
    | x when PrimTypes.is_prim_type (PrimType x) -> PrimType x
    | _ -> ADT (d, [])
  
  let build_prim_literal_exn t v =
    match PrimTypes.build_prim_literal t v with
    | Some l -> l
    | None -> raise (SyntaxError ("Invalid " ^ (pp_typ t) ^ " literal " ^ v))

# 184 "ScillaParser.ml"

let rec _menhir_goto_list_field_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_field_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv839 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 195 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TRANSITION ->
            _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState154 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState154
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState154) : 'freshtv840)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv843 * _menhir_state * 'tv_field) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv841 * _menhir_state * 'tv_field) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_field)), _, (xs : 'tv_list_field_)) = _menhir_stack in
        let _v : 'tv_list_field_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 217 "ScillaParser.ml"
         in
        _menhir_goto_list_field_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv842)) : 'freshtv844)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_arg_pattern_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_arg_pattern_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv833 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 231 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv831 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 239 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ps : 'tv_list_arg_pattern_) : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_stack, _menhir_s, (c : (
# 38 "ScillaParser.mly"
       (string)
# 246 "ScillaParser.ml"
        )), _startpos_c_) = _menhir_stack in
        let _v : 'tv_pattern = 
# 209 "ScillaParser.mly"
                                  ( Constructor (c, ps) )
# 251 "ScillaParser.ml"
         in
        _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv832)) : 'freshtv834)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv837 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv835 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_arg_pattern_) : 'tv_list_arg_pattern_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_arg_pattern)) = _menhir_stack in
        let _v : 'tv_list_arg_pattern_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 267 "ScillaParser.ml"
         in
        _menhir_goto_list_arg_pattern_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv836)) : 'freshtv838)
    | _ ->
        _menhir_fail ()

and _menhir_goto_arg_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_arg_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv829 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | UNDERSCORE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | ARROW | RPAREN ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv830)

and _menhir_reduce35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_field_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 301 "ScillaParser.ml"
     in
    _menhir_goto_list_field_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run148 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv825 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 317 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv821 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 329 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | LPAREN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | MAP ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | TID _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv822)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv823 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 355 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv824)) : 'freshtv826)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv827 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv828)

and _menhir_goto_list_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv815 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 375 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv813 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 383 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_ID_) : 'tv_list_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 37 "ScillaParser.mly"
       (string)
# 390 "ScillaParser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _v : 'tv_list_ID_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 395 "ScillaParser.ml"
         in
        _menhir_goto_list_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv814)) : 'freshtv816)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv819 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 403 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv817 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 411 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : 'tv_list_ID_) : 'tv_list_ID_) = _v in
        ((let ((_menhir_stack, _menhir_s, (c : (
# 38 "ScillaParser.mly"
       (string)
# 418 "ScillaParser.ml"
        )), _startpos_c_), (ts : 'tv_option_ctargs_)) = _menhir_stack in
        let _v : 'tv_simple_exp = let _startpos = _startpos_c_ in
        
# 159 "ScillaParser.mly"
  ( let targs =
      (match ts with
       | None -> []
       | Some ls -> ls) in
    let xs = List.map (fun i -> Ident (i, toLoc _startpos)) args in
    (Constr (c, targs, xs), toLoc _startpos)
  )
# 430 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv818)) : 'freshtv820)
    | _ ->
        _menhir_fail ()

and _menhir_goto_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv769 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 445 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv767 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 451 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (i : (
# 37 "ScillaParser.mly"
       (string)
# 456 "ScillaParser.ml"
        )), _startpos_i_), _, (t : 'tv_typ)), _), _, (e : 'tv_exp)) = _menhir_stack in
        let _7 = () in
        let _6 = () in
        let _4 = () in
        let _2 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 143 "ScillaParser.mly"
  ( (Fun (Ident (i, toLoc _startpos), t, e), toLoc _startpos ) )
# 467 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv768)) : 'freshtv770)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv773 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 475 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv771 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 481 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 486 "ScillaParser.ml"
        )), _startpos_x_), _startpos__4_), _, (f : 'tv_simple_exp)), _, (e : 'tv_exp)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_exp = let t =
          
# 124 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 495 "ScillaParser.ml"
          
        in
        let _startpos = _startpos__1_ in
        
# 138 "ScillaParser.mly"
  ((Let ((Ident (x, toLoc _startpos)), t, f, e), toLoc _startpos) )
# 502 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv772)) : 'freshtv774)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv777 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 510 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv775 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 516 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((((((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 521 "ScillaParser.ml"
        )), _startpos_x_), (x0 : 'tv_type_annot)), _startpos__4_), _, (f : 'tv_simple_exp)), _, (e : 'tv_exp)) = _menhir_stack in
        let _6 = () in
        let _4 = () in
        let _1 = () in
        let _v : 'tv_exp = let t =
          let x = x0 in
          
# 126 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 531 "ScillaParser.ml"
          
        in
        let _startpos = _startpos__1_ in
        
# 138 "ScillaParser.mly"
  ((Let ((Ident (x, toLoc _startpos)), t, f, e), toLoc _startpos) )
# 538 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv776)) : 'freshtv778)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv785 * _menhir_state) * _menhir_state * 'tv_pattern)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv783 * _menhir_state) * _menhir_state * 'tv_pattern)) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_exp_pm_clause = 
# 218 "ScillaParser.mly"
                                      ( p, e )
# 552 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv781) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_exp_pm_clause) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv779 * _menhir_state * 'tv_exp_pm_clause) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BAR ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | END ->
            _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState128
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128) : 'freshtv780)) : 'freshtv782)) : 'freshtv784)) : 'freshtv786)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv789 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 577 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv787 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 583 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), (i : (
# 39 "ScillaParser.mly"
       (string)
# 588 "ScillaParser.ml"
        ))), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 171 "ScillaParser.mly"
  ( (TFun (Ident (i, toLoc _startpos), e), toLoc _startpos) )
# 596 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv788)) : 'freshtv790)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv797 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 604 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv795 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 610 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (ns : (
# 37 "ScillaParser.mly"
       (string)
# 615 "ScillaParser.ml"
        )), _startpos_ns_), _startpos__3_), _, (e : 'tv_exp)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_libentry = 
# 300 "ScillaParser.mly"
                           ( { lname = asIdL ns (toLoc _startpos_ns_) ; lexp = e } )
# 622 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv793) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_libentry) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv791 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState133 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | EOF ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv792)) : 'freshtv794)) : 'freshtv796)) : 'freshtv798)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv805 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 647 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv803 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 653 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((((_menhir_stack, _menhir_s), (f : (
# 37 "ScillaParser.mly"
       (string)
# 658 "ScillaParser.ml"
        )), _startpos_f_), _, (t : 'tv_typ)), _, _startpos__5_), _, (rhs : 'tv_exp)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_field = 
# 287 "ScillaParser.mly"
  ( asIdL f (toLoc _startpos_f_), t, rhs )
# 666 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv801) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_field) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv799 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FIELD ->
            _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | EOF | TRANSITION ->
            _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv800)) : 'freshtv802)) : 'freshtv804)) : 'freshtv806)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv809 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 691 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv807 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 697 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 702 "ScillaParser.ml"
        )), _startpos_l_), _startpos__2_), _, (r : 'tv_exp)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_stmt = let _startpos = _startpos_l_ in
        
# 247 "ScillaParser.mly"
                         ( (Bind (asIdL l (toLoc _startpos__2_), r), toLoc _startpos) )
# 709 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv808)) : 'freshtv810)
    | MenhirState206 | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv811 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BLOCK ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BUILTIN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EMP ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState206
        | FUN ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TFUN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206) : 'freshtv812)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv761) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv759) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ = 
# 144 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 768 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv760)) : 'freshtv762)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv765 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv763 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_msg_entry)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ = 
# 231 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 785 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv764)) : 'freshtv766)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_transition_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_transition_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv737 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv735 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_transition_) : 'tv_list_transition_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_transition)) = _menhir_stack in
        let _v : 'tv_list_transition_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 807 "ScillaParser.ml"
         in
        _menhir_goto_list_transition_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv736)) : 'freshtv738)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv757 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 815 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_transition_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv755 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 823 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : 'tv_list_transition_) : 'tv_list_transition_) = _v in
        ((let ((((_menhir_stack, _startpos__1_), (c : (
# 38 "ScillaParser.mly"
       (string)
# 830 "ScillaParser.ml"
        )), _startpos_c_), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_param_pair__)), _, (fs : 'tv_list_field_)) = _menhir_stack in
        let _5 = () in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_contract = let params =
          let xs = xs0 in
          
# 220 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 840 "ScillaParser.ml"
          
        in
        let _startpos = _startpos__1_ in
        
# 294 "ScillaParser.mly"
  ( { cname   = asIdL c (toLoc _startpos);
      cparams = params;
      cfields = fs;
      ctrans  = ts } )
# 850 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv753) = _menhir_stack in
        let (_v : 'tv_contract) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv751 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv747 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv745 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, (els : 'tv_imports)), _, (ls : 'tv_option_library_)), (c : 'tv_contract)) = _menhir_stack in
            let _4 = () in
            let _v : (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 871 "ScillaParser.ml"
            ) = 
# 316 "ScillaParser.mly"
  ( { cname = c.cname;
      libs = ls;
      elibs = els;
      contr = c } )
# 878 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv743) = _menhir_stack in
            let (_v : (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 885 "ScillaParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv741) = Obj.magic _menhir_stack in
            let (_v : (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 892 "ScillaParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv739) = Obj.magic _menhir_stack in
            let ((_1 : (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 899 "ScillaParser.ml"
            )) : (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 903 "ScillaParser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv740)) : 'freshtv742)) : 'freshtv744)) : 'freshtv746)) : 'freshtv748)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv749 * 'tv_imports) * _menhir_state * 'tv_option_library_) * 'tv_contract) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv750)) : 'freshtv752)) : 'freshtv754)) : 'freshtv756)) : 'freshtv758)
    | _ ->
        _menhir_fail ()

and _menhir_goto_trans_id : _menhir_env -> 'ttv_tail -> 'tv_trans_id -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv733 * _menhir_state * Lexing.position) * 'tv_trans_id) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv729 * _menhir_state * Lexing.position) * 'tv_trans_id) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | RPAREN ->
            _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState159
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv730)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv731 * _menhir_state * Lexing.position) * 'tv_trans_id) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv732)) : 'freshtv734)

and _menhir_goto_pattern : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_pattern -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv715 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv711 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv709 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_arg_pattern = 
# 215 "ScillaParser.mly"
                              ( p )
# 968 "ScillaParser.ml"
             in
            _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv710)) : 'freshtv712)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv713 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv714)) : 'freshtv716)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv721 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv717 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32) : 'freshtv718)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv719 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv720)) : 'freshtv722)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv727 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv723 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACCEPT ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EVENT ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SEND ->
                _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState169 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BAR | END ->
                _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState169
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv724)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv725 * _menhir_state) * _menhir_state * 'tv_pattern) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv726)) : 'freshtv728)
    | _ ->
        _menhir_fail ()

and _menhir_reduce31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_arg_pattern_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1070 "ScillaParser.ml"
     in
    _menhir_goto_list_arg_pattern_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_arg_pattern = 
# 212 "ScillaParser.mly"
             ( Wildcard )
# 1084 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv708)

and _menhir_run23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 1108 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv705) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 37 "ScillaParser.mly"
       (string)
# 1118 "ScillaParser.ml"
    )) : (
# 37 "ScillaParser.mly"
       (string)
# 1122 "ScillaParser.ml"
    )) = _v in
    let (_startpos_x_ : Lexing.position) = _startpos in
    ((let _v : 'tv_arg_pattern = let _startpos = _startpos_x_ in
    
# 213 "ScillaParser.mly"
         (Binder (Ident (x, toLoc _startpos)))
# 1129 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv706)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 1136 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv703) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 1146 "ScillaParser.ml"
    )) : (
# 38 "ScillaParser.mly"
       (string)
# 1150 "ScillaParser.ml"
    )) = _v in
    let (_startpos_c_ : Lexing.position) = _startpos in
    ((let _v : 'tv_arg_pattern = 
# 214 "ScillaParser.mly"
            ( Constructor (c, []) )
# 1156 "ScillaParser.ml"
     in
    _menhir_goto_arg_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv704)

and _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_param_pair__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv695 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1169 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv691 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1179 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FIELD ->
                _menhir_run148 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | EOF | TRANSITION ->
                _menhir_reduce35 _menhir_env (Obj.magic _menhir_stack) MenhirState147
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147) : 'freshtv692)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv693 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1199 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv694)) : 'freshtv696)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv701 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv697 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ACCEPT ->
                _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EVENT ->
                _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | SEND ->
                _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | END ->
                _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState161
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv698)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv699 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv700)) : 'freshtv702)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_targ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_targ_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv685 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv683 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_targ_) : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_targ)) = _menhir_stack in
        let _v : 'tv_nonempty_list_targ_ = 
# 211 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1257 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv684)) : 'freshtv686)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv689 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1265 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_targ_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv687 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1273 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((targs : 'tv_nonempty_list_targ_) : 'tv_nonempty_list_targ_) = _v in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), (f : (
# 37 "ScillaParser.mly"
       (string)
# 1280 "ScillaParser.ml"
        )), _startpos_f_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
        
# 174 "ScillaParser.mly"
  ( (TApp ((Ident (f, toLoc _startpos)), targs), toLoc _startpos) )
# 1287 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)) : 'freshtv690)
    | _ ->
        _menhir_fail ()

and _menhir_reduce51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_param_pair__ = 
# 142 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1298 "ScillaParser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_goto_list_exp_pm_clause_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_exp_pm_clause_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv677 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1311 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv673 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1321 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv671 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1328 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 1333 "ScillaParser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_exp_pm_clause_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
            
# 168 "ScillaParser.mly"
  ( (MatchExpr (Ident (x, toLoc _startpos), cs), toLoc _startpos) )
# 1342 "ScillaParser.ml"
             in
            _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv675 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1352 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv681 * _menhir_state * 'tv_exp_pm_clause) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv679 * _menhir_state * 'tv_exp_pm_clause) * _menhir_state * 'tv_list_exp_pm_clause_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_exp_pm_clause)), _, (xs : 'tv_list_exp_pm_clause_)) = _menhir_stack in
        let _v : 'tv_list_exp_pm_clause_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1365 "ScillaParser.ml"
         in
        _menhir_goto_list_exp_pm_clause_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv680)) : 'freshtv682)
    | _ ->
        _menhir_fail ()

and _menhir_reduce29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_ID_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1376 "ScillaParser.ml"
     in
    _menhir_goto_list_ID_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run96 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 1383 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState96
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96

and _menhir_goto_simple_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_simple_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState206 | MenhirState203 | MenhirState171 | MenhirState152 | MenhirState10 | MenhirState13 | MenhirState32 | MenhirState123 | MenhirState116 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657 * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655 * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (f : 'tv_simple_exp)) = _menhir_stack in
        let _v : 'tv_exp = 
# 134 "ScillaParser.mly"
                 (f)
# 1412 "ScillaParser.ml"
         in
        _menhir_goto_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv663 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1420 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv659 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1430 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState116 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState116) : 'freshtv660)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv661 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1472 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv662)) : 'freshtv664)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv669 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1481 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv665 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1491 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv666)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv667 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1533 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)
    | _ ->
        _menhir_fail ()

and _menhir_goto_nonempty_list_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_nonempty_list_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv645 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1548 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1556 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_nonempty_list_ID_) : 'tv_nonempty_list_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 37 "ScillaParser.mly"
       (string)
# 1563 "ScillaParser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _v : 'tv_nonempty_list_ID_ = 
# 211 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1568 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv649 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1576 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv647 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 1584 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((args : 'tv_nonempty_list_ID_) : 'tv_nonempty_list_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (f : (
# 37 "ScillaParser.mly"
       (string)
# 1591 "ScillaParser.ml"
        )), _startpos_f_) = _menhir_stack in
        let _v : 'tv_simple_exp = let _startpos = _startpos_f_ in
        
# 147 "ScillaParser.mly"
  ( let xs = List.map (fun i -> Ident (i, toLoc _startpos)) args
    in (App ((Ident (f, toLoc _startpos)), xs), toLoc _startpos ) )
# 1598 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)) : 'freshtv650)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv653) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_nonempty_list_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv651) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((args : 'tv_nonempty_list_ID_) : 'tv_nonempty_list_ID_) = _v in
        ((let _v : 'tv_builtin_args = 
# 226 "ScillaParser.mly"
  ( List.map (fun i -> Ident (i, dummy_loc)) args )
# 1613 "ScillaParser.ml"
         in
        _menhir_goto_builtin_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv652)) : 'freshtv654)
    | _ ->
        _menhir_fail ()

and _menhir_goto_msg_entry : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_msg_entry -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv635 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv636)
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv637 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_msg_entry)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_msg_entry_ = 
# 229 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 1646 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_msg_entry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv638)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv639 * _menhir_state * 'tv_msg_entry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv640)) : 'freshtv642)

and _menhir_goto_list_libentry_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_libentry_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv629 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1665 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_libentry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv627 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 1673 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ls : 'tv_list_libentry_) : 'tv_list_libentry_) = _v in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), (n : (
# 38 "ScillaParser.mly"
       (string)
# 1680 "ScillaParser.ml"
        )), _startpos_n_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_library = let _startpos = _startpos__1_ in
        
# 304 "ScillaParser.mly"
  ( {lname = asIdL n (toLoc _startpos);
     lentries = ls } )
# 1688 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv625) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_library) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState5 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv607 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_library)) = _menhir_stack in
            let _v : 'tv_option_library_ = 
# 116 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 1705 "ScillaParser.ml"
             in
            _menhir_goto_option_library_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)) : 'freshtv610)
        | MenhirState208 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv617 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (l : 'tv_library)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1724 "ScillaParser.ml"
                ) = 
# 308 "ScillaParser.mly"
                   ( l )
# 1728 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv615) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1736 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv613) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1744 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv611) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1752 "ScillaParser.ml"
                )) : (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 1756 "ScillaParser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv612)) : 'freshtv614)) : 'freshtv616)) : 'freshtv618)) : 'freshtv620)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_library) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv622)) : 'freshtv624)
        | _ ->
            _menhir_fail ()) : 'freshtv626)) : 'freshtv628)) : 'freshtv630)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv633 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_libentry_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv631 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_libentry_) : 'tv_list_libentry_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_libentry)) = _menhir_stack in
        let _v : 'tv_list_libentry_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1781 "ScillaParser.ml"
         in
        _menhir_goto_list_libentry_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)) : 'freshtv634)
    | _ ->
        _menhir_fail ()

and _menhir_reduce43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_transition_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 1792 "ScillaParser.ml"
     in
    _menhir_goto_list_transition_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run155 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599) = Obj.magic _menhir_stack in
        let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 1808 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv597) = Obj.magic _menhir_stack in
        let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 1817 "ScillaParser.ml"
        )) : (
# 38 "ScillaParser.mly"
       (string)
# 1821 "ScillaParser.ml"
        )) = _v in
        let (_startpos_c_ : Lexing.position) = _startpos in
        ((let _v : 'tv_trans_id = 
# 281 "ScillaParser.mly"
          (c)
# 1827 "ScillaParser.ml"
         in
        _menhir_goto_trans_id _menhir_env _menhir_stack _v) : 'freshtv598)) : 'freshtv600)
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv603) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 1836 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv601) = Obj.magic _menhir_stack in
        let ((i : (
# 37 "ScillaParser.mly"
       (string)
# 1845 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 1849 "ScillaParser.ml"
        )) = _v in
        let (_startpos_i_ : Lexing.position) = _startpos in
        ((let _v : 'tv_trans_id = 
# 282 "ScillaParser.mly"
         (i)
# 1855 "ScillaParser.ml"
         in
        _menhir_goto_trans_id _menhir_env _menhir_stack _v) : 'freshtv602)) : 'freshtv604)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv605 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)

and _menhir_goto_list_stmt_pm_clause_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_stmt_pm_clause_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state * 'tv_stmt_pm_clause) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv585 * _menhir_state * 'tv_stmt_pm_clause) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_stmt_pm_clause)), _, (xs : 'tv_list_stmt_pm_clause_)) = _menhir_stack in
        let _v : 'tv_list_stmt_pm_clause_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 1879 "ScillaParser.ml"
         in
        _menhir_goto_list_stmt_pm_clause_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv595 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1887 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | END ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv591 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1897 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv589 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1904 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, _startpos__1_), (x : (
# 37 "ScillaParser.mly"
       (string)
# 1909 "ScillaParser.ml"
            )), _startpos_x_), _, (cs : 'tv_list_stmt_pm_clause_)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_stmt = let _startpos = _startpos__1_ in
            
# 253 "ScillaParser.mly"
  ( (MatchStmt (Ident (x, toLoc _startpos), cs), toLoc _startpos)  )
# 1918 "ScillaParser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv593 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 1928 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_list_stmt_pm_clause_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | _ ->
        _menhir_fail ()

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv583) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_pattern = 
# 207 "ScillaParser.mly"
             ( Wildcard )
# 1945 "ScillaParser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv584)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 1952 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv581) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((x : (
# 37 "ScillaParser.mly"
       (string)
# 1962 "ScillaParser.ml"
    )) : (
# 37 "ScillaParser.mly"
       (string)
# 1966 "ScillaParser.ml"
    )) = _v in
    let (_startpos_x_ : Lexing.position) = _startpos in
    ((let _v : 'tv_pattern = let _startpos = _startpos_x_ in
    
# 208 "ScillaParser.mly"
         (Binder (Ident (x, toLoc _startpos)))
# 1973 "ScillaParser.ml"
     in
    _menhir_goto_pattern _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 1980 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run23 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | UNDERSCORE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ARROW | RPAREN ->
        _menhir_reduce31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_stmt_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv575 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv573 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_stmt_) : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_stmt_ = 
# 231 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2019 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | MenhirState212 | MenhirState161 | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv577) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_stmt_) : 'tv_separated_nonempty_list_SEMICOLON_stmt_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ = 
# 144 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 2034 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_param_pair_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_param_pair_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState159 | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_param_pair_) : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_param_pair__ = 
# 144 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x )
# 2055 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_param_pair__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)) : 'freshtv568)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv571 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv569 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_param_pair_) : 'tv_separated_nonempty_list_COMMA_param_pair_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_param_pair)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_param_pair_ = 
# 231 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2072 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_param_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv570)) : 'freshtv572)
    | _ ->
        _menhir_fail ()

and _menhir_run139 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2081 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv561 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2093 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FORALL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | LPAREN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | MAP ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState140
        | TID _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState140 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState140) : 'freshtv562)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv563 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2119 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)

and _menhir_run59 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_typ -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | LPAREN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | MAP ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState59
    | TID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState59 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState59

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_targ_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_targ_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv541 * _menhir_state * 'tv_targ) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv539 * _menhir_state * 'tv_targ) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_targ)), _, (xs : 'tv_list_targ_)) = _menhir_stack in
        let _v : 'tv_list_targ_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2163 "ScillaParser.ml"
         in
        _menhir_goto_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)) : 'freshtv542)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv545 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2171 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv543 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2177 "ScillaParser.ml"
        ) * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (d : (
# 38 "ScillaParser.mly"
       (string)
# 2182 "ScillaParser.ml"
        )), _startpos_d_), _, (targs : 'tv_list_targ_)) = _menhir_stack in
        let _v : 'tv_typ = 
# 113 "ScillaParser.mly"
  ( match targs with
    | [] -> to_type d                       
    | _ -> ADT (d, targs)
  )
# 2190 "ScillaParser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)) : 'freshtv546)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv555 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv553 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _startpos__1_), _, (ts : 'tv_list_targ_)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ctargs = 
# 204 "ScillaParser.mly"
                                  ( ts )
# 2211 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv551) = _menhir_stack in
            let (_v : 'tv_ctargs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
            let (_v : 'tv_ctargs) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
            let ((x : 'tv_ctargs) : 'tv_ctargs) = _v in
            ((let _v : 'tv_option_ctargs_ = 
# 116 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( Some x )
# 2225 "ScillaParser.ml"
             in
            _menhir_goto_option_ctargs_ _menhir_env _menhir_stack _v) : 'freshtv548)) : 'freshtv550)) : 'freshtv552)) : 'freshtv554)) : 'freshtv556)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv557 * Lexing.position) * _menhir_state * 'tv_list_targ_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv558)) : 'freshtv560)
    | _ ->
        _menhir_fail ()

and _menhir_goto_targ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_targ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv515 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState48
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48) : 'freshtv516)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv519 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv517 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (k : 'tv_targ)), _, (v : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_typ = 
# 117 "ScillaParser.mly"
                         ( MapType (k, v) )
# 2270 "ScillaParser.ml"
         in
        _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv518)) : 'freshtv520)
    | MenhirState92 | MenhirState55 | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv521 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
        | COMMA | EOF | EQ | FORALL | RBRACE | RPAREN | TARROW ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv522)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv523 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState65
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState65 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState65) : 'freshtv524)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv527 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv525 * _menhir_state) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, (k : 'tv_targ)), _, (v : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_targ = 
# 127 "ScillaParser.mly"
                         ( MapType (k, v) )
# 2321 "ScillaParser.ml"
         in
        _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv526)) : 'freshtv528)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv529 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv530)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv531 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _startpos__1_), _, (kt : 'tv_targ)), _, (vt : 'tv_targ)) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_lit = 
# 194 "ScillaParser.mly"
(
  Map ((kt, vt), [])
  (* if isPrimType kt
   * then Map ((kt, vt), [])
   * else
   *   raise (SyntaxError (Core.sprintf "Non-primitive type (%s) cannot be a map key."
   *                    (pp_typ kt))) *)
)
# 2360 "ScillaParser.ml"
         in
        _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv532)) : 'freshtv534)
    | MenhirState108 | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv537 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState108
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
        | AT | BAR | BLOCK | BUILTIN | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | ID _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv535 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_targ)) = _menhir_stack in
            let _v : 'tv_nonempty_list_targ_ = 
# 209 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 2384 "ScillaParser.ml"
             in
            _menhir_goto_nonempty_list_targ_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv538)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_library_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_library_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv513 * 'tv_imports) * _menhir_state * 'tv_option_library_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CONTRACT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv509) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv505 * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 2416 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv501 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 2428 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | RPAREN ->
                    _menhir_reduce51 _menhir_env (Obj.magic _menhir_stack) MenhirState138
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv502)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv503 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 2448 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv504)) : 'freshtv506)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv507 * Lexing.position) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv508)) : 'freshtv510)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv511 * 'tv_imports) * _menhir_state * 'tv_option_library_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)

and _menhir_goto_list_CID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_CID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv495 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2473 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_CID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv493 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2481 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_list_CID_) : 'tv_list_CID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 38 "ScillaParser.mly"
       (string)
# 2488 "ScillaParser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _v : 'tv_list_CID_ = 
# 201 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( x :: xs )
# 2493 "ScillaParser.ml"
         in
        _menhir_goto_list_CID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * Lexing.position) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_CID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv497 * Lexing.position) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((els : 'tv_list_CID_) : 'tv_list_CID_) = _v in
        ((let (_menhir_stack, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_imports = let _startpos = _startpos__1_ in
        
# 311 "ScillaParser.mly"
                          ( List.map (fun c -> asIdL c (toLoc _startpos)) els )
# 2511 "ScillaParser.ml"
         in
        _menhir_goto_imports _menhir_env _menhir_stack _v) : 'freshtv498)) : 'freshtv500)
    | _ ->
        _menhir_fail ()

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_exp_pm_clause_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 2522 "ScillaParser.ml"
     in
    _menhir_goto_list_exp_pm_clause_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv491 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv487 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv485 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _startpos__1_), _, (xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_simple_exp = let es =
          let xs = xs0 in
          
# 220 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 2565 "ScillaParser.ml"
          
        in
        let _startpos = _startpos__1_ in
        
# 156 "ScillaParser.mly"
  ( (Message es, toLoc _startpos) )
# 2572 "ScillaParser.ml"
         in
        _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv486)) : 'freshtv488)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv489 * _menhir_state * Lexing.position) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2586 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv481 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2598 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BLOCK ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv475 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2610 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState38 in
            let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 2616 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | NUMLIT _v ->
                _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
            | RBRACE | SEMICOLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv471 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2630 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2634 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 2639 "ScillaParser.ml"
                )), _startpos_i_), _, (c : (
# 38 "ScillaParser.mly"
       (string)
# 2643 "ScillaParser.ml"
                )), _startpos_c_) = _menhir_stack in
                let _2 = () in
                let _v : 'tv_msg_entry = 
# 221 "ScillaParser.mly"
                          ( i, MTag c )
# 2649 "ScillaParser.ml"
                 in
                _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv472)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv473 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2659 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2663 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
        | EMP ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv479 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2676 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState38 in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 2682 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv477 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2690 "ScillaParser.ml"
            ) * Lexing.position)) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            let ((v : (
# 37 "ScillaParser.mly"
       (string)
# 2696 "ScillaParser.ml"
            )) : (
# 37 "ScillaParser.mly"
       (string)
# 2700 "ScillaParser.ml"
            )) = _v in
            let (_startpos_v_ : Lexing.position) = _startpos in
            ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 2706 "ScillaParser.ml"
            )), _startpos_i_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_msg_entry = 
# 222 "ScillaParser.mly"
                          ( i,  MVar (asIdL v (toLoc _startpos_v_)) )
# 2712 "ScillaParser.ml"
             in
            _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv478)) : 'freshtv480)
        | STRING _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38) : 'freshtv482)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv483 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2728 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)

and _menhir_goto_atomic_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_atomic_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv469) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_atomic_exp) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv467) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((a : 'tv_atomic_exp) : 'tv_atomic_exp) = _v in
    ((let _v : 'tv_simple_exp = 
# 150 "ScillaParser.mly"
                 (a)
# 2746 "ScillaParser.ml"
     in
    _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv468)) : 'freshtv470)

and _menhir_goto_exps : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2753 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2764 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv459) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2772 "ScillaParser.ml"
        )) : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2776 "ScillaParser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv460)) : 'freshtv462)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv465 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2786 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv463 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((es : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2794 "ScillaParser.ml"
        )) : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2798 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (e : 'tv_exp)) = _menhir_stack in
        let _v : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 2804 "ScillaParser.ml"
        ) = 
# 234 "ScillaParser.mly"
                     ( e :: es )
# 2808 "ScillaParser.ml"
         in
        _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv464)) : 'freshtv466)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_ctargs_ : _menhir_env -> 'ttv_tail -> 'tv_option_ctargs_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv457 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2821 "ScillaParser.ml"
    ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run96 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        _menhir_reduce29 _menhir_env (Obj.magic _menhir_stack) MenhirState95
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv458)

and _menhir_run70 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2838 "ScillaParser.ml"
) * Lexing.position -> (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 2842 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv455 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 2850 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let ((n : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 2855 "ScillaParser.ml"
    )) : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 2859 "ScillaParser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s, (i : (
# 38 "ScillaParser.mly"
       (string)
# 2864 "ScillaParser.ml"
    )), _startpos_i_) = _menhir_stack in
    let _startpos = _startpos_i_ in
    let _v : 'tv_lit = 
# 184 "ScillaParser.mly"
               (
    let string_of_n = Big_int.string_of_big_int n in
    build_prim_literal_exn (to_type i) string_of_n
  )
# 2873 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv456)

and _menhir_goto_builtin_args : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_builtin_args -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv453 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2883 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_builtin_args) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv451 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 2891 "ScillaParser.ml"
    ) * Lexing.position) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    let ((xs : 'tv_builtin_args) : 'tv_builtin_args) = _v in
    ((let ((_menhir_stack, _menhir_s, _startpos__1_), (b : (
# 37 "ScillaParser.mly"
       (string)
# 2898 "ScillaParser.ml"
    )), _startpos_b_) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_simple_exp = let _startpos = _startpos__1_ in
    
# 153 "ScillaParser.mly"
  ( (Builtin ((Ident (b, toLoc _startpos_b_)), xs), toLoc _startpos) )
# 2905 "ScillaParser.ml"
     in
    _menhir_goto_simple_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)) : 'freshtv454)

and _menhir_run81 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 2912 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState81 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv449 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2926 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 37 "ScillaParser.mly"
       (string)
# 2931 "ScillaParser.ml"
        )), _startpos_x_) = _menhir_stack in
        let _v : 'tv_nonempty_list_ID_ = 
# 209 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 2936 "ScillaParser.ml"
         in
        _menhir_goto_nonempty_list_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv450)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_lit : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_lit -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    match _menhir_s with
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv443 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2952 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_lit) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv441 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 2961 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((l : 'tv_lit) : 'tv_lit) = _v in
        let (_startpos_l_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 2969 "ScillaParser.ml"
        )), _startpos_i_) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_msg_entry = 
# 220 "ScillaParser.mly"
                          ( i, MLit l )
# 2975 "ScillaParser.ml"
         in
        _menhir_goto_msg_entry _menhir_env _menhir_stack _menhir_s _v) : 'freshtv442)) : 'freshtv444)
    | MenhirState206 | MenhirState203 | MenhirState171 | MenhirState152 | MenhirState10 | MenhirState13 | MenhirState32 | MenhirState121 | MenhirState123 | MenhirState35 | MenhirState116 | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv447) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_lit) = _v in
        let (_startpos : Lexing.position) = _startpos in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv445) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((l : 'tv_lit) : 'tv_lit) = _v in
        let (_startpos_l_ : Lexing.position) = _startpos in
        ((let _v : 'tv_atomic_exp = let _startpos = _startpos_l_ in
        
# 178 "ScillaParser.mly"
               ( (Literal l, toLoc _startpos) )
# 2993 "ScillaParser.ml"
         in
        _menhir_goto_atomic_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
    | _ ->
        _menhir_fail ()

and _menhir_reduce37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_libentry_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3004 "ScillaParser.ml"
     in
    _menhir_goto_list_libentry_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv437 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 3020 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv433 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3032 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv434)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv435 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3076 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv436)) : 'freshtv438)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv439 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv440)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv399 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv397 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let ((_menhir_stack, _menhir_s), _, (p : 'tv_pattern)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_stmt_pm_clause = let ss =
          let xs = xs0 in
          
# 220 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3108 "ScillaParser.ml"
          
        in
        
# 257 "ScillaParser.mly"
                                       ( p, ss )
# 3114 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmt_pm_clause) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state * 'tv_stmt_pm_clause) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BAR ->
            _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | END ->
            _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState187
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState187) : 'freshtv394)) : 'freshtv396)) : 'freshtv398)) : 'freshtv400)
    | MenhirState212 | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv431) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv429) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__) = _v in
        ((let _v : 'tv_stmts = let ss =
          let xs = xs0 in
          
# 220 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3148 "ScillaParser.ml"
          
        in
        
# 259 "ScillaParser.mly"
                                       ( ss )
# 3154 "ScillaParser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_stmts) = _v in
        ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        match _menhir_s with
        | MenhirState161 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv411 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | END ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv407 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv405 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s, _startpos__1_), (t : 'tv_trans_id)), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_param_pair__)), _, (ss : 'tv_stmts)) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_transition = let params =
                  let xs = xs0 in
                  
# 220 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( xs )
# 3184 "ScillaParser.ml"
                  
                in
                let _startpos = _startpos__1_ in
                
# 276 "ScillaParser.mly"
  ( { tname = asIdL t (toLoc _startpos);
      tparams = params;
      tbody = ss } )
# 3193 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv403) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_transition) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv401 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | TRANSITION ->
                    _menhir_run155 _menhir_env (Obj.magic _menhir_stack) MenhirState194 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EOF ->
                    _menhir_reduce43 _menhir_env (Obj.magic _menhir_stack) MenhirState194
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState194) : 'freshtv402)) : 'freshtv404)) : 'freshtv406)) : 'freshtv408)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv409 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
        | MenhirState212 ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EOF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (ss : 'tv_stmts)) = _menhir_stack in
                let _2 = () in
                let _v : (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3236 "ScillaParser.ml"
                ) = 
# 262 "ScillaParser.mly"
                  ( ss )
# 3240 "ScillaParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv417) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3248 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv415) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3256 "ScillaParser.ml"
                )) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv413) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let ((_1 : (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3264 "ScillaParser.ml"
                )) : (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 3268 "ScillaParser.ml"
                )) = _v in
                (Obj.magic _1 : 'freshtv414)) : 'freshtv416)) : 'freshtv418)) : 'freshtv420)) : 'freshtv422)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_stmts) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv424)) : 'freshtv426)
        | _ ->
            _menhir_fail ()) : 'freshtv428)) : 'freshtv430)) : 'freshtv432)
    | _ ->
        _menhir_fail ()

and _menhir_reduce39 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_stmt_pm_clause_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3288 "ScillaParser.ml"
     in
    _menhir_goto_list_stmt_pm_clause_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run167 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState167 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | UNDERSCORE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState167
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState167

and _menhir_goto_stmt : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_stmt -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv391 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | SEMICOLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ACCEPT ->
            _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EVENT ->
            _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | SEND ->
            _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState183 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState183) : 'freshtv386)
    | BAR | END | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_stmt)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_stmt_ = 
# 229 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3344 "ScillaParser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_stmt_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_stmt) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv390)) : 'freshtv392)

and _menhir_goto_typ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv327 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 3364 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState58
        | CID _ | COMMA | EOF | EQ | FORALL | LPAREN | MAP | RPAREN | TID _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv325 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 3376 "ScillaParser.ml"
            ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (tv : (
# 39 "ScillaParser.mly"
       (string)
# 3381 "ScillaParser.ml"
            ))), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typ = 
# 120 "ScillaParser.mly"
                                     (PolyFun (tv, t))
# 3388 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv328)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv331 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | CID _ | COMMA | EOF | EQ | FORALL | LPAREN | MAP | RPAREN | TID _ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv329 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (t1 : 'tv_typ)), _), _, (t2 : 'tv_typ)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_typ = 
# 118 "ScillaParser.mly"
                              ( FunType (t1, t2) )
# 3411 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv332)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv335 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState61 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv333 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typ = 
# 119 "ScillaParser.mly"
                           ( t )
# 3438 "ScillaParser.ml"
             in
            _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState61
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState61) : 'freshtv338)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv343 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv341 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState63 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv339 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_typ)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_targ = 
# 124 "ScillaParser.mly"
                           ( t )
# 3467 "ScillaParser.ml"
             in
            _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)) : 'freshtv342)
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState63
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv344)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv351 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3481 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv349 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3491 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState88 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ARROW ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv345 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3503 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BLOCK ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BUILTIN ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | CID _v ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EMP ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | HEXLIT _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LBRACE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LET ->
                    _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MATCH ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TFUN ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv346)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv347 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 3545 "ScillaParser.ml"
                ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv348)) : 'freshtv350)
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState88
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv352)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv363) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState119
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (t : 'tv_typ)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_type_annot = 
# 230 "ScillaParser.mly"
                 ( t )
# 3571 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv359) = _menhir_stack in
            let (_v : 'tv_type_annot) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv357 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3581 "ScillaParser.ml"
            ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | EQ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv353 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3591 "ScillaParser.ml"
                ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_stack = (_menhir_stack, _startpos) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | AT ->
                    _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BLOCK ->
                    _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | BUILTIN ->
                    _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | CID _v ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | EMP ->
                    _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FUN ->
                    _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | HEXLIT _v ->
                    _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | ID _v ->
                    _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | LBRACE ->
                    _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | MATCH ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | STRING _v ->
                    _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | TFUN ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv354)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv355 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 3633 "ScillaParser.ml"
                ) * Lexing.position) * 'tv_type_annot) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv356)) : 'freshtv358)) : 'freshtv360)) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState119) : 'freshtv364)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3646 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | COMMA | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 3658 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (n : (
# 37 "ScillaParser.mly"
       (string)
# 3663 "ScillaParser.ml"
            )), _startpos_n_), _, (t : 'tv_typ)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_param_pair = 
# 269 "ScillaParser.mly"
                         ( asIdL n (toLoc _startpos_n_), t )
# 3669 "ScillaParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_param_pair) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv371 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COMMA ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv365 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    _menhir_run139 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144) : 'freshtv366)
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv367 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (x : 'tv_param_pair)) = _menhir_stack in
                let _v : 'tv_separated_nonempty_list_COMMA_param_pair_ = 
# 229 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [ x ] )
# 3700 "ScillaParser.ml"
                 in
                _menhir_goto_separated_nonempty_list_COMMA_param_pair_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv369 * _menhir_state * 'tv_param_pair) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)) : 'freshtv374)) : 'freshtv376)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv378)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv381 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 3719 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv379 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 3729 "ScillaParser.ml"
            ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState151 in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv380)
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState151
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv382)
    | MenhirState219 | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EOF ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | FORALL ->
            _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | LPAREN ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | MAP ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | TARROW ->
            _menhir_run59 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | TID _v ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState219 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219) : 'freshtv384)
    | _ ->
        _menhir_fail ()

and _menhir_goto_types : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3803 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3814 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((_1 : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3822 "ScillaParser.ml"
        )) : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3826 "ScillaParser.ml"
        )) = _v in
        (Obj.magic _1 : 'freshtv318)) : 'freshtv320)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3836 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((ts : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3844 "ScillaParser.ml"
        )) : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3848 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, (t : 'tv_typ)) = _menhir_stack in
        let _v : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 3854 "ScillaParser.ml"
        ) = 
# 238 "ScillaParser.mly"
                      (t :: ts)
# 3858 "ScillaParser.ml"
         in
        _menhir_goto_types _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
    | _ ->
        _menhir_fail ()

and _menhir_reduce41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_targ_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3869 "ScillaParser.ml"
     in
    _menhir_goto_list_targ_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "ScillaParser.mly"
       (string)
# 3876 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 39 "ScillaParser.mly"
       (string)
# 3886 "ScillaParser.ml"
    )) : (
# 39 "ScillaParser.mly"
       (string)
# 3890 "ScillaParser.ml"
    )) = _v in
    ((let _v : 'tv_targ = 
# 126 "ScillaParser.mly"
           ( TypeVar t )
# 3895 "ScillaParser.ml"
     in
    _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv316)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MAP ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TID _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run44 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | MAP ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | TID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 3942 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((d : (
# 38 "ScillaParser.mly"
       (string)
# 3952 "ScillaParser.ml"
    )) : (
# 38 "ScillaParser.mly"
       (string)
# 3956 "ScillaParser.ml"
    )) = _v in
    let (_startpos_d_ : Lexing.position) = _startpos in
    ((let _v : 'tv_targ = 
# 125 "ScillaParser.mly"
           ( to_type d )
# 3962 "ScillaParser.ml"
     in
    _menhir_goto_targ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)

and _menhir_goto_imports : _menhir_env -> 'ttv_tail -> 'tv_imports -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv311 * 'tv_imports) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LIBRARY ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTRACT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState5 in
        ((let _v : 'tv_option_library_ = 
# 114 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 3983 "ScillaParser.ml"
         in
        _menhir_goto_option_library_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv310)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5) : 'freshtv312)

and _menhir_reduce27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_CID_ = 
# 199 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 3996 "ScillaParser.ml"
     in
    _menhir_goto_list_CID_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 4003 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CONTRACT | LIBRARY ->
        _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState2
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv305 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "ScillaParser.mly"
       (string)
# 4031 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ARROW ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv301 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 4042 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LET ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv302)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv303 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 4084 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv304)) : 'freshtv306)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv307 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 42 "ScillaParser.mly"
       (string)
# 4099 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((s : (
# 42 "ScillaParser.mly"
       (string)
# 4109 "ScillaParser.ml"
    )) : (
# 42 "ScillaParser.mly"
       (string)
# 4113 "ScillaParser.ml"
    )) = _v in
    let (_startpos_s_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_s_ in
    let _v : 'tv_lit = 
# 192 "ScillaParser.mly"
               ( StringLit s )
# 4120 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv300)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4136 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv291 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4148 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BAR ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | END ->
                _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState17
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv292)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4168 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv294)) : 'freshtv296)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4192 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LPAREN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MAP ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | TID _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv282)
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv283 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4224 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | AT ->
                _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BLOCK ->
                _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | BUILTIN ->
                _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | CID _v ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | EMP ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FUN ->
                _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | HEXLIT _v ->
                _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | ID _v ->
                _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | LBRACE ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | MATCH ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | STRING _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | TFUN ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv284)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv285 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4266 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)) : 'freshtv288)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | RBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState36 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_msg_entry__ = 
# 142 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4293 "ScillaParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_msg_entry__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run80 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 4304 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState80 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | IN | LBRACE | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4318 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (i : (
# 37 "ScillaParser.mly"
       (string)
# 4323 "ScillaParser.ml"
        )), _startpos_i_) = _menhir_stack in
        let _v : 'tv_atomic_exp = let _startpos = _startpos_i_ in
        
# 177 "ScillaParser.mly"
               ( (Var (Ident (i, toLoc _startpos)), toLoc _startpos) )
# 4329 "ScillaParser.ml"
         in
        _menhir_goto_atomic_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv278)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState80

and _menhir_run40 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 46 "ScillaParser.mly"
       (string)
# 4340 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((h : (
# 46 "ScillaParser.mly"
       (string)
# 4350 "ScillaParser.ml"
    )) : (
# 46 "ScillaParser.mly"
       (string)
# 4354 "ScillaParser.ml"
    )) = _v in
    let (_startpos_h_ : Lexing.position) = _startpos in
    ((let _startpos = _startpos_h_ in
    let _v : 'tv_lit = 
# 188 "ScillaParser.mly"
               ( 
  let l = String.length h in
  build_prim_literal_exn (PrimTypes.bystrx_typ ((l-1)/2)) h
)
# 4364 "ScillaParser.ml"
     in
    _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv276)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv267 * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4386 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | COLON ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv263 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 4398 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | CID _v ->
                    _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
                | FORALL ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState87
                | LPAREN ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState87
                | MAP ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState87
                | TID _v ->
                    _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv264)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv265 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 4424 "ScillaParser.ml"
                ) * Lexing.position) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)) : 'freshtv268)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state * Lexing.position)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)

and _menhir_run204 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv261) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 4452 "ScillaParser.ml"
    ) = 
# 233 "ScillaParser.mly"
      ( [] )
# 4456 "ScillaParser.ml"
     in
    _menhir_goto_exps _menhir_env _menhir_stack _menhir_s _v) : 'freshtv262)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MAP ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TID _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 4482 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | RBRACE ->
            _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv256)
    | NUMLIT _v ->
        _menhir_run70 _menhir_env (Obj.magic _menhir_stack) _v
    | AT | BAR | BLOCK | BUILTIN | CID _ | CONTRACT | EMP | END | EOF | FIELD | FUN | HEXLIT _ | ID _ | IN | LET | MATCH | SEMICOLON | STRING _ | TFUN | TRANSITION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_ctargs_ = 
# 114 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( None )
# 4519 "ScillaParser.ml"
         in
        _menhir_goto_option_ctargs_ _menhir_env _menhir_stack _v) : 'freshtv258)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 4529 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)

and _menhir_run100 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4546 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv249) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState101 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv245 * _menhir_state) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv243 * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_builtin_args = 
# 227 "ScillaParser.mly"
                 ( [] )
# 4575 "ScillaParser.ml"
                 in
                _menhir_goto_builtin_args _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)) : 'freshtv246)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv247 * _menhir_state) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv252)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)

and _menhir_run71 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NUMLIT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4609 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((n : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4617 "ScillaParser.ml"
        )) : (
# 45 "ScillaParser.mly"
       (Big_int.big_int)
# 4621 "ScillaParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _startpos = _startpos__1_ in
        let _v : 'tv_lit = 
# 182 "ScillaParser.mly"
               ( build_prim_literal_exn PrimTypes.bnum_typ (Big_int.string_of_big_int n) )
# 4629 "ScillaParser.ml"
         in
        _menhir_goto_lit _menhir_env _menhir_stack _menhir_s _v _startpos) : 'freshtv238)) : 'freshtv240)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv242)

and _menhir_run106 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4652 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LPAREN ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | MAP ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | TID _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState107 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv234)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 4691 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LET ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | EOF ->
            _menhir_reduce37 _menhir_env (Obj.magic _menhir_stack) MenhirState7
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7) : 'freshtv230)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)

and _menhir_reduce55 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_stmt__ = 
# 142 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
    ( [] )
# 4719 "ScillaParser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_SEMICOLON_stmt__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run162 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv225 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4735 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv223 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((m : (
# 37 "ScillaParser.mly"
       (string)
# 4744 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 4748 "ScillaParser.ml"
        )) = _v in
        let (_startpos_m_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_stmt = let _startpos = _startpos__1_ in
        
# 250 "ScillaParser.mly"
                         ( (SendMsgs (asIdL m (toLoc _startpos)), toLoc _startpos) )
# 4757 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv227 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)

and _menhir_run164 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv219 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4780 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _v, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | WITH ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4792 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BAR ->
                _menhir_run167 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | END ->
                _menhir_reduce39 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv216)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 4812 "ScillaParser.ml"
            ) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv218)) : 'freshtv220)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv221 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv222)

and _menhir_run170 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 37 "ScillaParser.mly"
       (string)
# 4827 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv193 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4839 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4851 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4856 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4864 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let ((r : (
# 37 "ScillaParser.mly"
       (string)
# 4869 "ScillaParser.ml"
            )) : (
# 37 "ScillaParser.mly"
       (string)
# 4873 "ScillaParser.ml"
            )) = _v in
            let (_startpos_r_ : Lexing.position) = _startpos in
            ((let ((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 4879 "ScillaParser.ml"
            )), _startpos_l_), _startpos__2_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_stmt = let _startpos = _startpos_l_ in
            
# 246 "ScillaParser.mly"
                         ( (Store (asIdL l (toLoc _startpos__2_), asIdL r (toLoc _startpos_r_)), toLoc _startpos) )
# 4886 "ScillaParser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv191 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4896 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | BIND ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4905 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4917 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv197 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4927 "ScillaParser.ml"
                ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
                let (_v : (
# 38 "ScillaParser.mly"
       (string)
# 4932 "ScillaParser.ml"
                )) = _v in
                let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4940 "ScillaParser.ml"
                ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
                let ((c : (
# 38 "ScillaParser.mly"
       (string)
# 4945 "ScillaParser.ml"
                )) : (
# 38 "ScillaParser.mly"
       (string)
# 4949 "ScillaParser.ml"
                )) = _v in
                let (_startpos_c_ : Lexing.position) = _startpos in
                ((let ((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 4955 "ScillaParser.ml"
                )), _startpos_l_), _startpos__2_) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_stmt = let _startpos = _startpos_l_ in
                
# 248 "ScillaParser.mly"
                         ( (ReadFromBC (asIdL l (toLoc _startpos__2_), c), toLoc _startpos) )
# 4963 "ScillaParser.ml"
                 in
                _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)) : 'freshtv198)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv199 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4973 "ScillaParser.ml"
                ) * Lexing.position) * Lexing.position)) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
        | ID _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv205 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4982 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 4987 "ScillaParser.ml"
            )) = _v in
            let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv203 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 4995 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            let ((r : (
# 37 "ScillaParser.mly"
       (string)
# 5000 "ScillaParser.ml"
            )) : (
# 37 "ScillaParser.mly"
       (string)
# 5004 "ScillaParser.ml"
            )) = _v in
            let (_startpos_r_ : Lexing.position) = _startpos in
            ((let ((_menhir_stack, _menhir_s, (l : (
# 37 "ScillaParser.mly"
       (string)
# 5010 "ScillaParser.ml"
            )), _startpos_l_), _startpos__2_) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_stmt = let _startpos = _startpos_l_ in
            
# 245 "ScillaParser.mly"
                         ( (Load (asIdL l (toLoc _startpos__2_), asIdL r (toLoc _startpos_r_)), toLoc _startpos) )
# 5017 "ScillaParser.ml"
             in
            _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv207 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5027 "ScillaParser.ml"
            ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv211 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5036 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AT ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BLOCK ->
            _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | BUILTIN ->
            _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CID _v ->
            _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | EMP ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | FUN ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | HEXLIT _v ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | ID _v ->
            _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LBRACE ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | LET ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | MATCH ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | STRING _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | TFUN ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState171 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState171) : 'freshtv212)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv213 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5080 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv214)

and _menhir_run179 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let (_v : (
# 37 "ScillaParser.mly"
       (string)
# 5097 "ScillaParser.ml"
        )) = _v in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        let ((m : (
# 37 "ScillaParser.mly"
       (string)
# 5106 "ScillaParser.ml"
        )) : (
# 37 "ScillaParser.mly"
       (string)
# 5110 "ScillaParser.ml"
        )) = _v in
        let (_startpos_m_ : Lexing.position) = _startpos in
        ((let (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_stmt = let _startpos = _startpos__1_ in
        
# 251 "ScillaParser.mly"
                 ( (CreateEvnt (asIdL m (toLoc _startpos)), toLoc _startpos) )
# 5119 "ScillaParser.ml"
         in
        _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv182)) : 'freshtv184)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv185 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)

and _menhir_run181 : _menhir_env -> 'ttv_tail -> _menhir_state -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _startpos ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv179) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_startpos__1_ : Lexing.position) = _startpos in
    ((let _1 = () in
    let _v : 'tv_stmt = let _startpos = _startpos__1_ in
    
# 249 "ScillaParser.mly"
                         ( (AcceptPayment, toLoc _startpos) )
# 5142 "ScillaParser.ml"
     in
    _menhir_goto_stmt _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv32)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv34)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv36)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state * 'tv_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState203 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv40)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_field) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState194 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_transition) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState187 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_stmt_pm_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState183 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * 'tv_stmt)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState171 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv49 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5200 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv51 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState167 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv55 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5219 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv57 * _menhir_state * Lexing.position) * 'tv_trans_id)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv59 * _menhir_state * Lexing.position) * 'tv_trans_id)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState154 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv61 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 5238 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) * _menhir_state * 'tv_list_field_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv63 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5247 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv65 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5256 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv67 * _menhir_state) * (
# 37 "ScillaParser.mly"
       (string)
# 5265 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv69 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 5274 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_param_pair__)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_param_pair)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5288 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState140 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5297 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv77 * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 5306 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_libentry) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state * 'tv_exp_pm_clause) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv83 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5324 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) * _menhir_state * 'tv_simple_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv85 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5333 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_type_annot) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((((_menhir_stack, _menhir_s, _), _, _), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState119 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv89) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv90)
    | MenhirState116 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv91 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5351 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) * _menhir_state * 'tv_simple_exp)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5365 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5374 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5383 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5392 "ScillaParser.ml"
        ) * Lexing.position) * 'tv_option_ctargs_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv104)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv105 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5405 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv107 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5414 "ScillaParser.ml"
        ) * Lexing.position)) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv109 * _menhir_state * Lexing.position)) * (
# 37 "ScillaParser.mly"
       (string)
# 5423 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState81 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv111 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5432 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState80 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv113 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5441 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_msg_entry)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * Lexing.position) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState65 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState61 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_typ) * _menhir_state) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState59 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_typ) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv129 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5485 "ScillaParser.ml"
        ))) * _menhir_state * 'tv_typ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5499 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState53 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5508 "ScillaParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state) * _menhir_state * 'tv_targ) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv149 * _menhir_state * (
# 37 "ScillaParser.mly"
       (string)
# 5547 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv153 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5561 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv155 * _menhir_state) * _menhir_state * 'tv_pattern)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state * 'tv_arg_pattern) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5585 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState18 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv163 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv165 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5599 "ScillaParser.ml"
        ) * Lexing.position)) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv167 * _menhir_state * Lexing.position) * (
# 39 "ScillaParser.mly"
       (string)
# 5608 "ScillaParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * Lexing.position) * (
# 37 "ScillaParser.mly"
       (string)
# 5617 "ScillaParser.ml"
        ) * Lexing.position) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s, _), _, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState7 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state * Lexing.position) * (
# 38 "ScillaParser.mly"
       (string)
# 5626 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv173 * 'tv_imports) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv174)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv175 * _menhir_state * (
# 38 "ScillaParser.mly"
       (string)
# 5639 "ScillaParser.ml"
        ) * Lexing.position) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv177 * Lexing.position) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv178)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 39 "ScillaParser.mly"
       (string)
# 5651 "ScillaParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((t : (
# 39 "ScillaParser.mly"
       (string)
# 5661 "ScillaParser.ml"
    )) : (
# 39 "ScillaParser.mly"
       (string)
# 5665 "ScillaParser.ml"
    )) = _v in
    ((let _v : 'tv_typ = 
# 121 "ScillaParser.mly"
           ( TypeVar t )
# 5670 "ScillaParser.ml"
     in
    _menhir_goto_typ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv28)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | MAP ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | TID _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | FORALL ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | MAP ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | TID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | TID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 39 "ScillaParser.mly"
       (string)
# 5726 "ScillaParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | PERIOD ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5737 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CID _v ->
                _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
            | FORALL ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | LPAREN ->
                _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | MAP ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState53
            | TID _v ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState53 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState53) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * _menhir_state) * (
# 39 "ScillaParser.mly"
       (string)
# 5763 "ScillaParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run217 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 5784 "ScillaParser.ml"
    ) = 
# 237 "ScillaParser.mly"
      ( [] )
# 5788 "ScillaParser.ml"
     in
    _menhir_goto_types _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run54 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 38 "ScillaParser.mly"
       (string)
# 5795 "ScillaParser.ml"
) -> Lexing.position -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v _startpos ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v, _startpos) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LPAREN ->
        _menhir_run44 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | MAP ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | TID _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | COMMA | EOF | EQ | FORALL | RPAREN | TARROW ->
        _menhir_reduce41 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and cmodule : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 103 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.cmodule)
# 5842 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IMPORT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_startpos : Lexing.position) = _menhir_env._menhir_lexbuf.Lexing.lex_start_p in
        ((let _menhir_stack = (_menhir_stack, _startpos) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CID _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
        | CONTRACT | LIBRARY ->
            _menhir_reduce27 _menhir_env (Obj.magic _menhir_stack) MenhirState1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1) : 'freshtv10)
    | CONTRACT | LIBRARY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11) = Obj.magic _menhir_stack in
        ((let _v : 'tv_imports = 
# 312 "ScillaParser.mly"
  ( [] )
# 5873 "ScillaParser.ml"
         in
        _menhir_goto_imports _menhir_env _menhir_stack _v) : 'freshtv12)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)) : 'freshtv16))

and exps : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 100 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.expr_annot list)
# 5886 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv7) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AT ->
        _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BLOCK ->
        _menhir_run71 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | BUILTIN ->
        _menhir_run100 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | CID _v ->
        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EMP ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run204 _menhir_env (Obj.magic _menhir_stack) MenhirState203
    | FUN ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | HEXLIT _v ->
        _menhir_run40 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run80 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LBRACE ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | LET ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | STRING _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | TFUN ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState203 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState203) : 'freshtv8))

and lmodule : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 104 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.library)
# 5931 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LIBRARY ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState208 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv6))

and stmts_term : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 102 "ScillaParser.mly"
       (ParserUtil.ParsedSyntax.stmt_annot list)
# 5950 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ACCEPT ->
        _menhir_run181 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EVENT ->
        _menhir_run179 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | ID _v ->
        _menhir_run170 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | MATCH ->
        _menhir_run164 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | SEND ->
        _menhir_run162 _menhir_env (Obj.magic _menhir_stack) MenhirState212 _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_reduce55 _menhir_env (Obj.magic _menhir_stack) MenhirState212
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212) : 'freshtv4))

and types : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 101 "ScillaParser.mly"
       (Syntax.typ list)
# 5979 "ScillaParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CID _v ->
        _menhir_run54 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v _menhir_env._menhir_lexbuf.Lexing.lex_start_p
    | EOF ->
        _menhir_run217 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | FORALL ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | LPAREN ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | MAP ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState216
    | TID _v ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState216 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216) : 'freshtv2))

# 233 "/Users/bohu/.opam/4.06.1/lib/menhir/standard.mly"
  

# 6008 "ScillaParser.ml"
