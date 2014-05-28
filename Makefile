all:
	pdflatex -shell-escape thesis
	bibtex thesis || true
	pdflatex -shell-escape thesis
	pdflatex -shell-escape thesis

wc:
	pdftotext thesis.pdf - | egrep -E '\w\w\w+' | iconv -f ISO-8859-15 -t UTF-8 | wc --chars

clean:
	rm -f *.aux *.bbl *.blg *.log *.toc *.out thesis.pdf
