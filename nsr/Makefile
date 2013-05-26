figures= newton_1d.tex

# *.gnuplot files may be in ./Figs
#vpath %.gnuplot Figs

#nsr.pdf:	nsr.tex $(figures)
#		pdflatex nsr.tex; makeindex -l nsr.idx; pdflatex nsr.tex;

nsr.pdf:	nsr.ps
		ps2pdf nsr.ps nsr.pdf
	
nsr.ps:		nsr.dvi
		dvips nsr.dvi

nsr.dvi:	nsr.tex
		latex nsr.tex; makeindex -l nsr.idx; latex nsr.tex

#%.tex:		%.gnuplot
#		gnuplot $< ; mv $@ Figs;
