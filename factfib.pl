fib(0, 0).
fib(1, 1).
fib(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, Result1),
    fib(N2, Result2),
    Result is Result1 + Result2.



factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.



factorial(0, 1).
factorial(N, Result) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, Result1),
    Result is N * Result1.
nPr(N, R, Result) :-
    N >= R,
    factorial(N, NFactorial),
    factorial(N - R, NMinusRFactorial),
    Result is NFactorial / NMinusRFactorial.



nCr(N, 0, 1). 
nCr(N, N, 1).
nCr(N, R, Result) :-
    R > 0,
    N > R,
    N1 is N - 1,
    R1 is R - 1,
    nCr(N1, R, Result1),
    nCr(N1, R1, Result2),
    Result is Result1 + Result2.

