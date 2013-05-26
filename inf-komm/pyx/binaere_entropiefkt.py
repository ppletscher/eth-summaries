from math import exp,pi, sqrt, log, atan
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=[deco.earrow.normal],
                        zeropathattrs=None, titlepos=1, titledirection=None)

g = graph.graphxy(
	width=10, y2=None, x2=None,
	x=graph.linaxis(min=0, max=1, painter=mypainter, title=r""),
	y=graph.linaxis(min=0, max=1, painter=mypainter, title=r"")
	)

g.plot(graph.function("y=-x*log(x)/log(2)-(1-x)*log(1-x)/log(2)", title=""), line(lineattrs=[linestyle.solid, color.rgb.black, linewidth.Thick]))
g.finish()

g.writetofile("binaere_entropiefkt")
