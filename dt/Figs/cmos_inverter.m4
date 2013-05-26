% cmos_inverter.m4
.PS
cct_init

	{
		move up_ 1/10*elen_;
		"IN" ljust;
	}
	line right_ 1/3*elen_;
	{
		line up_ 1/2*elen_;
C1:		c_fet(up_ elen_,,P) with .G at Here;
		{
			move to C1.D;
			line up_ 1/4*elen_;
			{
				line left_ elen_;
				move down_ 1/8*elen_;
				"VDD" ljust;
			}
			{
				line right_ 2/3*elen_;
			}			
		}
		{
			move to C1.S;
			line right_ 1/3*elen_;
			move left_ 1/5*elen_;
			move up_ 1/10*elen_;
			"OUT" ljust;
		}
	}
	{
C2:		c_fet(up_ elen_) with .D at C1.S;
		move to C2.G;
		line up_ 1/2*elen_;
		move to C2.S;
		{
			line left_ elen_;
			move up_ 1/15*elen_;
			"GND" ljust;
		}
		{
			line right_ 2/3*elen_;
		}
	}

.PE
