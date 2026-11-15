# Advent of Code

This project is pinned to OCaml version 5.4, so when utilizing ocaml-lsp-server I recommend version 1.26.1

Initialize the project with `make init`. This will create an Opam Switch, install `dune` and then add it to your current shell environment.

Solutions for days 1 through 12 live in `solution/day_01.ml` through `solution/day_12.ml`.
Each module has placeholders for both parts and inline tests.

Save your puzzle input in `inputs/day_01.txt` (or the corresponding day's file). Input files are ignored by Git.

To run a solution, choose a day from 1 through 12 and a part from 1 through 2:

```bash
dune exec advent_of_code -- --day=1 --part=1 --input=inputs/day_01.txt

```

You may also use `dune build` to produce a binary and the run it directly
```bash
dune build
```
```bash
./_build/default/bin/advent_of_code.exe --day=1 --part=1 --input=inputs/day_01.txt 
```

To run all inline tests:

```bash
dune runtest
```
