#! /bin/sh
mkdir -p build

# alternatively use `pandoc --self-contained` to have everything embedded
# directly in the html output
cp -r images build/
cp style.css build/

pandoc \
  --from=latex \
  --to=html \
  --standalone \
  --number-sections \
  --table-of-contents \
  --listings \
  --metadata=link-citations:true \
  --output=build/index.html \
  --bibliography=bibliography.bib \
  --csl=acm-sigchi-proceedings.csl \
  --css=style.css \
  --lua-filter=filter.lua \
  main.tex
