' Find the I of a cylinder
'pi=pi
'm=total mass
'h=height of cylinder
'r=total radius
'cr=current radius
'ci=I of current ring
'ti=I of all rings so far
'pr=radius of previous ring
'cm=mass of current ring
pi = 3.14159
pr = 0
CLS
LPRINT "What is the total mass of the cylinder (in KG)??": INPUT m: LPRINT m
LPRINT "What is the radius of the cylinder (in M)??": INPUT r: LPRINT r
LPRINT "What is the height of the cylinder (in M)??": INPUT h: LPRINT h
REM begin loop
dr = r / 1000
tv = pi * r ^ 2 * h
FOR count = 1 TO 1000
cr = pr + dr
cv = 2 * cr * pi * h * dr
cm = (m / tv) * cv
ci = cm * cr ^ 2
ti = ti + ci
pr = cr
NEXT
LPRINT "The approximate moment of inertia is "; ti
ri = (m * r ^ 2) / 2
LPRINT "The acual moment of inertia is "; ri

