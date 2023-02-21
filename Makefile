DATE=$(shell date)

notes:
	pdflatex notes.tex
	biber notes
	pdflatex notes.tex

clean:
	rm -f notes.pdf notes.blg notes.aux notes.log notes.run.xml notes.bcf

commit:
	git pull
	git add notes.tex references.bib Makefile
	git commit -m "$(DATE)"
	git tag -a "$(DATE)" -m "$(DATE)"
	git push
	git push --tags