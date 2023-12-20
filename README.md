# Mandelbrot

Running on a Raspberry PI...

	sudo apt install opam

Initialise OPAM

	opam init
	eval $(opam env)

The PI distribution has OCaml 4.05 so get the latest version

	opam sw create 4.14.1
	eval $(opam env)

Install Dune build system

	opam install dune

This project uses the Graphics library so install that using OPAM

	opam install --deps-only .
	eval $(opam env)

Then run the project

	dune exec -- bin/mandelbrot.exe

