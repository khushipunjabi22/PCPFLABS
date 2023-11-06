calcAP:- write('Enter Length:'), read(L), nl, write('Enter breadth:'), read(B),nl, calcArea(L,B),
calcPerimeter(L,B).
calcArea(L,B):- M is L*B, write('Area of Rectangle is:'), write(M), nl.
calcPerimeter(L,B):- P is 2*L + 2*B , write('Perimeter of Rectangle is:'), write(P).


calcAT :- 
    write('Enter Side1: '), read(S1), nl, 
    write('Enter Side2: '), read(S2), nl, 
    write('Enter Side3: '), read(S3), nl, 
    calcSP(S1, S2, S3, Semi),
    calcAr(Semi, S1, S2, S3).

calcSP(S1, S2, S3, Semi) :- 
    Semi is (S1 + S2 + S3) / 2, 
    write('Semiperimeter = '), write(Semi), nl. 

calcAr(Semi, S1, S2, S3) :- 
    Ar is sqrt(Semi * (Semi - S1) * (Semi - S2) * (Semi - S3)), 
    write('Area = '), write(Ar), nl.

semiperimeter(Side1, Side2, Side3, SemiPerimeter) :-
    SemiPerimeter is (Side1 + Side2 + Side3) / 2.

triangle_area(Side1, Side2, Side3, Area) :-
    semiperimeter(Side1, Side2, Side3, SemiPerimeter),
    Area is sqrt(SemiPerimeter * (SemiPerimeter - Side1) * (SemiPerimeter - Side2) * (SemiPerimeter - Side3)).
