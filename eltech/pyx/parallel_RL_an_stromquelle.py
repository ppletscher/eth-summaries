from math import exp
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=[deco.earrow.normal],
                        zeropathattrs=None, titlepos=1, titledirection=None)

g = graph.graphxy(
	width=8, x2=None, y2=None, key=graph.key(pos="tr"),
	x=graph.linaxis(min=0, max=10, painter=mypainter, parter=None, title="$t$"),
	y=graph.linaxis(min=0, max=1.65, painter=mypainter, parter=None, title="$u,i$")
	)
g.plot(graph.function("y=1.5*exp(-x/3)", title=r"$u$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g.plot(graph.function("y=exp(-x/3)", title=r"$i_R$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.red]))
g.plot(graph.function("y=1-exp(-x/3)", title=r"$i_L$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.blue]))
g.finish()

x1, y1 = g.pos(0, 1.5);
x2, y2 = g.pos(0, 1);
x3, y3 = g.pos(10, 1);
x4, y4 = g.pos(3,0);

g.stroke(path.line(x2, y2, x3, y3), [linestyle.dashed])
g.stroke(path.line(x2, y2, x4, y4), [linestyle.dashed])

g.text(x1-.9, y1-.2, r"$I_{0}R$")
g.text(x2-.6, y2-.2, r"$I_0$")
g.text(x4-.6, y4-.35, r"$\tau=L/R$")

g.writetofile("parallel_RL_an_stromquelle")
