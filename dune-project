(lang dune 3.3)

(name mandelbrot)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Mark Elvers")

(maintainers "Mark Elvers")

(license MIT)

(documentation https://github.com/mtelvers/mandelbrot)

(package
 (name mandelbrot)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune graphics)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
