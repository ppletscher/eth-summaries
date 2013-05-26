% quellenumwandlung.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults
                                                                                                                       
                                                                                                                       
	circle radius 0.02;
	move left_ 0.04;
Origin:	line left_ elen_;
#	source(up_ elen_, V);
	move up_ elen_;
	source(down_ elen_, V);
	rarrow(U_0);
	move up_ elen_;
#	llabel(,U_0,);
	resistor(right_ to (Origin.x,Here.y), E);
	llabel(,R,);
	b_current(I);
	circle radius 0.02;
	move down_ 1/6*elen_;
	arrow to (Here.x,Origin.y+1/6*elen_);
	move up_ 1/3*elen_;
	move right_ 1/5*elen_;
	"sp_$U$" rjust;

	move right_ 3*elen_;
	move to (Here.x, Origin.y);
	circle radius 0.02;
	move left_ 0.04;
Origin:	line left_ 1/2*elen_;
R1:	dot;
	line left_ 1/2*elen_;
	source(up_ elen_, I);
	b_current(I_0);
	line right_ 1/2*elen_;
	dot;
	{
		resistor(down_ to R1, E);
		llabel(,R,);
	}
	line right_ 1/2*elen_;
	b_current(I);
	circle radius 0.02;
	move down_ 1/6*elen_;
	arrow to (Here.x,Origin.y+1/6*elen_);
	move up_ 1/3*elen_;
	move right_ 1/5*elen_;
	"sp_$U$" rjust;
	
.PE                            # Pic input ends

