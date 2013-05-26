# Variables
CCT_POS= circuit_macros/libcct.m4
latexfile= eltech
figures= quellen.tex quellenumwandlung.tex spannungsteiler.tex stromteilerregel.tex stern_dreieck.tex stern_dreieck2.tex thevenin_norton.tex superposition.tex knotenmethode.tex knotenmethode2.tex maschenmethode.tex RC_Serie.tex entladung.tex zweitor.tex einweggleichrichter.tex brueckengleichrichter.tex oder_schaltung.tex transistor.tex grosssignal_ersatz.tex kleinsignal_ersatz.tex grosssignal_ersatz_aktiv.tex emitterschaltung.tex ersatz_emmiterschaltung.tex ersatz2_emmiterschaltung.tex kollektorschaltung.tex opamp.tex opamp2.tex opamp_invverst.tex invverst.tex opamp_sub.tex opamp_int.tex opamp_diff.tex digi_inverter.tex digi_nor.tex digi_nand.tex eingangsimpedanz.tex thev_norton_bsp_1.tex thev_norton_bsp_2.tex thev_norton_bsp_3.tex quellenumwandlung_bsp1.tex quellenumwandlung_bsp2.tex vereinfachung_spannungsquelle.tex vereinfachung_stromquelle.tex stern_dreieck_bsp.tex stern_dreieck_bsp2.tex opamp_vorgehen1.tex opamp_vorgehen2.tex opamp_ninvverst.tex opamp_addierer.tex
graphs= zenerdiode.eps parallel_RC_an_stromquelle.eps parallel_RL_an_stromquelle.eps serie_RC_an_spannungsquelle.eps serie_RL_an_spannungsquelle.eps leistung.eps resonanzkreis.eps hochpass.eps tiefpass.eps kennlinie_transistor.eps uebertragungscharakteristik_opamp.eps

# *.m4 files may be in ./Figs
vpath %.m4 Figs
vpath %.py pyx


$(latexfile).pdf:	$(latexfile).ps
			ps2pdf $(latexfile).ps $(latexfile).pdf

$(latexfile).ps:	$(latexfile).dvi
			dvips $(latexfile).dvi

$(latexfile).dvi:	$(latexfile).tex $(figures) $(graphs)
			latex $(latexfile).tex; makeindex -l $(latexfile).idx; latex $(latexfile).tex

%.eps:			%.py
			python $<; mv $@ pyx

%.tex:			%.pic
			gpic -t $< > Figs/$@

%.pic:			%.m4
			m4 $(CCT_POS) $<  > $@
