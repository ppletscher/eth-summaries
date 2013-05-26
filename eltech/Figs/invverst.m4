% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	line up_ elen_;
	resistor(right_ elen_, E);
	llabel(,R_S,);
	b_current(i_S);
	circle radius 0.02;
	{
		move down_ 1/6*elen_;
		arrow down_ 2/3*elen_;
		move up_ 1/3*elen_;
		move right_ 0.04;
		"$0$" ljust;
	}
	resistor(right_ elen_, E);
	llabel(,R_f,);
	b_current(-i_f);
	circle radius 0.02;
	{
		move down_ 1/6*elen_;
		arrow down_ 2/3*elen_;
		move up_ 1/3*elen_;
		move right_ 0.04;
		"$u_O$" ljust;
	}
		
	
	
.PE                            # Pic input ends
