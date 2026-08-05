TEXS = vi-sheet1 vi-sheet2

PDFS = $(TEXS:%=%.pdf)

all: $(PDFS)

%.pdf: %.tex style.tex logo.tex
	latexmk -lualatex $<

clean:
	latexmk -c

distclean:
	latexmk -C

.PHONY: all clean distclean
