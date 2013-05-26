#sysprog.pdf:	sysprog.tex
#		pdflatex sysprog.tex sysprog.pdf

sysprog.pdf:	sysprog.ps
		ps2pdf sysprog.ps sysprog.pdf
	
sysprog.ps:	sysprog.dvi
		dvips sysprog.dvi

sysprog.dvi:	sysprog.tex
		latex sysprog.tex; latex sysprog.tex
