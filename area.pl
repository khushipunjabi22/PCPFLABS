calcAP:- write('Enter Length:'), read(L), nl, write('Enter breadth:'), read(B),nl, calcArea(L,B),
calcPerimeter(L,B).
calcArea(L,B):- M is L*B, write('Area of Rectangle is:'), write(M), nl.
calcPerimeter(L,B):- P is 2*L + 2*B , write('Perimeter of Rectangle is:'), write(P).
