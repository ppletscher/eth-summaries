% schaltbilder.m4
.PS
cct_init

ifdef(`AND_gate',,`include(HOMELIB_`'liblog.m4)')

N:	NOT_gate;

	move to N.In1;
	line left_ 1/6*elen_;

	move to N.Out;
	line right_ 1/6*elen_;
	

.PE
