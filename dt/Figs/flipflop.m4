% schaltbilder.m4
.PS
cct_init

ifdef(`L_unit',,`include(HOMELIB_`'liblog.m4)')

F1:	FlipFlop4(, DQCKnNQ);

	move to F1.PinQ.end;
	"\ Zustand" ljust;
	
	move to F1.PinNQ.end;
	"\ neg. Zustand" ljust;

	move to F1.PinD.end;
	"Eingang \ " rjust;

	move to F1.PinCK.end;
	"Takt \ " rjust;


.PE
