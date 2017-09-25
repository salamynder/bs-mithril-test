(* abstract mithril type *)
(* type m *)
(* external m : m = "" [@@bs.module "mithril"] *)

type vnode
(* hyperscript*)
external h : string -> string -> vnode = "m" [@@bs.module "mithril"]

(* closure-component - must be executed *)
type 'a component = (< view : 'a ; .. > as 'a) Js.t -> vnode
type 'a clo_comp = unit -> ( < view : unit -> vnode; .. > as 'a ) Js.t

external mount : Dom_hlp.elem -> 'a clo_comp -> unit = "" [@@bs.module "mithril"]
