% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	right_;
O1:	opamp(right_ elen_);

	move to O1.In1;
	move left_ 2/3*elen_;
	arrowline(right_ to O1.In1);
	llabel(,i_1,);
	move left_ 2/3*elen_;
Te0:	dot;
	{
		move left_ 3/2*elen_;
		capacitor(right_ 3/2*elen_);
		llabel(,C_S,);
		b_current(i_S);
		move left_ 3/2*elen_;
		source(down_ elen_, V, ,R);
		rarrow(u_S(t));
		line right_ to (Te0.x, Here.y);
		dot;
		{
			line up_ to (Here.x, O1.In2.y);
			line right_ to O1.In2;
		}
Te3:		line right_ 2*elen_;
		
	}
Te1:	line up_ 1/2*elen_;
	move right_ to (O1.Out.x, Here.y);
	resistor(left_ to (Te1.x, Te1.y+1/2*elen_), E);
	rlabel(,R_f,);
	b_current(i_f);
	move left_ to (O1.Out.x, Here.y);
	line down_ to (Here.x, O1.Out.y);
	line right_ 1/2*elen_;
Te2:	circle radius 0.02;
	move down_ 0.25;
	"$u_O(t)$" rjust;
	move to (Here.x, Te3.y);
	{
		right_;
		circle radius 0.02;
	}
	line to Te3;
	move right_ 1/4*elen_;
	move up_ 1/2*elen_;
	arrow down_ 1/3*elen_;
	{
		move right_ 0.06;
		move up_ 1/6*elen_;
		"$u_2$" ljust;
	}
	move left_ 1/2*elen_;
	move up_ 2/3*elen_;
	arrow down_ 2/3*elen_;
	{
		move left_ 0.03;
		move up_ 1/3*elen_;
		"$u_1$" rjust;
	}

	
.PE                            # Pic input ends
