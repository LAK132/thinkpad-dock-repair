#! /bin/sh
mkdir -p build
pandoc --from=latex --to=html --standalone --output=build/index.html --bibliography=bibliography.bib main.tex
