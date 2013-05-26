from math import exp,pi, sqrt, log10, atan
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

mypainter = graph.axispainter(basepathattrs=None,
                        zeropathattrs=[deco.earrow.normal], titlepos=1, titledirection=None)
mypainter2 = graph.axispainter(basepathattrs=[deco.earrow.normal],
                        zeropathattrs=None, titlepos=1, titledirection=None)

c = canvas.canvas()

g1 = c.insert(graph.graphxy(
	width=10, y2=None,
	x=graph.logaxis(min=0.01, max=100, painter=mypainter2, title=r"$\log f$"),
	y=graph.linaxis(min=-45, max= 0, painter=mypainter2, title=r"$v^\ast$")
	)
	)

R = 5
C = 0.2

g1.plot(graph.function("y=20*log10(1/(sqrt(1+("+str(R)+"*x*"+str(C)+")^2)))", title="", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black, linewidth.Thick]))
g1.finish()

tanparter = graph.linparter(["45","90"])

g2 = c.insert(graph.graphxy(
	width=10, x2=None, y2=None, xpos=g1.width+1.5,
	x=graph.logaxis(min=0.01, max=1000, painter=mypainter2, title=r"$\log f$"),
	y=graph.linaxis(min=-95, max= 0, painter=mypainter2, parter=tanparter, title=r"$\varphi$")
	)
	)

g2.plot(graph.function("y=-180*atan((x*R*C))/pi", title="", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black, linewidth.Thick]))
g2.finish()


c.writetofile("tiefpass.eps")
