% schaltbilder.m4
.PS
cct_init

C1: 	c_fet(up_ elen_);
	{
		move to C1.G;
		move up_ 1/10*elen_;
		"Gate" rjust;

		move to C1.D;
		"Drain " rjust;
		
		move to C1.S;
		"Source " rjust;

		move down_ 1/3*elen_;
		move right_ 1/5*elen_;
		"NMOS" rjust
	}

	move right_ elen_;

C2:	c_fet(up_ elen_,,P);
	{
		move to C2.G;
		move up_ 1/10*elen_;
		"Gate" rjust;

		move to C2.D;
		"Drain " rjust;
		
		move to C2.S;
		"Source " rjust;
		
		move down_ 1/3*elen_;
		move right_ 1/5*elen_;
		"PMOS" rjust
	}


.PE
