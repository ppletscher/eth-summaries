from math import exp,pi
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=None,
                        zeropathattrs=[deco.earrow.normal], titlepos=1, titledirection=None)

g = graph.graphxy(
	width=10, x2=None, y2=None, key=graph.key(pos="tr"),
	x=graph.linaxis(min=-1, max=9, painter=mypainter, parter=None, title="$t$"),
	y=graph.linaxis(min=-1.5, max=3, painter=mypainter, parter=None)
	)

g.plot(graph.function("y=1.2*sin(x)", title=r"$u(t)$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g.plot(graph.function("y=1.4*sin(x-0.45)", title=r"$i(t)$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.red]))
g.plot(graph.function("y=1.2*sin(x)*1.4*sin(x-0.45)", title=r"$p(t)=u(t)\cdotp i(t)$", context=locals()), line(lineattrs=[linewidth.Thick, linestyle.solid, color.rgb.blue]))

g.finish()

x1, y1 = g.pos(0, 1.2)
x2, y2 = g.pos(pi/2, 1.2)
x3, y3 = g.pos(0, 1.4)
x4, y4 = g.pos(pi/2+.45,1.4)
x5, y5 = g.pos(-1, 1.45)
x6, y6 = g.pos(9, 1.45)

g.stroke(path.line(x1, y1, x2, y2), [linestyle.solid])
g.stroke(path.line(x3, y3, x4, y4), [linestyle.solid])
#g.stroke(path.line(x5, y5, x6, y6), [linestyle.dashed])
#g.stroke(path.line(x1, y1, x3, y3), [linestyle.solid])
#g.stroke(path.line(x3, y3, x4, y4), [linestyle.solid])

g.text(x1-.4, y1-.2, r"$\hat{U}$")
g.text(x3-.4, y3+.1, r"$\hat{I}$")

g.writetofile("leistung.eps")
