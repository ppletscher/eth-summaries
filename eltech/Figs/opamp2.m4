% maschenmethode.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	right_;
O1:	opamp(right_ elen_, "sp_{\small$+$}sp_", "sp_{\small$-$}sp_");

	move to O1.In1;
	move left_ 2/3*elen_;
	arrowline(right_ to O1.In1);
	llabel(,i_2,);
	move left_ 2/3*elen_;
	circle radius 0.02;
	
	move to O1.In2;
	move left_ 1/2*elen_;
	arrowline(right_ 1/2*elen_);
	llabel(,i_1,);
	move left_ 1/2*elen_;
	circle radius 0.02;

	move to O1.Out;
	move right_ 1/4*elen_;
	{
		arrowline(left_ 1/4*elen_);
		llabel(,i_O,);
	}
	right_;
	circle radius 0.02;

	move to O1.E1;
	line up_ 1/3*elen_;
	circle radius 0.02;
	{
		move up_ 0.04;
		"$U_{B^+}$" rjust;
	}
	move down_ 0.02;
	move right_ 0.02;
	move right_ 3/2*elen_;
	{
		arrowline(left_ 3/2*elen_);
		rlabel(,i_{B^+},);
	}
	source(down_ 2*elen_,V,,R);
	line left_ to (O1.E2.x, Here.y);
	dot;
	{
		source(up_ 2/3*elen_,V,,R);
		arrowline(up_ 1/3*elen_);
		llabel(,i_{B^-},);
		circle radius 0.02;
		{
			move right_ 0.04;
			"$U_{B^-}$" ljust;
		}
		line up_ 1/4*elen_;
	}
	line left_ elen_;
	circle radius 0.02;
	move up_ 3/2*elen_;
	arrow down_ 4/3*elen_;
	{
		move left_ 1/4*elen_;
		move up_ 2/3*elen_;
		"$u_2$" rjust;
	}

	move right_ 0.02+(2/3-1/2)*elen_;
	move up_ elen_;
Te1:	arrow down_ elen_;
	{
		move right_ 1/4*elen_;
		move up_ 1/2*elen_;
		"$u_1$" rjust;
	}

	move to O1.Out;
	move right_ 1/4*elen_;
	move right_ 0.04;
	move down_ 1/5*elen_;
	arrow down_ to (Here.x, Te1.y-elen_);
	move up 1/2*elen_;
	move right_ 0.03;
	"$u_0$" ljust;

	
.PE                            # Pic input ends
