from pyx import *

l1 = path.line(-5,-2,-2.2,-2)
l2 = path.line(-2.2,-2,2.2,2)
l3 = path.line(2.2,2,5,2)

x_arrow = path.line(-5,0,5,0)
y_arrow = path.line(0,-3,0,3)

c = canvas.canvas()

c.stroke(x_arrow, [deco.earrow.normal])
c.text(4,-0.5, r"$u_2-u_1$")
c.stroke(y_arrow, [deco.earrow.normal])
c.text(-0.7,3, r"$u_0$")

c.stroke(l1);
c.stroke(l2);
c.stroke(l3);

c.text(2.2,2.5,r"positive Saettigung")
c.text(-5,-2.5,r"negative Saettigung")

d1 = path.line(-2.2,-2,0.2,-2)
c.stroke(d1, [style.linestyle.dashed])
c.text(0.4,-2.2, r"$U_{B^-}$")

d2 = path.line(2.2,2,-0.2,2)
c.stroke(d2, [style.linestyle.dashed])
c.text(-0.8,2.2, r"$U_{B^+}$")


c.writetofile("uebertragungscharakteristik_opamp")
