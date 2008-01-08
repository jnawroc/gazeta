TEX_FILES=$(shell ls *.tex)
GFX=$(shell ls gfx/*)

gazeta.pdf: gazeta.tex $(TEX_FILES) $(GFX)
	pdflatex $<
	pdflatex $<
clean:
	rm -f *.aux *.lof *.log *.lot *.out *.toc *.pdf
.PHONY: clean

