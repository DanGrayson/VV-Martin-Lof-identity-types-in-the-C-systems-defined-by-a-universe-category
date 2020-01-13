all: From_a_univ_with_paths.pdf
From_a_univ_with_paths.pdf: alggeom.bib
# warning: latexmk does not signal an error if bibliography files are not found
%.pdf : %.tex
	latexmk -pdf $*
clean:; rm -f *.aux *.fls *.log *.out *.fdb_latexmk *.fls *.toc *.bbl *.blg *.pdf
diff :
	diff VV-original-files/2015_05_24_From_a_univ_with_paths.tex From_a_univ_with_paths.tex || true
