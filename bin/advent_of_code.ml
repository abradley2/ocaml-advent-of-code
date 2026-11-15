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
    | Some "2" -> Solution.Day_02.solution
    | Some "3" -> Solution.Day_03.solution
    | Some "4" -> Solution.Day_04.solution
    | Some "5" -> Solution.Day_05.solution
    | Some "6" -> Solution.Day_06.solution
    | Some "7" -> Solution.Day_07.solution
    | Some "8" -> Solution.Day_08.solution
    | Some "9" -> Solution.Day_09.solution
    | Some "10" -> Solution.Day_10.solution
    | Some "11" -> Solution.Day_11.solution
    | Some "12" -> Solution.Day_12.solution
    | Some day -> fun _ ~input:_ -> "Unknown --day (" ^ day ^ ") must specify 1 through 12"
    | None -> fun _ ~input:_ -> "Must specify --day=<1 through 12>"
  in
  match (input, get_arg "--part") with
  | _, None -> print_endline "Must specify --part=<1 or 2>"
  | None, _ -> print_endline "Must specify --input=<path/to/input.txt>"
  | Some input, Some "1" -> solve Part_One ~input |> print_endline
  | Some input, Some "2" -> solve Part_Two ~input |> print_endline
  | _, Some part -> "Invalid --part (" ^ part ^ ") must be 1 or 2" |> print_endline
