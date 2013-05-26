% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, AC);
	line right_ 1/4*elen_;
	line right_ 1/4*elen_;
	diode(right_ 3/4*elen_);
	rlabel(,D,);
	dot;
	{
		line right_ 1/4*elen_;
		{
			move down_ 1/6*elen_;
			arrow down_ 2/3*elen_;
			move up_ 1/3*elen_;
			move right_ 1/2*elen_;
			"$u(t)$" rjust;
		}
		line right_ 3/4*elen_;
		resistor(down_ elen_, E);
		llabel(,R,);
		line left_ elen_;
		
	}
	capacitor(down_ elen_);
	rlabel(,C,);
	dot;
	line left_ to (Origin.x+1/4*elen_+0.04,Here.y);
	{
		move up_ 5/6*elen_;
		arrow down_ 2/3*elen_;
		move right_ 1/2*elen_;
		move up_ 1/3*elen_;
		"$u_q(t)$" rjust;
	}
	line to Origin;
.PE                            # Pic input ends
