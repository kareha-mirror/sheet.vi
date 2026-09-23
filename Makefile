PDFS = vi-sheet1.pdf vi-sheet2.pdf

all: $(PDFS)

$(PDFS): style.tex logo.tex

.SUFFIXES: .tex .pdf

.tex.pdf:
	latexmk -lualatex $<

clean:
	latexmk -c

distclean:
	latexmk -C

.PHONY: all clean distclean
