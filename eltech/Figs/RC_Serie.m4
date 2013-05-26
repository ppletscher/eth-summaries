% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(up_ elen_, V);
	{
		move to (Here.x - 1/4*elen_,Here.y-1/4*elen_);
		arrow to (Here.x, Here.y-1/2*elen_);
	}
	llabel(,U_0\:\:\:,);

	line right_ 1/2*elen_;
	switch(right_);
	resistor(right_, E);
	rlabel(,R,);
	capacitor(down_ to (Here.x,Origin.y));
	rlabel(,C,);
	b_current(i(t));
	line left_ to Origin;

.PE                            # Pic input ends
