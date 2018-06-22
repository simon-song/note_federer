all: note_federer.pdf

note_federer.pdf: note_federer.tex text/*.tex
	pdflatex note_federer
	makeindex note_federer.idx
	pdflatex note_federer
	pdflatex note_federer
	pdflatex note_federer

clean:
	rm.exe -f *.aux *.dvi *.idx *.ilg *.ind *.lof *.log *.lot *.out *.toc *~
	rm.exe -f note_federer.pdf
	rm.exe -f text/*.aux 

