all: output/McDonnell_CV_acad.pdf

output/McDonnell_CV_acad.pdf: CV_academic.tex
	pdflatex -output-directory=output -jobname=McDonnell_CV_acad CV_academic.tex
