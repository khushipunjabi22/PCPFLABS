% Function to compute the square of a number
square(X, Result) :- Result is X * X.

% Predicate to square negative numbers in a list
square([], []).
square([X|Xs], [Y|Ys]) :-
    (X < 0 -> Y is X*X ; Y is X),
    square(Xs, Ys).


% Function to compute the square of a number
square(X, Result) :- Result is X * X.

% Predicate to square positive numbers in a list
square([], []).
square([X|Xs], [Y|Ys]) :-
    (X > 0 -> Y is X*X ; Y is X),
    square(Xs, Ys).

%?- square([1, -2, 3, -4, 5], Result).
