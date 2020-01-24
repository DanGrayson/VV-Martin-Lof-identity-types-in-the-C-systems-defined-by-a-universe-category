all: From_a_univ_with_paths.pdf
From_a_univ_with_paths.pdf: alggeom.bib
# warning: latexmk does not signal an error if bibliography files are not found
%.pdf : %.tex
	latexmk -pdf $*
	rm $@
	makeglossaries $*
	latexmk -pdf $*
clean:; rm -f *.aux *.fls *.log *.out *.fdb_latexmk *.fls *.toc *.bbl *.blg From_a_univ_with_paths.pdf *.cn-gl* *.ist *.op-gl*
diff :
	diff VV-original-files/From_a_univ_with_paths_current.tex From_a_univ_with_paths.tex || true
