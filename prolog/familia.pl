hombre(bob).
hombre(tom).
hombre(pat).
hombre(jim).

mujer(pam).
mujer(ann).
mujer(liz).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

gP(A, N) :- parent(A, X), parent(X, N).
abuelo(A,N) :- gP(A, N), hombre(A).
abuela(A, N) :- gP(A, N), mujer(A).

nieto(N, A) :- gP(A, N), hombre(N).
nieta(N, A) :- gP(A, N), mujer(N).

padre(P, H) :- parent(P, H), hombre(P).
madre(M, H) :- parent(M, H), mujer(M).

sister(X, Y) :- parent(Z, X), parent(Z, Y), mujer(X), X \= Y.
brother(X, Y) :- parent(Z, X), parent(Z, Y), hombre(X), X \= Y.

