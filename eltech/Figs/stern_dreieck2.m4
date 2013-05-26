% stern_dreieck2.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         


Origin:		Here
move left_ 1/10*elen_;
"$a$sp_" ljust;
move to Origin;
line right_ elen_*1/3;
dot
{
	ebox(down_);
	dlabel(0,0.15,,R_b,)
P1:	dot
	line left_ elen_*1/3;
	move left_ 1/10*elen_;
	"$c$sp_" ljust;
}
ebox(right_);
dlabel(0,0.15,,R_c,)
dot
{
	line right_ elen_*1/3;
	move right_ 1/10*elen_;
	"sp_$b$" rjust;
P2:	Here
}
ebox(down_);
dlabel(0,0.15,,R_a,)
dot
{
	line right_ elen_*1/3;
	move right_ 1/10*elen_;
	"sp_$c$" rjust;
}

line to P1;

move to P2;

move right_ 1/2*elen_;

P21:	Here
	
move left_ 1/10*elen_;
"$a$sp_" ljust;
move to P21;
ebox(right_ );
dlabel(0,0.15,,R_1,)
dot
{
	ebox(right_);
	dlabel(0,0.15,,R_2,)
P3:	Here
	move right_ 1/10*elen_;
	"sp_$b$" rjust;
}
ebox(down_);
dlabel(0,0.15,,R_3,)
dot
{
	line right_ to (P3.x,Here.y);
	move right_ 1/10*elen_;
	"sp_$c$" rjust;
}
line left_ to (P21.x,Here.y);
move left_ 1/10*elen_;
"$c$sp_" ljust;

.PE                            # Pic input ends

