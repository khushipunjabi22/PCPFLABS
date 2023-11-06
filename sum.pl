sum_list([], 0).        % Base case: The sum of an empty list is 0.
sum_list([X|Xs], Sum) :-  % Recursive case: Sum of the list = X + Sum of the rest of the list.
    sum_list(Xs, Rest),
    Sum is X + Rest.



sum_elements(List, Sum) :-
    sum_list(List, Sum).
