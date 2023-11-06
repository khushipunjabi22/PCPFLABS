sum_list([], 0).        % Base case: The sum of an empty list is 0.
sum_list([X|Xs], Sum) :-  % Recursive case: Sum of the list = X + Sum of the rest of the list.
    sum_list(Xs, Rest),
    Sum is X + Rest.


sum_list([], 0).
sum_list([X|Xs], Sum) :-
    X > 0,
    sum_list(Xs, Rest),
    Sum is X + Rest.
sum_list([X|Xs], Sum) :-
    X <= 0,
    sum_list(Xs, Sum).


sum_elements(List, Sum) :-
    sum_list(List, Sum).


sum_odd_numbers([], 0).
sum_odd_numbers([X|Xs], Sum) :-
    X mod 2 =:= 1, 
    sum_odd_numbers(Xs, Rest),
    Sum is X + Rest.
sum_odd_numbers([X|Xs], Sum) :-
    X mod 2 =:= 0,
    sum_odd_numbers(Xs, Sum).
