% thevenin_norton.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults
                                                                                                                       
Orig:	circle radius 0.02;
	move left_ 0.04;
	{
		move down_ 1/8*elen_;
		move right_ 1/8*elen_;
		"B" ljust;
	}
	line left_ 1/2*elen_;
	dot;
	{
		resistor(up_ elen_, E);
		dot;
	}
	line left_ elen_;
	source(up_ elen_, V);
	larrow(20 V, <-);
	resistor(right_ elen_, E);
	line right_ 1/2*elen_;

	{
		circle radius 0.02;
		move up_ 1/8*elen_;
		move right_ 1/8*elen_;
		"A" ljust;
	}


	move down_ 1/8*elen_;
	arrow down_ 6/8*elen_;
	move up_ 3/8*elen_;
	move right_ 1/8*elen_;
	"$U_L$" ljust;
   
.PE                            # Pic input ends

