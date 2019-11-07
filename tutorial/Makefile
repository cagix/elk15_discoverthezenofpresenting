
## Path to this repository (to be used as git sub-module)

PWD          = $(shell pwd)
DATADIR      = pandoc



## Source file and lecture prefix
## either defined here (all files) or given at cmd line like `make SRC=vl02.md`

SRC         ?= example.md
ID          ?= markdown

SLIDES       = $(SRC:%.md=${ID}_%.pdf)
HTML         = $(SRC:%.md=${ID}_%.html)
EPUB         = $(SRC:%.md=${ID}_%.epub)
TEX          = $(SRC:%.md=tex_%.pdf)


## Lecture options

OPTIONS        = -f markdown+smart
OPTIONS       += -V lang=de-DE
OPTIONS       += --strip-comments
OPTIONS       += --data-dir=${DATADIR}

BEAMEROPTIONS  = -t beamer
BEAMEROPTIONS += --slide-level=2
BEAMEROPTIONS += -V fontsize=smaller
BEAMEROPTIONS += -V theme=default -V colortheme=rose
BEAMEROPTIONS += --listings --highlight-style=tango
BEAMEROPTIONS += --include-in-header=${DATADIR}/definitions.tex
BEAMEROPTIONS += --pdf-engine=pdflatex
BEAMEROPTIONS += $(OPTIONS)

HTMLOPTIONS    = -t html
HTMLOPTIONS   += --standalone --self-contained
HTMLOPTIONS   += --toc --toc-depth=1
HTMLOPTIONS   += --highlight-style=tango
HTMLOPTIONS   += --css=${DATADIR}/html.css
HTMLOPTIONS   += --lua-filter=${DATADIR}/textohtml.lua
# works only for Firefox and Safari; for Chrome use --mathjax
HTMLOPTIONS   += --mathml
HTMLOPTIONS   += $(OPTIONS)

EPUBOPTIONS    = -t epub
EPUBOPTIONS   += --toc --toc-depth=1
EPUBOPTIONS   += --highlight-style=tango
EPUBOPTIONS   += --css=${DATADIR}/html.css
EPUBOPTIONS   += --lua-filter=${DATADIR}/textohtml.lua
EPUBOPTIONS   += --mathml
EPUBOPTIONS   += $(OPTIONS)



## Targets

all: $(SLIDES) $(HTML) $(EPUB) $(TEX)

${ID}_%.pdf: %.md
	$(PANDOC) ${BEAMEROPTIONS} -o $@ $^

${ID}_%.html: %.md
	$(PANDOC) ${HTMLOPTIONS} -o $@ $^

${ID}_%.epub: %.md
	$(PANDOC) ${EPUBOPTIONS} -o $@ $^

tex_%.pdf: %.tex
	pdflatex $^
	pdflatex $^
	mv $(SRC:%.md=%.pdf) $@


clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.vrb

distclean: clean
	rm -f $(SLIDES) $(HTML) $(EPUB) $(TEX)


.PHONY: all clean distclean
