%exercise3
head([H|_], R) :-
    R is H.

%exercise4
tail([_|T], T).

%exercise5
last([L|[]], L).
last([_|T], R) :-
    last(T, R2),
    R is R2.

%exercise6
max(A, B, R) :-
    A >= B,
    R is A.
max(A, B, R) :-
    A < B,
    R is B.

%exercise7
fact(0, 1).
fact(N, R) :-
    N > 0,
    N1 is N - 1,
    fact(N1, R2),
    R is R2 * N.

%exercise8
fib(1, 1).
fib(2, 1).
fib(N, R) :-
    N > 2,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, R1),
    fib(N2, R2),
    R is R1 + R2.

%exercise9
length2([], 0).
length2([_|Y], R) :-
    length2(Y, R1),
    R is R1 + 1.

%exercise10
power(_, 0, 1).
power(N, 1, N).
power(N, P, R) :-
    P > 1,
    P2 is P - 1,
    power(N, P2, R2),
    R is R2 * N.

%helper
is_vowel(a).
is_vowel(e).
is_vowel(i).
is_vowel(o).
is_vowel(u).

%exercise11
count_vowels([], 0).
count_vowels([H|T], R) :-
    is_vowel(H),
    count_vowels(T, R2),
    R is R2 + 1.
count_vowels([H|T], R) :-
    not(is_vowel(H)),
    count_vowels(T, R2),
    R is R2.

%exercise12
vowels([], []).
vowels([H|T], [H|R2]) :-
    is_vowel(H),
    vowels(T, R2).
vowels([H|T], R2) :-
    not(is_vowel(H)),
    vowels(T, R2).

%exercise16
sum([], 0).
sum([H|T], R) :-
    sum(T, R2),
    R is R2 + H.

%exercise18
dupli([], []).
dupli([H|T], [H,H|R2]) :-
    dupli(T, R2).

%exercise19
split(L, 0, [], L).
split([H|T], L, [H|S1], S2) :-
    L > 0,
    L1 is L - 1,
    split(T, L1, S1, S2).