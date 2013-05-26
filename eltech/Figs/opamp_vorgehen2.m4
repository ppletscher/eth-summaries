% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	#ground;
	line up_ elen_;
	resistor(right_ 4/3*elen_, E);
	llabel(,R_1,);
	b_current(I_{i});
	circle radius 0.02;
	{
		move left_ 0.02;
		move down_ 1/6*elen_;
		arrow down_ 4/6*elen_;
		move up_ 2/6*elen_;
		move right_ 1/10*elen_;
		"$U_+$" ljust;
	}
	resistor(right_ 4/3*elen_, E);
	llabel(,2R_1,);
	b_current(I_{o});
	circle radius 0.02;
	{
		move left_ 0.02;
		move down_ 1/6*elen_;
		arrow down_ 4/6*elen_;
		move up_ 2/6*elen_;
		move right_ 1/10*elen_;
		"$U_0$" ljust;
	}

	
.PE                            # Pic input ends
