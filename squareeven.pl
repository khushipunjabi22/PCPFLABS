square([], []).
square([X|Xs], [Y|Ys]):-
	Odd is X mod 2,
	(Odd =:= 1 -> Y is X*X ; Y is X),
	square(Xs,Ys).

% Predicate to calculate the cube of odd numbers in a list
cube_odd_numbers([], []).
cube_odd_numbers([X|Xs], [Y|Ys]) :-
    Odd is X mod 2,
    (Odd =:= 1 -> Y is X*X*X ; Y is X),
    cube_odd_numbers(Xs, Ys).

% Predicate to calculate the square root of odd numbers in a list
square_root_odd_numbers([], []).
square_root_odd_numbers([X|Xs], [Y|Ys]) :-
    Odd is X mod 2,
    (Odd =:= 1 -> Y is sqrt(X) ; Y is X),
    square_root_odd_numbers(Xs, Ys).

To run
 square([1, 2, 3, 4, 5], Result).
