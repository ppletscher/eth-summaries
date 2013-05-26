% quellenumwandlung.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults

	dot;
	{
		move right_ 1/10 * elen_;
		move up_ 1/10 * elen_;
		"$c$" ljust;
	}
	{
		resistor(left_ elen_, E);
		rlabel(,R_2,);
		b_current(I_2);
	}
	source(down_ elen_, V, ,R);
	larrow(U_{2});
	line left_ elen_;
	dot;
	{
		resistor(up_ elen_, E);
		llabel(,R_3,);
		b_current(I_3)
	}
	line left_ elen_;
	source(up_ elen_, V);
	larrow(U_{1}, <-);
	dot;
	{
		move left_ 1/10 * elen_;
		move up_ 1/10 * elen_;
		"$a$" rjust;
	}

	resistor(right_ elen_, E);
	llabel(,R_1,);
	b_current(I_1);
	dot;
	{
		move up_ 1/10 * elen_;
		"$b$" rjust;
	}
	


#	resistor(up_ elen_, E);
#	rlabel(,20 k\Omega,);

#	resistor(left_ elen_, E);
#	llabel(,5 k\Omega,);
#	source(down_ elen_, V, ,R);
#	rarrow(45 V);

#	line right_ elen_;



.PE                            # Pic input ends

