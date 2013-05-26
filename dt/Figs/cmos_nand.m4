% schaltbilder.m4
.PS
cct_init

	right_;
O:	line right_ 1/3*elen_;
	{
		move to O;
		move up_ 1/10*elen_;
		"x" ljust;
	}
C0:	c_fet(up_ elen_, ,P) with .G at Here;
	move to C0.D;
	{
		line left_ to (O.x, Here.y);
		move down_ 1/8*elen_;
		"VDD" ljust;
	}
	line right_ 2/3*elen_;
C1:	c_fet(up_ elen_, R, P) with .D at Here;
	move to C1.S;
	line left_ 1/3*elen_;
	{
		line left_ 1/3*elen_;
	}
C2:	c_fet(up_ elen_) with .D at Here;

	move to C2.G;

	line left_ 1/3*elen_;
	line up_ to C0.G;
	
	move to C2.D;
	move down_ 1/6*elen_;
	dot;
	line right_ elen_;
	move up_ 1/15*elen_;
	"x nand y" rjust;

	move to C2.S;
	move up_ 1/3*elen_;
C3:	c_fet(up_ elen_, R) with .D at Here;

	move to C3.S;
	line left_ to (O.x, Here.y);
	move up_ 1/10*elen_;
	"GND" ljust;

	move to C3.G;
	line right_ elen_;
	line up_ to (Here.x, C1.G.y);
	{
		line left_ to C1.G;
	}
E:	line right_ 1/3*elen_;
	move up_ 1/10*elen_;
	"y" rjust;

	move to C1.D;
	line right_ to (E.x+1/3*elen_, Here.y);
	
	move to C3.S;
	line right_ to (E.x+1/3*elen_, Here.y);
	
.PE
