% Predicate to calculate total amount with simple interest
total_amount(P, R, T, A) :-
    A is P + (P * R * T).

% Predicate to calculate principal amount with simple interest
principal_amount(T, R, I, P) :-
    P is I / (R * T).

% Predicate to calculate time in years with simple interest
time_in_years(P, R, I, T) :-
    T is I / (P * R).

% Predicate to calculate simple interest
simple_interest(P, R, T, I) :-
    I is P * R * T.

% Predicate to calculate compound interest
compound_interest(P, R, T, N, CI) :-
    CI is P * (1 + R / N) ** (N * T) - P.
