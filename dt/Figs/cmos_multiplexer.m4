% schaltbilder.m4
.PS
cct_init


O:	{
		move left_ 1/4*elen_;
		move up_ 1/10*elen_;
		"x" ljust;
	}
C1:	c_fet(right_ elen_, ,P) with .S at O;
C2:	c_fet(right_ elen_,R) with .S at O;
	
	move to C1.G;
	" z" ljust;
	
	move to C2.G;
	" not z" ljust;

	move to C1.D;
	line down_ 1/2*elen_;
	{
		line right_ 1/2*elen_;
		move up_ 1/10*elen_;
		"out" rjust;
	}

	line down_ 1/2*elen_;

C4:	c_fet(left_ elen_,R,P) with .S at Here;
C3:	c_fet(left_ elen_) with .S at C4.S;
	
	move to C3.G;
	" z" ljust;
	
	move to C4.G;
	" not z" ljust;

	move to C4.D;
	move up 1/10*elen_;
	"y" ljust;

.PE
