% stern_dreieck.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults                                                                         

	"sp_$b$" ljust ;
	dot
Point_(225)
Ra:	ebox();
	dlabel(0,0.15,,R_a,)
Go_back: Here
	move down_ 1/10*elen_;
	"$c$sp_" rjust ;
	move to Go_back;
	dot
Point_(135)
Rb:	ebox()
	dlabel(0,0.15,,R_b,)
	"$a$sp_" rjust ;
	dot
Rc:	ebox(right_ to Ra.start);
	dlabel(0,0.15,,R_c,)

	move right_ 1/2*elen_;
	move up_ 1/2*elen_;

	"$a$sp_" rjust ;
	dot
Point_(330)
R1:	ebox();
	dlabel(0,0.15,,R_1,)
	dot
{Point_(30)
R2:	ebox();
	dlabel(0,0.15,,R_2,)
	dot
	"sp_$b$" ljust ;
}
Point_(270)
R3:	ebox();
	dlabel(0,0.15,,R_3,)
	dot
	move down_ 1/10*elen_;
	"$c$sp_" rjust ;

.PE                            # Pic input ends

