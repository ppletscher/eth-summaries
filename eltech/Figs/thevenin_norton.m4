% thevenin_norton.m4
.PS                            # Pic input begins with .PS
cct_init                       # Set defaults
                                                                                                                       
                                                                                                                       
Origin: Here                   # Position names are capitalized
   line up_ 1/3*elen_;
   dot
   {
Source:
   source(up_, V);
   llabel(,U_0,);
   resistor(right_, E);
Source2:
   dot
   {
   	line right_ 1/2*elen_;
	dot
	{
Rightest:
		line right_ 1/2*elen_;
		circle radius 0.02;
		move right_ 1/5*elen_;
		"sp_$a$" rjust ;
	}
	resistor(down_ to (Here.x,Origin.y), E);
	dot
	{
   		line right_ 1/2*elen_;
		circle radius 0.02;
		move right_ 1/5*elen_;
		"sp_$b$" rjust ;
	}
	resistor(left_ to Origin, E);
   }
   }
   resistor(right_ to (Source2.x,Here.y), E);
   source(up_ to (Here.x,Source2.y), I);
   rlabel(,I_0,);

   pos = 1/2*(Source2.y-Origin.y);

   move to (Rightest.x+elen_, pos);
   #darrow
   move to (Rightest.x+3/2*elen_, Source2.y);
   {
   	resistor(right_, E);
	rlabel(,R_i,);
Ending:
	circle radius 0.02;
	move right_ 1/5*elen_;
	"sp_$a$" rjust ;
	
   }
   move to (Here.x, Origin.y);
   {
   	line right_ to (Ending.x,Here.y);
	circle radius 0.02;
	move right_ 1/5*elen_;
	"sp_$b$" rjust ;
   }
   source(up_ to (Here.x,Source2.y), V);
   rlabel(,U_T,);
   # Thevenin

   pos_x = (Rightest.x-Origin.x)*1/2;
   pos_y = Origin.y - 1/2*elen_;
   move to (pos_x,pos_y);
   # darrow
   pos_y = Origin.y - 2/3*elen_;
   move to (Origin.x+1/3*elen_,pos_y);
   
Begin_Norton:
   line right_ 1/2*elen_;
   dot
   {
   	line right_ 1/2*elen_;
	circle radius 0.02;
	move right_ 1/5*elen_;
	"sp_$a$" rjust ;
   }
   resistor(down_, E);
   llabel(,R_i,)
   dot
   {
   	line right_ 1/2*elen_;
	circle radius 0.02;
	move right_ 1/5*elen_;
	"sp_$b$" rjust ;
   }
   line to (Begin_Norton.x,Here.y);
   source(up_ to Begin_Norton, I);
   llabel(,I_N,)
   
.PE                            # Pic input ends

