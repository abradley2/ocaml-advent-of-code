.PHONY: init
init: _opam/
	eval $(opam env)
	opam install dune=3.24.2
	opam install ocaml-lsp-server odoc ocamlformat utop

.PHONY: clean
clean:
	rm -rf ./_opam
	rm -rf ./_build

.PHONY: format
format:
	ocamlformat --inplace ./**/*.ml

_opam/:
	opam switch create ./ 5.4.1

_build/:
	dune build
