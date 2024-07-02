.PHONY default

default: jl.pdf

democracy.pdf: democracy.tex democracy.bbl
	pdflatex democracy.tex
	pdflatex democracy.tex

democracy.bcf: democracy.tex
	pdflatex democracy.tex

democracy.bbl: democracy.bcf yes.bib
	biber democracy
