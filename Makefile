bachelor:
	lualatex sample-bachelor.tex
	-bibtex  sample-bachelor.aux
	lualatex sample-bachelor.tex
	lualatex sample-bachelor.tex
master:
	lualatex sample-master.tex
	-bibtex  sample-master.aux
	lualatex sample-master.tex
	lualatex sample-master.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm
depclean: clean
	rm -rf *.pdf
