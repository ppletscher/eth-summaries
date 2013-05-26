% quellenumwandlung.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults

	{
		arrow left_ 1/4*elen_;
		{
			move right_ 1/12*elen_;
			move up_ 1/10*elen_;
			"$I_2$" rjust;
		}
		line left_ 1/4*elen_;
	}
	source(down_ 3/2*elen_, V, ,R);
	larrow(U_{2});
	line left_ elen_;
	dot;
	{
		arrow up_ 1/4*elen_;
		{
			move right_ 1/10*elen_;
			"$I_3$" ljust;
		}
		line up_ 1/4*elen_;
		dot;
		{
			move up_ 1/10 * elen_;
			"$c$" rjust;
		}
		{
			line right_ 1/2*elen_;
			resistor(up_ elen_, E);
			rlabel(,R_a,);
			dot;
			{
				move up_ 1/10 * elen_;
				"$b$" rjust;
			}
			resistor(left_ elen_, E);
			rlabel(,R_c,);
			dot;
			{
				move up_ 1/10 * elen_;
				"$a$" rjust;
			}
			resistor(down_ elen_, E);
			rlabel(,R_b,);
			line right_ 1/2*elen_;
		}
	}
	line left_ elen_;
	source(up_ 3/2*elen_, V);
	larrow(U_{1}, <-);
	arrow right_ 1/4*elen_;
	{
		move left_ 1/12*elen_;
		move up_ 1/10*elen_;
		"$I_1$" ljust;
	}
	line right_ 1/4*elen_;

	


#	resistor(up_ elen_, E);
#	rlabel(,20 k\Omega,);

#	resistor(left_ elen_, E);
#	llabel(,5 k\Omega,);
#	source(down_ elen_, V, ,R);
#	rarrow(45 V);

#	line right_ elen_;



.PE                            # Pic input ends

