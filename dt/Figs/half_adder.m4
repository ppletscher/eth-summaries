% schaltbilder.m4
.PS
cct_init

ifdef(`AND_gate',,`include(HOMELIB_`'liblog.m4)')

#	define(`elen_',linewid*0.8)

	line down_ 1/2*elen_;
	{
		move up_ 4/6*elen_;
		"a" ljust;
	}
	dot;
	{	
		line down_ 1/4*elen_;
A:		AND_gate(2) with .In2 at Here;
	}
	line right_ 1/2*elen_;
	line down_ 1/4*elen_;
X:	XOR_gate(2) with .In2 at Here;

	move to X.In1;
	line up_ 1/3*elen_;
	dot;
	{
		line left_ 1/2*elen_;
		line to A.In1;
	}
	line up_ 5/12*elen_;
	move up_ 1/6*elen_;
	"b" ljust;

	move to A.Out;
	line down_ 1/4*elen_;

	move down_ 1/8*elen_;
	"o" ljust;
	
	move to X.Out;
	line down_  1/4*elen_-(A.Out.y - X.Out.y);
	move down_ 1/8*elen_;
	"s" ljust;
	
	
	
	
.PE
