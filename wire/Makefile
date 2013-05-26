wire.pdf:	wire.tex
		./ps4pdf wire

out1.pdf:	~/ETH/3rd/nsr/zusammenfassung/nsr.pdf wire.pdf
		pdftk ~/ETH/3rd/nsr/zusammenfassung/nsr.pdf wire.pdf cat output out1.pdf

exam:		out1.pdf
		acroread -toPostScript -size a4 -landscape -level2 out1.pdf;
		psnup -2 -pa4 -Pa4 -d out1.ps out1_2up.ps;
		ps2pdf out1_2up.ps exam.pdf;
		rm out1.pdf out1_2up.ps out1.ps;
