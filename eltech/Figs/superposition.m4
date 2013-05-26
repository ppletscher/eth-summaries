% superposition.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults

# 1st
Origin: Here
	source(up_, V);
	llabel(,U_q,);
	resistor(up_, E);
	llabel(,R_1,);
	line right_ 1/2*elen_;
	b_current(I_1,,);
Top:
	dot
	{
		resistor(right_ elen_, E);
		llabel(,R_3,);
		b_current(I_3,,);
		dot
		{
			line right_ 1/2*elen_;
Right:			Here
		}
		resistor(down_ to (Here.x,Origin.y), E);
		llabel(,R_4,);
		b_current(I_4,,);
		dot
		{
			line right_ 1/2*elen_;
			source(up_ to Right,I);
			rlabel(,I_q,);
		}
		line to (Top.x,Here.y);
Down:		Here
	}
	resistor(down_ to Down, E);
	llabel(,R_2,);
	b_current(I_2,,);
	dot;
	line to Origin;

move to Right;
{
	move right_ 1/7*elen_;
Arrw:	move down_ 1/3*elen_;
	arrow to (Here.x+1/4*elen_, Here.y+1/4*elen_);
	move to Arrw;
	move down_ 1/2*elen_;
	arrow to (Here.x+1/4*elen_, Here.y-1/4*elen_);
}

move down_ 1/3*elen_;
move right_ 1/2*elen_;

# 2nd
Origin: Here
	line up_ 1/5*elen_;
	circle radius 0.02;
	line up_ 1/5*elen_;
	circle radius 0.02;
	resistor(up_, E);
	llabel(,R_1,);
	line right_ 1/2*elen_;
	b_current(I_1^\prime);
Top:
	dot
	{
		resistor(right_ elen_, E);
		llabel(,R_3,);
		b_current(I_3^\prime,,);
		dot
		{
			line right_ 1/2*elen_;
Left:			Here
		}
		resistor(down_ to (Here.x,Origin.y), E);
		llabel(,R_4,);
		b_current(I_4^\prime,,);
		dot
		{
			line right_ 1/2*elen_;
			source(up_ to Left,I);
			rlabel(,I_q,);
		}
		line to (Top.x,Here.y);
Down:		Here
	}
	resistor(down_ to Down, E);
	llabel(,R_2,);
	b_current(I_2^\prime,,);
	dot;
	line to Origin;

move to Origin;
move down_ elen_*2;

# 3rd 
Origin: Here
	source(up_, V);
	llabel(,U_q,);
	resistor(up_, E);
	llabel(,R_1,);
	line right_ 1/2*elen_;
	b_current(I_1^{\prime\prime},,);
Top:
	dot
	{
		resistor(right_ elen_, E);
		llabel(,R_3,);
		b_current(I_3^{\prime\prime},,);
		dot
		{
			line right_ 1/2*elen_;
Left:			Here
		}
		resistor(down_ to (Here.x,Origin.y), E);
		llabel(,R_4,);
		b_current(I_4^{\prime\prime},,);
		dot
		{
			line right_ 1/2*elen_;
			line up_ 1/2*elen_;
			circle radius 0.02;
			move up_ 1/5*elen_;
			circle radius 0.02;
			line to Left;
		}
		line to (Top.x,Here.y);
Down:		Here
	}
	resistor(down_ to Down, E);
	llabel(,R_2,);
	b_current(I_2^{\prime\prime},,);
	dot;
	line to Origin;


.PE                            # Pic input ends
