.PHONY: clean

default: moral.pdf

%.pdf: %.tex %.bbl
	pdflatex $(shell basename $@ .pdf)
	pdflatex $(shell basename $@ .pdf)

%.bcf: %.tex
	pdflatex $<

%.bbl: %.bcf %.bib
	biber $(shell basename $@ .bbl)

clean:
	rm *.aux *.blg *.log *.run.xml *.pdf
