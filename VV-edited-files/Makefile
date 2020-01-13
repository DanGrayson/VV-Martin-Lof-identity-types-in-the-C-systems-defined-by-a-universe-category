all: 2015_05_24_From_a_univ_with_paths.pdf 2015_07_29_From_a_univ_with_paths.pdf 2017_09_18_From_a_univ_with_paths.pdf
# warning: latexmk does not signal an error if bibliography files are not found
%.pdf : %.tex
	latexmk -pdf $*
clean:; rm -f *.aux *.fls *.log *.out *.fdb_latexmk *.fls *.toc *.bbl *.blg *.pdf

2015_05_24_From_a_univ_with_paths.pdf: 
2015_07_29_From_a_univ_with_paths.pdf: ../alggeom.bib
2017_09_18_From_a_univ_with_paths.pdf: 
