p([1, 2, 3, 4, 5]).

long([], 0).
long([_|Y], R) :-
    long(Y, R1),
    R is R1 + 1.

isMember(X, [H | T]) :-
    X = H.
isMember(X, [H | T]) :-
    isMember(X, T).