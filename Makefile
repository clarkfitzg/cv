BIBFILES = $(wildcard *.bib)

%.pdf: %.tex
	latexmk -pdf $<


#%.aux: %.tex $(BIBFILES)
#	pdflatex $<
#	bibtex $@
#
#%.pdf: %.tex %.aux
#	pdflatex $<
#	pdflatex $<
#
clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.pdf
