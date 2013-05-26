% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	line right_ 1/2*elen_;
	dot;
	{
		line up_ 1/3*elen_;
		resistor(right_ elen_, E);
		llabel(,G_1,);
		b_current(I_1);
		line down_ 1/3*elen_;
	}
P1:	line down_ 1/3*elen_;
	resistor(right_ elen_, E);
	llabel(,G_2,);
	b_current(I_2);
	{
P2:		Here;
		move to (P1.x+1/5*elen_, Here.y-1/4*elen_);
		arrow to (P2.x-1/5*elen_, P2.y-1/4*elen_);
		move to (1/2*P1.x+1/2*P2.x, Here.y-1/4*elen_);
		"$U$" rjust;
	}
	line up_ 1/3*elen_;
	dot;
	line right_ 1/2*elen_;
	
.PE                            # Pic input ends
