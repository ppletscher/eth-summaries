from pyx import *
from pyx.style import linewidth, linestyle

p0 = path.curve(0, 0, 0.5, 1, 0.4, 1.5, 8, 1.5)
p1 = path.curve(0, 0, 0.5, 2, 0.7, 2.5, 8, 2.5)
p2 = path.curve(0, 0, 0.6, 3, 1, 3.5, 8, 3.5)
p3 = path.curve(0, 0, 0.7, 4, 1.3, 4.5, 8, 4.5)

x_arrow = path.line(0,0,8.5,0)
y_arrow = path.line(0,0,0,5)

c = canvas.canvas()

c.stroke(p0)
c.stroke(p1)
c.stroke(p2)
c.stroke(p3)

c.stroke(x_arrow, [deco.earrow.normal])
c.text(8.5,-0.5, r"$U_{CE}$")
c.stroke(y_arrow, [deco.earrow.normal])
c.text(-0.7,5, r"$I_C$")

IB_arrow = path. line(8.5,1.1, 8.5,4.5)
c.text(8.6,3, r"$I_B$")

c.stroke(IB_arrow, [deco.earrow.normal])

circ_A = path.normpath(path.circle(1, 3.1, 0.06))
c.fill(circ_A)
c.text(0.8, 3.2,r"$A$")

circ_B = path.normpath(path.circle(7.3, 0, 0.06))
c.fill(circ_B)
c.text(7.5, 0.2,r"$B$")

AB_line = path.line(1,3.1,7.3, 0)
c.stroke(AB_line, [linestyle.dashed])

c.writetofile("kennlinie_transistor")

