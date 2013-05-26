% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, AC);
	rlabel(,u_1,);
	line right_ 1/2*elen_;
	circle radius 0.02;
	capacitor(right_ elen_);
	rlabel(,C,);
D1:	dot;
	line right_ 1/2*elen_;
	b_current(I_B);
T1:	bi_tr(up_ elen_);
	move to D1;
	resistor(up_ 3/2*elen_, E);
	llabel(,R_B,);
	line to (T1.C.x, Here.y);
	dot;
	{
		resistor(down_ to T1.C, E);
		llabel(,R_C,);
		dot;
		{
			arrow down_ 1/4*elen_;
			move up_ 1/8*elen_;
			move right_ 1/4*elen_;
			"$I_C$" rjust;
		}
		capacitor(right_ elen_);
		rlabel(,C,);
C1:		circle radius 0.02;
	}
	line right_ elen_;
	circle radius 0.02;
	line right 1/2*elen_;
	source(down_ to (Here.x, Origin.y), V,,R);
	llabel(,U_0,);
	line left_ 1/2*elen_;
A1:	circle radius 0.02;
	{
		move up_ to C1;
		move down_ 1/6*elen_;
		arrow down_ to (A1.x, A1.y+1/6*elen_);
		move up_ to (Here.x+1/4*elen_, 1/2*C1.y+1/2*Here.y);
		"$u_2$" rjust;
	}
	line left_ elen_;
	dot;
	{
		line up_ to T1.E;
	}
	line left_ to (Origin.x+1/2*elen_+0.04, Here.y);
	circle radius 0.02;
	{
		move up_ 5/6*elen_;
		arrow down_ 2/3*elen_;
	}
	line left_ 1/2*elen_;
	
.PE                            # Pic input ends
