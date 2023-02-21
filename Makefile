DATE=$(shell date)

notes:
	pdflatex notes.tex
	biber notes
	pdflatex notes.tex

clean:
	rm -f notes.pdf notes.blg notes.aux notes.log notes.run.xml notes.bcf

commit: notes.tex references.bib Makefile
	git pull
	git add notes.tex references.bib Makefile
	git commit -m "$(DATE)"
	git push