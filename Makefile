.PHONY: build
build: 
	dune build
	cp _build/default/bin/advent_of_code.exe advent_of_code.exe
	mv -f advent_of_code.exe advent_of_code

.PHONY: init
init: _opam/
	eval $(opam env)
	opam install dune ocaml-lsp-server ocamlformat 

.PHONY: clean
clean:
	-rm -rf ./_opam
	-rm -rf ./_build
	-rm -f advent_of_code

.PHONY: format
format:
	ocamlformat --inplace ./**/*.ml

_opam/:
	opam switch create ./ 5.4.1

_build/: _opam/
	dune build
