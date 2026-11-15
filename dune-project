(lang dune 3.24)

(name advent_of_code)

(generate_opam_files true)

(package
 (name advent_of_code)
 (depends 
   (ocaml (>= 5.4.1))
   (base (>= 0.17.3))
   (stdio (>= 0.17.0))
   (ppx_inline_test (>= 0.17.1))))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
