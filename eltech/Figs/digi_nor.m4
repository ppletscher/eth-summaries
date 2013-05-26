% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	up_;
Q1:	bi_tr(up_ elen_);
	
	move to Q1.B;
	dot;
	{
		line up_ 1/2*elen_;
		resistor(left_ elen_, E);
		rlabel(,R_2,);
		circle radius 0.02;
		move up_ 0.1;
		"$U_2$" ljust;

	}
U1:	resistor(left_ elen_, E);
	rlabel(,R_1,);
	circle radius 0.02;
	move up_ 0.1;
	"$U_1$" ljust;

	move to Q1.E;
	dot;
	{
		line left_ to (U1.x -elen_, Here.y);
		circle radius 0.02;
	}
	line right_ elen_;
	source(up_ 2*elen_, V);
	line left_ elen_;
	resistor(down_ to Q1.C, E);
	llabel(,R_C,);
	dot;
	line right_ 1/3*elen_;
	circle radius 0.02;
	move up_ 0.05;
	"$U_a$" ljust;
	
.PE                            # Pic input ends
