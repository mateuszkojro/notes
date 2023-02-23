DATE=$(shell date)

notes.pdf: notes.md
	pandoc --from=markdown --to=pdf notes.md -o notes.pdf

# notes.pdf: notes.pdf
# 	pdflatex notes.tex
# 	biber notes
# 	pdflatex notes.tex

clean:
	rm -f notes.pdf notes.blg notes.aux notes.log notes.run.xml notes.bcf

commit: notes.md notes.tex references.bib Makefile
	git pull
	git add notes.md notes.tex references.bib Makefile
	git commit -m "$(DATE)"
	git push