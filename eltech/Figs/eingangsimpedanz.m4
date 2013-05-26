% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, AC);
	rlabel(,\underline{U}_q,);
	resistor(right_ elen_, E);
	llabel(,R,);
	tline(right_ 3*elen_, , 5/2*elen_);
	resistor(down_ elen_, E);
	llabel(,R_L,);
	tline(left_ 3*elen_, , 5/2*elen_);
	{
		move right_ elen_;
		move up_ 1/2*elen_;
		"$R, \beta, \alpha = 0$" ljust;
	}
	{
		move right_ 1/4*elen_;
		{
			line down_ 1/3*elen_;
			move down_ 0.08;
			"$-l$" ljust;
		}
		move down_ 1/4*elen_;
		move left_ 1/4*elen_;
		arrow right_ 3*elen_;
		{
			move left_ 1/4*elen_;
			move up_ 1/4*elen_;
			line down_ 1/3*elen_;
			move down_ 0.08;
			"$0$" ljust;
		}
		move right_ 0.04;
		"$z$" ljust;
	}
	line to Origin;

	


.PE                            # Pic input ends
