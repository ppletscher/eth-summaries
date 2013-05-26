from math import exp,pi, sqrt
from pyx import *
from pyx.style import linewidth, linestyle
from pyx.graph import graphxy, linaxis, axispainter, function, line

c = canvas.canvas()

mypainter = graph.axispainter(basepathattrs=[deco.earrow.normal],
                        zeropathattrs=None, titlepos=1, titledirection=None)

g1 = c.insert(graph.graphxy(
	width=10, x2=None, y2=None, key=graph.key(pos="tr"),
	x=graph.linaxis(min=0, max=3, painter=mypainter, parter=None, title="$\omega$"),
	y=graph.linaxis(min=0, max=3, painter=mypainter, parter=None, title="$Z$")
	)
	)

g2 = c.insert(graph.graphxy(
	width=10, x2=None, y2=None, key=graph.key(pos="tr"), xpos=g1.width+0.5,
	x=graph.linaxis(min=0, max=3, painter=mypainter, parter=None, title="$\omega$"),
	y=graph.linaxis(min=0, max=3, painter=mypainter, parter=None, title="$Z$")
	)
	)

L = 0.8 
C = 3

g1.plot(graph.function("y="+str(L)+"*x", title=r"$\omega L$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g1.plot(graph.function("y=1/("+str(C)+"*x)", title=r"$1/\omega C$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.red]))
g1.plot(graph.function("y=abs("+str(L)+"*x-1/("+str(C)+"*x))", title=r"$|Z_{Serie}|$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.blue, linewidth.Thick]))

g1.finish()

x1, y1 = g1.pos(1/(sqrt(L*C)), 0)
g1.text(x1-.4, y1-.2, r"$\omega_0$")

g2.plot(graph.function("y="+str(L)+"*x", title=r"$\omega L$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.black]))
g2.plot(graph.function("y=1/("+str(C)+"*x)", title=r"$1/\omega C$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.red]))
g2.plot(graph.function("y=abs(1/("+str(L)+"*x-1/("+str(C)+"*x)))", title=r"$|Z_{Parallel}|$", context=locals()), line(lineattrs=[linestyle.solid, color.rgb.blue, linewidth.Thick]))

g2.finish()

x1, y1 = g2.pos(1/(sqrt(L*C)), 0)
x2, y2 = g2.pos(1/(sqrt(L*C)), 3)

g2.text(x1-.4, y1-.2, r"$\omega_0$")
g2.stroke(path.line(x1, y1, x2, y2), [linestyle.dashed])

c.writetofile("resonanzkreis.eps")
