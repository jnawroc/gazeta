TEX_FILES=$(shell ls *.tex)
GFX=$(shell ls gfx/*)

gazeta.pdf: gazeta.tex $(TEX_FILES) $(GFX)
	touch dlugosc.tex
	pdflatex $<
	pdflatex $<
	ls -kl $@ | cut -d" " -f5 > dlugosc.tex
	pdflatex $<
	rm dlugosc.tex
clean:
	rm -f *.aux *.lof *.log *.lot *.out *.toc *.pdf
.PHONY: clean

