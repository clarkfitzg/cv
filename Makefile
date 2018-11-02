BIBFILES = $(wildcard *.bib)

%.aux: %.tex $(BIBFILES)
	pdflatex $<
	bibtex $@

%.pdf: %.tex %.aux
	pdflatex $<
	pdflatex $<

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.pdf
