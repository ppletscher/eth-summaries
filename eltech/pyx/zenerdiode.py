from math import exp
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=None,
                        zeropathattrs=[deco.earrow.normal], titlepos=1, titledirection=None)

g = graph.graphxy(
	width=8, x2=None, y2=None,
	x=graph.linaxis(min=-10, max=10, painter=mypainter, parter=None, title="$U$"),
	y=graph.linaxis(min=-10, max=10, painter=mypainter, parter=None, title="$I$")
	)
g.plot(graph.function("y=25+x", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g.finish()

x1, y1 = g.pos(-8, 0);
x2, y2 = g.pos(-9, -10);
x3, y3 = g.pos(0, 0);
x4, y4 = g.pos(1,10);

g.stroke(path.line(x2, y2, x1, y1), [linewidth.Thick, linestyle.solid])
g.stroke(path.line(x1, y1, x3, y3), [linewidth.Thick, linestyle.solid])
g.stroke(path.line(x3, y3, x4, y4), [linewidth.Thick, linestyle.solid])

g.text(x1-.4, y1+.2, r"$Z_D$")

g.writetofile("zenerdiode.eps")
