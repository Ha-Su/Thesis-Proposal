DOC=main

pdf:
	@ echo 'Build main PDF'
	@ latexmk -pdf -pdflatex="pdflatex -synctex=1 -shell-escape %O %S" $(DOC)

clean:
	@ echo 'Clean'
	@ find . \( -name '*.bbl' -or -name '*.blg' -or -name '*.log' -or -name '*.aux' -or -name '*.out' -or -name '*.synctex.gz' -or -name '*.synctex.gz(busy)' -or -name '*.auxlock' -or -name '*.fdb_latexmk' -or -name '*.fls' \) -type f -delete
	@ rm -f $(DOC).pdf

.PHONY: all clean
