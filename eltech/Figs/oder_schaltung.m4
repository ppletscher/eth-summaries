% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	diode(right_ elen_);
	llabel(,D_1,);
	line down_ 4/10*elen_;
	dot;
	move left_ 3/4*elen_;
	diode(right_ 3/4*elen_);
	rlabel(,D_2,);
	dot;
	line down_ 1/10*elen_;
	dot;
	{
		line right_ elen_;
		move down_ 1/6*elen_;
		arrow down_ 2/3*elen_;
		move up_ 1/3*elen_;
		move right_ 1/4*elen_;
		"$u$" rjust;
	}
	resistor(down_ elen_, E);
	llabel(,R,);
	dot;
	{
		line right_ elen_;
	}
	line left_ elen_;
	{
		move up_ 11/8*elen_;
A1:		arrow down_ 5/4*elen_;
		move up_ 5/8*elen_;
		move right_ 1/4*elen_;
		"$u_1$" rjust;
	}
	{
		move right_ 1/4*elen_;
		move up_ elen_;
		arrow down_ to (Here.x,A1.y-5/4*elen_);
		move up_ 5/8*elen_;
		move right_ 1/4*elen_;
		"$u_2$" rjust;
	}
.PE                            # Pic input ends
