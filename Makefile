notes:
	pdflatex notes.tex
	biber notes
	pdflatex notes.tex

clean:
	rm -f notes.pdf notes.blg notes.aux notes.log notes.run.xml notes.bcf
