% knotenmethode2.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	dot;
	source(up_ elen_, I);
	rlabel(,I_6=5A,);
	dot;
	{
		move to (Here.x+1/3*elen_,Here.y+1/4*elen_);
		"$U_1$"
	}
	line right_ elen_;
	dot;
	{
		resistor(down_ to (Here.x, Origin.y), E);
		llabel(,5\Omega,);
		b_current(I_4);
Bottom_center:
		dot;
	}
Top_left:
	resistor(right_ elen_, E);
	llabel(,10\Omega,);
	b_current(I_2);
	dot;
	{
		resistor(down_ to (Here.x, Origin.y), E);
		llabel(,4\Omega,);
		b_current(I_5);
Down_right:	dot;
	}
	line right_ elen_;
	{
		move to (Here.x+1/3*elen_,Here.y+1/4*elen_);
		"$U_2$"
	}
	dot;
	{
		resistor(down_ to (Here.x,Origin.y), E);
		llabel(,2\Omega,);
		b_current(I_8);
Bottom_2:	dot;
	}
	line right_ elen_;
	source(down_ to (Here.x,Down_right.y), I);
	llabel(,I_7=25A,);
	line to Bottom_2;
	line to Down_right;
	line to Bottom_center;
	ground(at (1/2*Bottom_center.x+1/2*Down_right.x,Here.y));
	line to Origin;
	line left_ 2/3*elen_;
	resistor(up_ to (Here.x, Top_left.y), E);
	rlabel(,2\Omega,);
	line right_ to Top_left;
	b_current(I_1);

.PE                            # Pic input ends
