% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:		circle radius 0.02;
		move left_ 0.02;
		move down_ 0.02;
		line down_ 1/3*elen_;
#		b_current(i);
		dot;
		{
			line left_ 1/3*elen_;
			capacitor(down_ elen_);
			llabel(,C,);
			line right_ 1/3*elen_;
			dot;
		}
		line right_ 1/3*elen_;
		resistor(down_ elen_, E);
		llabel(,R,);
		b_current(i_R);
		{
			move to (Here.x + 1/3*elen_,Here.y+5/6*elen_);
			arrow to (Here.x, Here.y-2/3*elen_);
			move right_ 1/5*elen_;
			move up_ 1/3*elen_;
			"u(t)";
		}
		line left_ 1/3*elen_;
		line down_ 1/3*elen_;
		circle radius 0.02;
		
.PE                            # Pic input ends
