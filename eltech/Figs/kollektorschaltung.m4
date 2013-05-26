% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	right_;
Origin:	circle radius 0.02;
	line right_ elen_;
T1:	bi_tr(up_ elen_);
	line up_ 1/2*elen_ from T1.C;
	line right_ 3/4*elen_;
	source(down_ 2*elen_, V,,R);
	line left_ 3/4*elen_;
	dot;
	{
		resistor(up_ to T1.E, E);
		rlabel(,R_E,);
		dot;
		line right_ 1/3*elen_;
		circle radius 0.02;
	}
	line left_ to (Origin.x, Here.y);
	circle radius 0.02;
#	up_;
#Q1:	bi_tr(up_ elen_,,P);
#	"\hbox{\sl E}" at Q1.E-(0,0.05) below    
#	"\hbox{\sl B}sp_" at Q1.B rjust    
#	"\hbox{\sl C}" at Q1.C above
#	move right_ 3/2*elen_;
	
.PE                            # Pic input ends
