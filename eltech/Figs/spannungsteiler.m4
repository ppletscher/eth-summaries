% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	circle radius 0.02;
	move left_ 0.02;
	move up_ 0.02;
Origin:	line up_ 1/2*elen_;
	resistor(right_ elen_, E);
	b_current(I);
	llabel(,R_1,);
	b_current(I);
	resistor(right_ elen_, E);
	llabel(,R_2,);
	line down_ 1/2*elen_;
Right:	circle radius 0.02;
	move to (Origin.x+1/5*elen_, Here.y);
	arrow to (Right.x-1/5*elen_, Here.y);
	move to (1/2*Right.x+1/2*Origin.x, Here.y - 1/4*elen_);
	"sp_$U$";
	
.PE                            # Pic input ends
