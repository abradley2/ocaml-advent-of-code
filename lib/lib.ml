open Base

type solution_part = Part_One | Part_Two

let arg_by_name args name =
  let rec search_arg name args =
    match args with
    | [] -> None
    | arg :: next -> (
      match String.is_prefix ~prefix:name arg with
      | true -> arg |> String.split ~on:'=' |> Base.List.last_exn |> Option.some
      | false -> search_arg name next )
  in
  Array.to_list args |> search_arg name

let thunk f arg = Fn.compose f (Fn.const arg)
