type dom
(* Abstract type for the DOM *)
external dom : dom = "document" [@@bs.val]

type elem
external get_by_id : dom -> string -> elem =
  "getElementById" [@@bs.send]
