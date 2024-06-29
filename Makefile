democracy.pdf: democracy.tex democracy.bcf
	pdflatex democracy.tex
	pdflatex democracy.tex

democracy.bcf: democracy.tex yes.bib
	pdflatex democracy.tex
	biber democracy
