default: jl.pdf

%.pdf: %.tex %.bbl
	pdflatex $(shell basename $@ .pdf)
	pdflatex $(shell basename $@ .pdf)

%.bcf: %.tex
	pdflatex $<

%.bbl: %.bcf yes.bib
	biber $(shell basename $@ .bbl)
