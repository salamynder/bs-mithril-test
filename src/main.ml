module M = Mithril
module D = Dom_hlp

(* let obj = [%bs.obj { x = 1 }] *)

(* both c1 and c2 look like bullshit..*)
(* let c1 = { *)
(*     view = (fun vnode -> "") *)
           
(* } *)
(* let c2 = *)
(*   object *)
(*     method view = fun v -> "" *)
(*   end *)

(* Komponenten-Fabrik *)
let cf3 () =
  let v = ref "Hello World" in
  [%bs.obj
      {
        view   = (fun () -> M.m_ "h1" !v );
        oninit = ""
      }
  ]

let () = M.mount (D.get_by_id D.dom "mount-id") cf3
  

