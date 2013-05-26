from pyx import *

circ1 = path.normpath(path.circle(0.25, 1, 2)) # you don't really need normpath,
circ2 = path.normpath(path.circle(2.25, 1, 2)) # but its better to have it once
                                            # for those operations
circ3 = path.normpath(path.circle(1.25,-0.9,2))

c = canvas.canvas()
c.stroke(circ1)
c.stroke(circ2, [color.rgb.red])
c.stroke(circ3, [color.rgb.blue])

c.text(-3,2,r"$H(X)$")
c.text(-1.5,1.5,r"$H(X|YZ)$")
c.text(2.25,1.5,r"$H(Y|XZ)$")
c.text(4.5,2,r"$H(Y)$", [color.rgb.red])
c.text(-1.75,-2.2,r"$H(Z)$",[color.rgb.blue])
c.text(0.5,-1.75,r"$H(Z|XY)$")

p1 = path.line(0.1, -0.1, -1.75, -0.9)
c.stroke(p1, [deco.barrow.normal])
c.text(-2.7,-1.3,r"$I(X;Z|Y)$")

p2 = path.line(2.3, -0.1, 3.8, -0.9)
c.stroke(p2, [deco.barrow.normal])
c.text(3.7,-1.3,r"$I(Y;Z|X)$")

p3 = path.line(1.2, 1.5, 1.2, 3.4)
c.stroke(p3, [deco.barrow.normal])
c.text(0.6,3.5,r"$I(X;Y|Z)$")

c.text(0.4,0.35,r"$R(X;Y;Z)$")

c.writetofile("groessen_drei_ZV")
