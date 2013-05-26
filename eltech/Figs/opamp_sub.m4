% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	right_;
O1:	opamp(right_ elen_);

	move to O1.In1;
	move left_ 2/3*elen_;
	line right_ to O1.In1;
	move left_ 2/3*elen_;
Te0:	dot;
	{
		move left_ 3/2*elen_;
		resistor(right_ 3/2*elen_, E);
		llabel(,R_1,);
		b_current(i_1);
		move left_ 3/2*elen_;
		circle radius 0.02;
		move down_ 1/8*elen_;
A1:		arrow down_ 5/4*elen_;
		{
			move up_ elen_;
			move left_ 0.05;
			"$u_1$" rjust;
		}
		move down_ 1/8*elen_;
		left_;
		circle radius 0.02;
		#source(down_ elen_, V, ,R);
		#rarrow(u_S);
		move right_ 0.04;
		
		line right_ to (Te0.x, Here.y);
		dot;
		{
			resistor(up_ to (Here.x, O1.In2.y), E);
			rlabel(,R_3,);
			dot;
			{
				line right_ to O1.In2;
			}
			move left_ elen_;
			{
				circle radius 0.02;
				move to (Here.x, A1.y-5/4*elen_);
				move up_ 4/5*elen_;
				arrow down_ 4/5*elen_;
				{
					move up_ 2/5*elen_;
					move right_ 0.05;
					"$u_2$" ljust;
				}

			}
			resistor(right_ elen_, E);
			llabel(,R_2,);
			b_current(i_2);
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
	"$u_0$" rjust;
	move to (Here.x, Te3.y);
	#{
		left_;
		circle radius 0.02;
	#}
	line left_ elen_;
#	move right_ 1/4*elen_;
#	move up_ 1/2*elen_;
#	arrow down_ 1/3*elen_;
#	{
#		move right_ 0.06;
#		move up_ 1/6*elen_;
#		"$u_2$" ljust;
#	}
#	move left_ 1/2*elen_;
#	move up_ 2/3*elen_;
#	arrow down_ 2/3*elen_;
#	{
#		move left_ 0.03;
#		move up_ 1/3*elen_;
#		"$u_1 = 0$" rjust;
#	}

	
.PE                            # Pic input ends
