CCT_POS= circuit_macros/libcct.m4

figures= schaltbilder.tex cmos_inverter.tex cmos_nor.tex cmos_nand.tex cmos_multiplexer.tex cmos_threestate.tex or_gatter.tex nor_gatter.tex and_gatter.tex nand_gatter.tex xor_gatter.tex xnor_gatter.tex implikation_gatter.tex not_gatter.tex flipflop.tex half_adder.tex rs_latch.tex sram.tex dram.tex

vpath %.m4 Figs

dt.pdf:		dt.ps
		ps2pdf dt.ps

dt.ps:		dt.dvi
		dvips dt.dvi
	
dt.dvi:		dt.tex $(figures)
		latex dt.tex

%.tex:		%.pic
		gpic -t $< > Figs/$@
		
%.pic:		%.m4
		m4 $(CCT_POS) $<  > $@
