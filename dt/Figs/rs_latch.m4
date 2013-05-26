% schaltbilder.m4
.PS
cct_init

ifdef(`AND_gate',,`include(HOMELIB_`'liblog.m4)')

NA1:	NAND_gate(2);

	move to NA1.In1;
	line left_ 1/2*elen_;
	move left_ 1/8*elen_;
	"R" rjust;

	move to NA1.Out;
	line right_ 1/6*elen_;
	dot;
	{
		line down_ 1/3*elen_;
	}
	line right_ 1/2*elen_;
	move right_ 1/8*elen_;
	"Q" ljust;
	
	move to NA1.In2;
	line left_ 1/6*elen_;
T:	line down_ 0.23*elen_;

	line to (NA1.Out.x + 1/6*elen_, Here.y - 1/3*elen_);

	line down_ 1/3*elen_;
	dot;
	{
		line right_ 1/2*elen_;
		move right_ 1/8*elen_;
		"$\overline{Q}$" ljust;
	}
	line left_ 1/6*elen_;
	right_;

NA2:	NAND_gate(2) with .Out at Here;
	
	move to NA2.In2;
	line left_ 1/2*elen_;
	move left_ 1/8*elen_;
	"S" rjust;

	move to NA2.In1;
	line left_ 1/6*elen_;
	line up_ 0.23*elen_;
	line to (NA1.Out.x + 1/6*elen_, Here.y + 1/3*elen_);

	


	

.PE
