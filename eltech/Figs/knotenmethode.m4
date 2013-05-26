% knotenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_, V);
	rlabel(,25 V,);
	resistor(up_, E);
	rlabel(,5\Omega,);
	dot;
Top_left:
	resistor(right_ elen_, E);
	llabel(,10\Omega,);
	b_current(I_2);
	dot;
	{
		resistor(down_ to (Here.x, Origin.y), E);
		llabel(,4\Omega,);
Down_right:	dot;
	}
	resistor(right_ elen_, E);
	llabel(,2\Omega,);
	b_current(I_3);
	source(down_ to (Here.x,Down_right.y), V);
	llabel(,50V,);
	line to Down_right;
	line to Origin;
	dot;
	line left_ 2/3*elen_;
	resistor(up_ to (Here.x, Top_left.y), E);
	rlabel(,2\Omega,);
	line right_ to Top_left;
	b_current(I_1);

.PE                            # Pic input ends
