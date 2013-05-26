% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	circle radius 0.02;
Orig:	line right_ 5/2*elen_;
	dot;
	{
		line up_ 1/2*elen_;
T1:		line right_ 1/2*elen_;
O:		opamp(right_ elen_) with .In2 at Here;
		move to O.Out;
		dot;
		{
			line up_ 2/3*elen_;
T2:			resistor(left_ to (T1.x, Here.y), E);
			b_current(i_f);
			rlabel(,R_f,);
			move to O.In1;
			line left_ to (T1.x, Here.y);
			dot;
			{
				line to (T1.x, T2.y);
			}
			line left_ 1/3*elen_;
			dot;
			{
T3:				line up_ 1/3*elen_;
				move left_ to (Orig.x, Here.y);
				{
					circle radius 0.02;
					move down_ 1/12*elen_;
					arrow down_ elen_;
					move up_ 6/12*elen_;
					move left_ 1/14*elen_;
					"$u_3$" rjust;
				}
				resistor(right_ to (T3.x, Here.y), E);
				b_current(i_3);
				llabel(,R_3,);
			}
			{
T4:				line down_ 1/3*elen_;
				move left_ to (Orig.x+ 2/3*elen_, Here.y);
				{
					circle radius 0.02;
					move down_ 1/12*elen_;
					arrow down_ 4/12*elen_;
					move up_ 2/12*elen_;
					move left_ 1/14*elen_;
					"$u_1$" rjust;
				}
				resistor(right_ to (T4.x, Here.y), E);
				b_current(i_1);
				llabel(,R_1,);
			
			}
			move left_ to (Orig.x+ 1/3*elen_, Here.y);
			{
					circle radius 0.02;
					move down_ 1/12*elen_;
					arrow down_ 8/12*elen_;
					move up_ 4/12*elen_;
					move left_ 1/14*elen_;
					"$u_2$" rjust;
			}
			resistor(right_ to (T4.x, Here.y), E);
			b_current(i_2);
			llabel(,R_2,);

		}
T0:		line right_ elen_;
		circle radius 0.02;
		move down_ 1/3*elen_;
		"$u_O$" rjust;
	}
	line right to (T0.x + elen_, Here.y);
	circle radius 0.02;


	
.PE                            # Pic input ends
