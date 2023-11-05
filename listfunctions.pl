% Predicate to check if an element is a member of a list
is_member(_, []) :- false.
is_member(X, [X|_]).
is_member(X, [_|T]) :- is_member(X, T).

% Predicate to find the length of a list
list_length([], 0).
list_length([_|T], N) :- list_length(T, N1), N is N1 + 1.

% Predicate to find the first element of a list
first_element([H|_], H).

% Predicate to find the last element of a list
last_element([X], X).
last_element([_|T], X) :- last_element(T, X).

% Predicate to reverse a list
reverse_list([], []).
reverse_list([H|T], Reversed) :- reverse_list(T, RevT), append(RevT, [H], Reversed).

% Predicate to check if a list is a sublist of another list
is_sublist(Sublist, List) :- append(_, Rest, List), append(Sublist, _, Rest).
