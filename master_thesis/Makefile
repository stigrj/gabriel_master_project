SHELL=/bin/bash

thesis=master_thesis

all:
	make thesis

thesis:
	pdflatex --shell-escape ${thesis}
	bibtex ${thesis}
	pdflatex --shell-escape ${thesis}
	pdflatex ${thesis}


quick:
	pdflatex --shell-escape ${thesis}


clean:
	rm -f *~ *.aux *.idx *.log *.bbl *.lol *.lof *.lot *.blg *-blx.bib *.out *.backup *.brf *.toc  *.bcf *.run.xml
