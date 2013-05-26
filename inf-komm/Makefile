pyx= groessen_drei_ZV.eps binaere_entropiefkt.eps

vpath %.py pyx

inf-komm.pdf:	inf-komm.ps
		ps2pdf inf-komm.ps inf-komm.pdf
	
inf-komm.ps:	inf-komm.dvi
		dvips inf-komm.dvi

inf-komm.dvi:	inf-komm.tex $(pyx)
		latex inf-komm.tex; makeindex -l inf-komm.idx; latex inf-komm.tex

%.eps:		%.py
		python $<; mv $@ pyx
