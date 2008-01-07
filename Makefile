TEX_FILES=$(shell ls *.tex)
GFX=$(shell ls gfx/*)

gazeta.pdf: gazeta.tex $(TEX_FILES) $(GFX)
	pdflatex $<
clean:
	rm -f *.aux *.log *.toc *.pdf
.PHONY: clean

