% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, AC);
	line right_ 3/4*elen_;
	dot;
	{
		move down_ elen_;
		dot;
		line up_ 1/4*elen_;
		diode(right_ 1/2*elen_);
		line to (Here.x+1/4*elen_, Here.y+3/4*elen_);
	}
	diode(right_ 1/2*elen_);
	line right_ 1/4*elen_;
	llabel(,D,);
	dot;
	{
		move down_ elen_;
		dot;
		line to (Here.x-1/4*elen_, Here.y+3/4*elen_);
		diode(left_ 1/2*elen_);
		line up_ 1/4*elen_;
	}
	line right_ 3/4*elen_;
	{
		move left_ 11/16*elen_;
		move down_ 1/6*elen_;
		arrow down_ 2/3*elen_;
		move right_ 3/8*elen_;
		move up_ 1/3*elen_;
		"$u(t)$" rjust;
	}
	resistor(down_ elen_, E);
	llabel(,R,);
	line left_ elen_;
	diode(left_ 1/2*elen_);
	line left_ 1/2*elen_;
	{
		move up_ 5/6*elen_;
		arrow down_ 2/3*elen_;
		move right_ 1/2*elen_;
		move up_ 1/3*elen_;
		"$u_q(t)$" rjust;
	}
	line to Origin;
.PE                            # Pic input ends
