open Base
open Lib

let () =
  let open Stdio.Out_channel in
  let open Stdio.In_channel in
  let get_arg = Lib.arg_by_name (Sys.get_argv ()) in
  let input = get_arg "--input" |> Option.map ~f:read_all in
  let solve =
    match get_arg "--day" with
    | Some "1" -> Solution.Day_01.solution
    | Some day -> fun _ ~input:_ -> "Unknown --day (" ^ day ^ ") must specify 1 through 12"
    | None -> fun _ ~input:_ -> "Must specify --day=<1 through 12>"
  in
  match (input, get_arg "--part") with
  | _, None -> print_endline "Must specify --part=<1 or 2>"
  | None, _ -> print_endline "Must specify --input=<path/to/input.txt>"
  | Some "", _ -> print_endline ""
  | Some input, Some "1" -> solve Part_One ~input |> print_endline
  | Some input, Some "2" -> solve Part_Two ~input |> print_endline
  | _, Some part -> "Invalid --part (" ^ part ^ ") must be 1 or 2" |> print_endline
