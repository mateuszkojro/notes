DATE=$(shell date)

notes.pdf: notes.md
	pandoc --from=markdown --to=pdf notes.md -o notes.pdf

notes.html: notes.md
	pandoc --from=markdown --to=html notes.md -o notes.html

clean:
	rm -f notes.pdf notes.blg notes.aux notes.log notes.run.xml notes.bcf

commit: notes.md notes.tex references.bib Makefile
	git pull
	git add notes.md notes.tex references.bib Makefile
	git commit -m "$(DATE)"
	git push
