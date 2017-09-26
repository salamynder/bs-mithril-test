type 'msg vnode
(* hyperscript*)
(* external m : string -> string -> vnode = "mithril" [@@bs.module ] *)

(** Takes a list of node children. See also `m_`. *)
val m : string -> ?a:'attrs -> 'msg vnode list -> 'msg vnode

(** Takes a single text node. See also `m`. *)
val m_ : string -> ?a:'attrs -> string -> 'msg vnode

(* closure-component - must be executed *)
type ('msg, 'a) clo_comp = unit -> ( < view : unit -> 'msg vnode; .. > as 'a ) Js.t

external mount : Dom_hlp.elem -> ('msg, 'a) clo_comp -> unit = "" [@@bs.module "mithril"]
