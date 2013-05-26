% schaltbilder.m4
.PS
cct_init

O:	line right_ 1/4*elen_;
	{
		move left_ 1/4*elen_;
		move up_ 1/10*elen_;
		"in" ljust;
	}

	{
		line up_ 1/2*elen_;
C0:		c_fet(up_ elen_, ,P) with .G at Here;
		move to C0.D;
		line left_ to (O.x, Here.y);
		move down_ 1/8*elen_;
		"VDD" ljust;
	}

	line down_ 1/2*elen_;
C1:	c_fet(up_ elen_) with .G at Here;

	move to C1.S;
	line left_ to (O.x, Here.y);

	move to C0.S;
C2:	c_fet(right_ elen_, ,P) with .S at Here;
C3:	c_fet(right_ elen_,R) with .S at C0.S;

	move to C2.D;
	move up_ 1/10*elen_;
	"out" rjust;

	move to C2.G;
	" not en" ljust;
	
	move to C3.G;
	" en" ljust;

	move to C0.D;
	line right_ to (C3.D.x, Here.y);

	move to C1.S;
	line right to (C3.D.x, Here.y);

.PE
