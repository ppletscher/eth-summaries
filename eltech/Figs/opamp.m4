% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	right_;
O1:	opamp(right_ elen_, "sp_{\small$+$}sp_", "sp_{\small$-$}sp_");
	line from O1.In1 left_ 1/2*elen_;
	circle radius 0.02;
	move right_ 0.3;
	move up_ 0.15;
	"nichtinvertierender Eingang" rjust;
	line from O1.In2 left_ 1/2*elen_; 
	circle radius 0.02;
	move right_ 0.3;
	move down_ 0.15;
	"invertierender Eingang" rjust;
	move to O1.Out;
	right_;
	circle radius 0.02;
	move right_ 0.04;
	"Ausgang" ljust;
	move to O1.E1;
	line up_ 1/2*elen_;
	circle radius 0.02;
	move right_ 0.06;
	move up_ 0.02;
	"positive Betriebsspannung" ljust;
	move to O1.E2;
	line down_ 1/2*elen_;
	circle radius 0.02;
	move right_ 0.06;
	move up_ 0.02;
	"negative Betriebsspannung" ljust;
	
	
.PE                            # Pic input ends
