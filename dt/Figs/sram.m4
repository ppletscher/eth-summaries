% sram.m4
.PS
cct_init

ifdef(`AND_gate',,`include(HOMELIB_`'liblog.m4)')

	dot;
	right_;
	{
B:		line down_ 1/4*elen_;
		move down_ 1/5*elen_;
		move left_ 1/7*elen_;
		"Data" ljust
	}
F1:	c_fet(right_ elen_,,) with .S at Here;


	move to F1.D;
	line right_ 1/3*elen_;
	dot;
	line right_ 2/3*elen_;
N1:	NOT_gate(up_);
	dot;
	{
		line left_ 2/3*elen_;
N2:		NOT_gate(down_);
	}
F2:	c_fet(right_ elen_,,) with .S at Here;
	
	move to F2.G;
	line up_ 1/4*elen_;
T:	dot;

	move to F2.D;
	dot;
	line down_ to (Here.x, B.y-1/4*elen_);

	move down_ 1/5*elen_;
	move left_ 1/7*elen_;
	"$\overline{\text{Data}}$" ljust;

	move to F2.D;
	line up_ to (Here.x, T.y+1/4*elen_);

	move down_ 1/4*elen_;
	move right_ 1/4*elen_;

	line left_ to (B.x - 1/4*elen_, Here.y);
	{
		move to (F1.G.x, Here.y);
		dot;
		line down to F1.G;
	}
	{
		"Address Line" rjust;
	}
	move right_ 1/4*elen_;
	move up_ 1/4*elen_;
	line to B;

	

.PE
