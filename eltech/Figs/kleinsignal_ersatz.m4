% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	dot;
	{
		resistor(down_ elen_, E);
		rlabel(,r_{BE},);
		#b_current(I_{BE});
		dot;
		{
			line right_ elen_;
		}
		line left_ elen_;
		circle radius 0.02;
		move left_ 0.15;
		"$E$" ljust;
	}
	{
		move left_ elen_;
		move left_ 0.04;
		right_;
		circle radius 0.02;
		{
			move left_ 0.19;
			"$B$" ljust;

		}
		#move right_ 0.04;
		line right_ elen_+0.02;
		b_current(i_{BE});
	}
	#diode(right_ elen_);
	#llabel(,D_{BC},);
	move right_ elen_;
	dot;
	{
		consource(down_ elen_, I);
		llabel(,h_{fe}i_{BE},);
		dot;
		line right_ elen_;
		circle radius 0.02;
		move right_ 0.15;
		"$E$" rjust;
	}
	move right_ elen_;
	circle radius 0.02;
	{
		move right_ 0.15;
		"$C$" rjust;
	}
	move left_ 0.04;
	line left_ elen_;
	b_current(I_c);
	
.PE                            # Pic input ends
