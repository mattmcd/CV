all: output/CV_MMcDonnell.pdf output/CV_MatthewMcDonnell.docx output_old/CV_MMcDonnell_old.pdf

output_old/CV_MMcDonnell_old.pdf: CV_MMcDonnell_old.tex
	pdflatex -output-directory=output_old CV_MMcDonnell_old.tex

output/CV_MMcDonnell.pdf: README.md
	pandoc -V geometry:margin=1in -V pagestyle:empty -V block-headings -V fontsize:10pt -V colorlinks=true README.md -o output/CV_MMcDonnell.pdf

output/CV_MatthewMcDonnell.docx: README.md
	pandoc README.md -o output/CV_MatthewMcDonnell.docx

CV_MMcDonnell_from_md.tex: README.md
	pandoc -f markdown -t latex README.md -o CV_MMcDonnell_from_md.tex

clean:
	rm -f output/*
	rm -f output_old/*
