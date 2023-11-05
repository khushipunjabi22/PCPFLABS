
total_amount(P, R, T, A):-
A is P + (P * R * T).

% Predicate to calculate principal amount with simple interest
principal_amount(T, R, T, P) :- P is T / (1 + R * T).

% Predicate to calculate time in years with simple interest
time_in_years(P, T, R, T) :- T is (T - P) / (P * R).

% Predicate to calculate simple interest
simple_interest(P, R, T, I) :- I is P * R * T.

% Predicate to calculate compound interest
compound_interest(P, R, T, N, CI) :-
    CI is P * (1 + R / N) ** (N * T) - P.
