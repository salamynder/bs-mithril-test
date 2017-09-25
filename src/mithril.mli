type vnode
(* hyperscript*)
external m : string -> string -> vnode = "mithril" [@@bs.module ]

(* closure-component - must be executed *)
type 'a component = (< view : 'a ; .. > as 'a) Js.t -> vnode
type 'a clo_comp = unit -> ( < view : unit -> vnode; .. > as 'a ) Js.t

external mount : Dom_hlp.elem -> 'a clo_comp -> unit = "" [@@bs.module "mithril"]
