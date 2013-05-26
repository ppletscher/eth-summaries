% thevenin_norton.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults
                                                                                                                       
Orig:	circle radius 0.02;
	move left_ 0.04;
	{
		move down_ 1/8*elen_;
		move right_ 1/8*elen_;
		"b" ljust;
	}
	line left_ 2/3*elen_;
	dot;
	{
		line up_ 1/4*elen_;
		line left_ 2/5*elen_;
		line up_ 1/2*elen_;
		line right_ 4/5*elen_;
		line down_ 1/2*elen_;
		line left_ 2/5*elen_;
		{
			move left_ 1/3*elen_;
			move up_ 1/3*elen_;
			"\scriptsize Beliebiges" ljust;
			move down_ 1/6*elen_;
			move right_ 1/35*elen_;
			"\scriptsize Netzwerk" ljust;
		}
		move up_ 1/2*elen_;
		line up_ 1/4*elen_;
		dot;
	}
	line left_ elen_;
	source(up_ elen_, V);
	rlabel(,U_T,)
	line right_ elen_;
	line right_ 2/3*elen_;

	{
		move left_ 1/6*elen_;
		move up_ 1/8*elen_;
		line left_ 9/5*elen_;
		line down_ 10/8*elen_;
		line right_ 9/5*elen_;
		line up_ 10/8*elen_;
	}

	{
		circle radius 0.02;
		move up_ 1/8*elen_;
		move right_ 1/8*elen_;
		"a" ljust;
	}

	move down_ 1/2*elen_;
	move right_ 1/4*elen_;

	arrow right_ 1/3*elen_;
	move 1/3*elen_;
	
	move down_ 1/2*elen_;
	move right_ 2/3*elen_;

	move right_ 0.04;

	circle radius 0.02;
	move left_ 0.04;
	{
		move down_ 1/8*elen_;
		move right_ 1/8*elen_;
		"b" ljust;
	}

	line left_ 2/3*elen_;
	source(up_ elen_, V);
	rlabel(,U_T,);
	line right_ 2/3*elen_;
	
	{
		circle radius 0.02;
		move up_ 1/8*elen_;
		move right_ 1/8*elen_;
		"a" ljust;
	}
	{
		move left_ 1/6*elen_;
		move up_ 1/8*elen_;
		line left_ 3/4*elen_;
		line down_ 10/8*elen_;
		line right_ 3/4*elen_;
		line up_ 10/8*elen_;
	}

   
.PE                            # Pic input ends

