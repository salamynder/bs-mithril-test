(* abstract mithril type *)
(* type m *)
(* external m : m = "" [@@bs.module "mithril"] *)

(* type vnode *)
(* hyperscript*)
(* external m : string -> string -> vnode = "mithril" [@@bs.module] *)
(** https://github.com/yawaramin/bs-hyperapp/blob/master/src/hyperapp.ml *)
type 'msg vnode

external _m :
  string ->
  ?a:'attrs ->
  ([ `children of 'msg vnode array | `text of string ] [@bs.unwrap]) ->
  'msg vnode =
  "mithril" [@@bs.module]

let m tagName ?a children =
  _m tagName ?a (`children (Array.of_list children))

let m_ tagName ?a text = _m tagName ?a (`text text)


(* closure-component - must be executed *)
(* type 'msg 'a component = (< view : 'a ; .. > as 'a) Js.t -> 'msg vnode *)
type ('msg, 'a) clo_comp = unit -> ( < view : unit -> 'msg vnode; .. > as 'a ) Js.t

external mount : Dom_hlp.elem -> ('msg, 'a) clo_comp -> unit = "" [@@bs.module "mithril"]
