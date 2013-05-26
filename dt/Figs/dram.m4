% sram.m4
.PS
cct_init

ifdef(`AND_gate',,`include(HOMELIB_`'liblog.m4)')

	"GND" ljust;
	move right 1/10*elen_;
	move up_ 1/5*elen_;
	
S:	capacitor(up_);

F2:	c_fet(right_ elen_,,) with .S at Here;
	
	move to F2.G;
	line up_ 1/4*elen_;
T:	dot;

	move to F2.D;
	dot;
	line down_ to (Here.x, S.y);

	move down_ 1/5*elen_;
	move left_ 1/7*elen_;
	"Data" ljust;

	move to F2.D;
	line up_ to (Here.x, T.y+1/4*elen_);

	move down_ 1/4*elen_;
	move right_ 1/4*elen_;

	line left_ to (S.x - 1/2*elen_, Here.y);
	{
		"Address Line" rjust;
	}
	

.PE
