% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

Origin:
	source(down_ elen_, V, ,R);
	#rlabel(,U=U_0\:\:,);
	b_current(I);
	rarrow(U=U_0)
#	{
#		move to (Here.x - 1/4*elen_,1/3*Here.y+2/3*Origin.y);
#		arrow to (Here.x, Here.y-1/3*elen_);
#	}

	move to (Here.x+elen_,Origin.y);
	source(down_ elen_, I);
	#llabel(,\:\:U,);
	rarrow(U);
	b_current(I=I_0);
#	{
#		move to (Here.x + 1/4*elen_,1/3*Here.y+2/3*Origin.y);
#		arrow to (Here.x, Here.y-1/3*elen_);
#	}
.PE                            # Pic input ends
