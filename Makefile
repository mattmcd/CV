all: output/CV_MMcDonnell.pdf

output/CV_MMcDonnell.pdf: CV_MMcDonnell.tex
	pdflatex -output-directory=output CV_MMcDonnell.tex

clean:
	rm -f output/*
