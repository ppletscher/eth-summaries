% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	up_;
Q1:	bi_tr(up_ elen_,,P);
	"\hbox{\sl E}" at Q1.E-(0,0.05) below    
	"\hbox{\sl B}sp_" at Q1.B rjust    
	"\hbox{\sl C}" at Q1.C above
	move right_ 3/2*elen_;
Q2:	bi_tr(up_ elen_) with .E at Q1.E+(elen_,0);
	"\hbox{\sl E}" at Q2.E-(0,0.05) below    
	"\hbox{\sl B}sp_" at Q2.B rjust    
	"\hbox{\sl C}" at Q2.C above
	
.PE                            # Pic input ends
