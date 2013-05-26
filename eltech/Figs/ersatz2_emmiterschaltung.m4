% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	{
		resistor(down_ elen_, E);
		rlabel(,r_{BE},);
		dot;
		{
			line right_ elen_;
		}
		line left_ elen_;
		circle radius 0.02;
		#move left_ 0.15;
		move down_ 0.2;
		"$E$" ljust;
	}
	{
		move left_ elen_;
		move left_ 0.04;
		right_;
		circle radius 0.02;
		{
			#move left_ 0.19;
			move up_ 0.2;
			"$B$" ljust;

		}
		#move right_ 0.04;
		{
			move left_ 0.04;
			line left_ 1/4*elen_;
			dot;
			{
				resistor(down_ elen_, E);
				llabel(,R_B,);
				dot;
			}
			line left_ 1/2*elen_;
			source(down_ elen_, AC);
			rlabel(,u_1,);
			line right_ 3/4*elen_;
		}
		line right_ elen_;
		b_current(i_B);
	}
	move right_ elen_;
	{
		consource(down_ elen_, I);
		llabel(,h_{fe}i_{B},);
		dot;
		line right_ elen_;
		circle radius 0.02;
		#move right_ 0.15;
		move down_ 0.2;
		"$E$" rjust;
	}
	move right_ elen_;
	circle radius 0.02;
	{
		#move right_ 0.15;
		move up_ 0.2;
		"$C$" rjust;
	}
	{
		move down_ 1/6*elen_;
		arrow down_ 2/3*elen_;
		move up_ 1/3*elen_;
		move right_ 1/2*elen_;
		"$u_{CE} = u_2$" rjust;
	}
	{
		resistor(right_ elen_, E);
		llabel(,R_C,);
		line down_ elen_;
		{
			move up_ 1/2*elen_;
			move right_ 0.04;
			"$u_0=0$" ljust;
		}
		line left_ elen_;
	}
	move left_ 0.04;
	line left_ elen_;
	b_current(i_C);
	
.PE                            # Pic input ends
