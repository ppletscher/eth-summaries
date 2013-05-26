% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, V);
	line right_ 1/4*elen_;
	circle radius 0.02;
	line right_ 1/4*elen_;
	resistor(right_ elen_, E);
	rlabel(,\underline{Z}_1,);
	dot;
	{
		line right_ 3/4*elen_;
		b_current(\underline{I}_a=0);
A1:		circle radius 0.02
	}
	resistor(down_ elen_, E);
	rlabel(,\underline{Z}_2,);
	dot;
	{
		line right_ 3/4*elen_;
		circle radius 0.02;
		move to (A1.x,A1.y-1/6*elen_);
		arrow down 2/3*elen_;
		move to (Here.x+1/3*elen_,A1.y -1/2*elen_);
		"$\underline{U}_a$" rjust;

	}
	line left_ to (Origin.x+1/4*elen_+0.04,Here.y);
	circle radius 0.02;
	{
		move up_ 5/6*elen_;
		arrow down_ 2/3*elen_
		move to (Here.x+1/3*elen_,A1.y -1/2*elen_);
		"$\underline{U}_e$" rjust;
	}
	line to Origin;
.PE                            # Pic input ends
