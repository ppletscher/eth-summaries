% quellenumwandlung.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults

Orig:	resistor(up_ elen_, E);
	rlabel(,20 k\Omega,);

	line left_ 1/2*elen_;
	dot;
	{
		resistor(down_ elen_, E);
		llabel(,5 k\Omega,);
		dot;
	}
	line left_ 1/2*elen_;

	source(down_ elen_, I, ,R);
	rlabel(,9 mA,);

	line right_ elen_;



.PE                            # Pic input ends

