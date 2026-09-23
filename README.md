# Mandelbrot

Running on a Raspberry PI...

	sudo apt install opam

Initialise OPAM

	opam init
	eval $(opam env)

The PI distribution has an old version of OCaml so get the latest version

	opam sw create 5.5.1
	eval $(opam env)

Install Dune build system

	opam install dune

This project uses the Graphics library so install that using OPAM

	opam install --deps-only .
	eval $(opam env)

Then run the project

	dune exec -- bin/mandelbrot.exe

