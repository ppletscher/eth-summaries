from math import exp
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=[deco.earrow.normal],
                        zeropathattrs=None, titlepos=1, titledirection=None)

g = graph.graphxy(
	width=8, x2=None, y2=None, key=graph.key(pos="tr"),
	x=graph.linaxis(min=0, max=12, painter=mypainter, parter=None, title="$t$"),
	y=graph.linaxis(min=0, max=2.2, painter=mypainter, parter=None, title="$u,i$")
	)

I_q = 2 
R = 2 
C = 1.5 

g.plot(graph.function("y="+str(I_q)+ "/"+ str(R)+"*(1-exp(-x/("+ str(C)+ "*"+ str(R)+")))", title=r"$u$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g.plot(graph.function("y="+str(I_q)+"*(1-exp(-x/("+ str(C)+ "*"+ str(R)+")))", title=r"$i_R$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.red]))
g.plot(graph.function("y="+str(I_q)+"*exp(-x/("+ str(C)+ "*"+ str(R)+"))", title=r"$i_C$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.blue]))
g.finish()

x1, y1 = g.pos(0, I_q)
x2, y2 = g.pos(12, I_q)
x3, y3 = g.pos(0, I_q/R)
x4, y4 = g.pos(12, I_q/R)
x5, y5 = g.pos(C*R,0)

g.stroke(path.line(x1, y1, x2, y2), [linestyle.dashed])
g.stroke(path.line(x3, y3, x4, y4), [linestyle.dashed])
g.stroke(path.line(x1, y1, x5, y5), [linestyle.dashed])

g.text(x1-.6, y1-.2, r"$I_{0}$")
g.text(x3-.9, y3-.2, r"$I_0R$")
g.text(x5-.6, y5-.35, r"$\tau=RC$")

g.writetofile("parallel_RC_an_stromquelle")
