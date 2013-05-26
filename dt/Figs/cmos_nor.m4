% cmos_nor.m4
.PS
cct_init

O:	line right_ 1/2*elen_;
	{
		move left_ 1/2*elen_;
		move up_ 1/10*elen_;
		"x" ljust;
	}
	{
		line up_ elen_;
		line right_ 1/4*elen_;
C0:		c_fet(up_ elen_,,P) with .G at Here;
		move to C0.D;
		move down_ 1/4*elen_;
C3:		c_fet(up_ elen_,R,P) with .S at Here;
		move to C3.D;
		line left_ to (O.x,Here.y);
		move down_ 1/8*elen_;
		"VDD" ljust;
	}
	{
C1:		c_fet(up_ elen_);
		move to C1.S
		line left_ to (O.x,Here.y)
		move up_ 1/10*elen_;
		"GND" ljust;
		move to C1.D;
		line right_ 1/4*elen_;
		{
			line up_ 1/4*elen_;
			dot;
			line right_ 2/3*elen_;
			move up_ 1/10*elen_;
			"x nor y" rjust;
		}
		line right_ 1/4*elen_;
C2:		c_fet(up_ elen_, R) with .D at Here;
		move to C2.S;
		line left_ to C1.S;
		
	}

	move to C2.G;
	line right_ 1/2*elen_;
	line up_ to (Here.x, C3.G.y);
	{
		line left_ to C3.G;
	}
E:	line right_ 1/3*elen_;
	move down_ 1/8*elen_;
	"y" ljust;

	move to C3.D;
	line right_ to (E.x+1/3*elen_, Here.y);

	move to C2.S;
	line right_ to (E.x+1/3*elen_, Here.y);

.PE
